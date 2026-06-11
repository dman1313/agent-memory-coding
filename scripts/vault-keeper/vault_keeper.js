#!/usr/bin/env node
// vault_keeper.js — health check + janitor runner for dman1313/agent-memory-coding
// Usage: node vault_keeper.js check   (report-only; runs janitor on a local replica, commits nothing)
//        node vault_keeper.js regen   (additionally commits janitor output when dashboards are stale
//                                      or the janitor made substantive changes: auto-closures / channel archive)
// Env: GITHUB_TOKEN (required). All HTTP via curl (proxy-aware). Fast-forward commits only.
const { execSync } = require('child_process');
const fs = require('fs');
const REPO = 'dman1313/agent-memory-coding';
const API = `https://api.github.com/repos/${REPO}`;
const T = process.env.GITHUB_TOKEN;
if (!T) { console.error(JSON.stringify({ error: 'GITHUB_TOKEN missing — run via RunWithCredentials' })); process.exit(2); }
const H = `-H "Authorization: Bearer ${T}" -H "Accept: application/vnd.github+json"`;
const sh = (c) => execSync(c, { encoding: 'utf8', maxBuffer: 256 * 1024 * 1024 });
const jget = (u) => JSON.parse(sh(`curl -s ${H} "${u}"`));
const WORK = '/tmp/vault-keeper';

function fetchReplica() {
  sh(`rm -rf ${WORK} && mkdir -p ${WORK}/repo`);
  sh(`curl -sL ${H} "${API}/tarball/main" -o ${WORK}/snap.tar.gz`);
  sh(`tar -xzf ${WORK}/snap.tar.gz -C ${WORK}/repo --strip-components=1`);
  return jget(`${API}/git/ref/heads/main`).object.sha;
}
function nowAge(dir) {
  try {
    const m = fs.readFileSync(`${dir}/NOW.md`, 'utf8').match(/_Generated: ([0-9T:\-]+Z)_/);
    return m ? Math.round((Date.now() - Date.parse(m[1])) / 60000) : null;
  } catch { return null; }
}
function runJanitor() {
  // build-context.sh auto-detects /home/ubuntu/agent-memory; fall back to a patched copy if not writable
  let replica = '/home/ubuntu/agent-memory';
  try {
    sh(`rm -rf ${replica} && mkdir -p /home/ubuntu && cp -r ${WORK}/repo ${replica}`);
  } catch {
    replica = `${WORK}/replica`;
    sh(`rm -rf ${replica} && cp -r ${WORK}/repo ${replica}`);
    let s = fs.readFileSync(`${replica}/build-context.sh`, 'utf8')
      .replace('if [ -d "/home/ubuntu/agent-memory" ]; then\n    VAULT="/home/ubuntu/agent-memory"',
               `if [ -d "${replica}" ]; then\n    VAULT="${replica}"`);
    fs.writeFileSync(`${replica}/build-context.sh`, s);
  }
  sh(`cd "${replica}" && bash build-context.sh 2>/dev/null || true`);
  if (!fs.existsSync(`${replica}/NOW.md`)) throw new Error('janitor run produced no NOW.md');
  return replica;
}
function changedFiles(replica) {
  const watch = ['ACTIVITY.md', 'AGENT-CHANNEL.md', 'NOW.md', 'CONTEXT.md', 'Plan/board.md'];
  const out = [];
  for (const f of watch) {
    const a = `${WORK}/repo/${f}`, b = `${replica}/${f}`;
    if (!fs.existsSync(b)) continue;
    if (!fs.existsSync(a) || fs.readFileSync(a, 'utf8') !== fs.readFileSync(b, 'utf8')) out.push(f);
  }
  const arch = `${replica}/channel-archive`;
  if (fs.existsSync(arch)) for (const f of fs.readdirSync(arch)) {
    const rel = `channel-archive/${f}`, orig = `${WORK}/repo/${rel}`;
    if (!fs.existsSync(orig) || fs.readFileSync(orig, 'utf8') !== fs.readFileSync(`${arch}/${f}`, 'utf8')) out.push(rel);
  }
  return out;
}
function section(text, header) {
  const i = text.indexOf(`## ${header}`);
  if (i < 0) return '';
  const rest = text.slice(i);
  const j = rest.indexOf('\n## ', 4);
  return (j > 0 ? rest.slice(0, j) : rest).trim();
}
function commit(replica, files, head, msg) {
  const tree = files.map(p => ({ path: p, mode: '100644', type: 'blob', content: fs.readFileSync(`${replica}/${p}`, 'utf8') }));
  const base = jget(`${API}/git/commits/${head}`).tree.sha;
  fs.writeFileSync(`${WORK}/tree.json`, JSON.stringify({ base_tree: base, tree }));
  const nt = JSON.parse(sh(`curl -s -X POST ${H} "${API}/git/trees" --data @${WORK}/tree.json`));
  if (!nt.sha) throw new Error('tree: ' + JSON.stringify(nt).slice(0, 200));
  fs.writeFileSync(`${WORK}/c.json`, JSON.stringify({ message: msg, tree: nt.sha, parents: [head] }));
  const c = JSON.parse(sh(`curl -s -X POST ${H} "${API}/git/commits" --data @${WORK}/c.json`));
  if (!c.sha) throw new Error('commit: ' + JSON.stringify(c).slice(0, 200));
  fs.writeFileSync(`${WORK}/r.json`, JSON.stringify({ sha: c.sha, force: false }));
  const r = JSON.parse(sh(`curl -s -X PATCH ${H} "${API}/git/refs/heads/main" --data @${WORK}/r.json`));
  if (!r.object) throw new Error('ref (non-fast-forward? re-run): ' + JSON.stringify(r).slice(0, 200));
  return c.sha;
}

function claimNudges(replica) {
  // L4: P1 todo + handoff_to set + >48h old -> one inbox reminder per 72h, max 2, then escalate flag
  const inboxMap = { MacH: 'hermes-mac.md', hermes: 'hermes-vps.md', 'claude-code': 'claude.md', cursor: 'cursor.md', codex: 'codex.md', goose: 'goose.md', antigravity: 'antigravity.md' };
  const sent = []; const dir = replica + '/Plan/tasks';
  if (!fs.existsSync(dir)) return sent;
  const now = Date.now();
  for (const fl of fs.readdirSync(dir)) {
    if (!fl.endsWith('.md')) continue;
    const p = dir + '/' + fl; let t = fs.readFileSync(p, 'utf8');
    const g = (k) => ((t.match(new RegExp('^' + k + ':\\s*(.+)$', 'm')) || [])[1] || '').trim();
    if (g('status') !== 'todo' || g('priority') !== 'P1') continue;
    const who = g('handoff_to'); if (!who || !inboxMap[who]) continue;
    if (now - Date.parse(g('created') || 0) < 48 * 3600e3) continue;
    const n = (t.match(/claim-nudge sent/g) || []).length;
    if (n >= 2) { sent.push({ task: g('id'), who, escalate: true }); continue; }
    const prev = t.match(/claim-nudge sent (\d{4}-\d{2}-\d{2})/g);
    if (prev && now - Date.parse(prev[prev.length - 1].slice(-10)) < 72 * 3600e3) continue;
    const day = new Date().toISOString().slice(0, 10);
    fs.appendFileSync(replica + '/Agent Inbox/' + inboxMap[who],
      '\n## ' + new Date().toISOString().slice(0, 19) + 'Z Claim Nudge\n\n**Status:** PENDING\n**Agent:** ' + who + '\n**Adapter:** vault-board\n\nReminder: **' + g('id') + '** (' + g('title') + ') is P1 and unclaimed 48h+. Claim per Plan/README.md or hand back with a Log note. (Nudge ' + (n + 1) + '/2 — then escalates to Dwayne.)\n\n---\n');
    t = t.replace(/## Log\n/, '## Log\n- ' + day + ' hyperagent — claim-nudge sent ' + day + ' to ' + who + ' (#' + (n + 1) + '/2, P1 unclaimed >48h).\n');
    fs.writeFileSync(p, t);
    sent.push({ task: g('id'), who, n: n + 1, files: ['Plan/tasks/' + fl, 'Agent Inbox/' + inboxMap[who]] });
  }
  return sent;
}

const mode = process.argv[2] || 'check';
const head = fetchReplica();
const ageBefore = nowAge(`${WORK}/repo`);
const replica = runJanitor();
const nudges = (mode === 'regen') ? claimNudges(replica) : [];
const changed = changedFiles(replica);
for (const nd of nudges) for (const nf of (nd.files || [])) if (!changed.includes(nf)) changed.push(nf);
const now = fs.readFileSync(`${replica}/NOW.md`, 'utf8');
const substantive = changed.filter(f => f === 'ACTIVITY.md' || f === 'AGENT-CHANNEL.md' || f.startsWith('channel-archive/'));
const stale = ageBefore === null || ageBefore > 60;
const report = {
  head: head.slice(0, 8),
  nowAgeMinutes: ageBefore,
  dashboardsStale: stale,
  janitorSubstantiveChanges: substantive,
  planBoard: section(now, 'Plan Board'),
  staleSessions: section(now, 'Stale Open Sessions (>48h, no session-end)'),
  pendingInboxes: section(now, 'Pending Inboxes'),
  blockers: section(now, 'Blockers'),
  committed: null,
};
report.claimNudges = nudges;
if (mode === 'regen' && changed.length && (stale || substantive.length || nudges.some(x => x.files))) {
  report.committed = commit(replica, changed, head,
    `janitor: scheduled vault-keeper run — dashboards regenerated${substantive.includes('ACTIVITY.md') ? ' + session auto-closures' : ''}${substantive.some(f => f.startsWith('channel-archive/')) ? ' + channel archive' : ''}${nudges.some(x=>x.files) ? ' + claim nudges' : ''}`
  ).slice(0, 8);
}
console.log(JSON.stringify(report, null, 2));
