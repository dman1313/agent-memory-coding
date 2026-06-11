#!/usr/bin/env node
// vault_fitness.js — KPI snapshot for the agent-memory vault (Vault Fitness Loop)
// Env: GITHUB_TOKEN. Reads the repo via tarball; computes health metrics; prints JSON + a markdown trend row.
const { execSync } = require('child_process');
const fs = require('fs'), path = require('path');
const T = process.env.GITHUB_TOKEN;
if (!T) { console.error('GITHUB_TOKEN missing'); process.exit(2); }
const API = 'https://api.github.com/repos/dman1313/agent-memory-coding';
const sh = c => execSync(c, { encoding: 'utf8', maxBuffer: 256*1024*1024 });
const W = '/tmp/vault-fitness';
sh(`rm -rf ${W} && mkdir -p ${W}/repo`);
sh(`curl -sL -H "Authorization: Bearer ${T}" "${API}/tarball/main" -o ${W}/s.tgz && tar -xzf ${W}/s.tgz -C ${W}/repo --strip-components=1`);
const R = `${W}/repo`;
const read = p => { try { return fs.readFileSync(path.join(R,p),'utf8'); } catch { return ''; } };
const now = Date.now(), D7 = now-7*864e5, D14 = now-14*864e5;

// activity entries below marker
const act = read('ACTIVITY.md').split('<!-- ENTRIES BELOW THIS LINE -->')[1] || '';
const rows = [...act.matchAll(/^(\d{4}-\d{2}-\d{2}T[\d:]+Z) \| ([^|]+) \| ([^|]+) \| ([^|]*) \|/gm)]
  .map(m => ({ ts: Date.parse(m[1]), agent: m[2].trim(), ev: m[3].trim(), proj: m[4].trim() }));
const last7 = rows.filter(r => r.ts >= D7);
const starts = last7.filter(r => r.ev==='session-start').length;
const ends = last7.filter(r => r.ev==='session-end').length;
const autocloses7 = last7.filter(r => /auto-closed by janitor/.test(act.split('\n').find(l=>l.startsWith(new Date(r.ts).toISOString().slice(0,19)))||'')).length;
const autoCount = (act.match(/auto-closed by janitor/g)||[]).length;

// resume coverage: projects active in 14d vs resume pages
const activeProjects = [...new Set(rows.filter(r => r.ts>=D14 && r.proj && r.proj!=='general').map(r=>r.proj))];
const covered = activeProjects.filter(p => /^## Status now/m.test(read(`Project/${p}.md`)));
// board
const tasks = fs.existsSync(`${R}/Plan/tasks`) ? fs.readdirSync(`${R}/Plan/tasks`).filter(f=>f.endsWith('.md')) : [];
const tstat = {}; let nonKeeperClaims = 0;
for (const f of tasks) {
  const fm = read(`Plan/tasks/${f}`);
  const st = (fm.match(/^status:\s*(\S+)/m)||[])[1]||'?'; tstat[st]=(tstat[st]||0)+1;
  const ow = (fm.match(/^owner:\s*(\S+)/m)||[])[1]||'';
  if (ow && ow!=='hyperagent' && st!=='todo') nonKeeperClaims++;
}
// wiki
const wikiDirs = ['entities','concepts','sources'];
let pages=0, links=0;
for (const d of wikiDirs) { const dir=`${R}/wiki/${d}`; if(!fs.existsSync(dir)) continue;
  for (const f of fs.readdirSync(dir)) { if(!f.endsWith('.md')||f==='config.md') continue; pages++;
    links += (read(`wiki/${d}/${f}`).match(/\[\[/g)||[]).length; } }
// raw hygiene
let rawInbox=0, unstamped=0;
const walk=(d,fn)=>{ for(const e of fs.readdirSync(d,{withFileTypes:true})){ const p=path.join(d,e.name);
  if(e.isDirectory())walk(p,fn); else if(e.name.endsWith('.md'))fn(p); } };
if (fs.existsSync(`${R}/raw`)) walk(`${R}/raw`, p => {
  const inProc = p.includes('raw/processed'); const stamped = /^processed: true$/m.test(fs.readFileSync(p,'utf8').slice(0,800));
  if (inProc && !stamped) unstamped++; if (!inProc && !stamped) rawInbox++;
});
// freshness
const gen = (read('NOW.md').match(/_Generated: ([0-9T:\-]+Z)_/)||[])[1];
const nowAge = gen ? Math.round((now - Date.parse(gen))/60000) : null;

const k = {
  date: new Date().toISOString().slice(0,10),
  wikiPages: pages, linksPerPage: +(links/Math.max(pages,1)).toFixed(1),
  resumeCoverage: `${covered.length}/${activeProjects.length}`,
  sessions7d: `${starts}s/${ends}e`, autoClosesTotal: autoCount,
  board: tstat, nonKeeperClaims,
  rawInbox, archiveUnstamped: unstamped, nowAgeMin: nowAge,
  hybridSearchTrigger: `${pages}/300 pages (ADR 0002)`,
};
console.log(JSON.stringify(k, null, 2));
console.log('\nMD_ROW: | ' + [k.date, pages, k.linksPerPage, k.resumeCoverage, k.sessions7d, autoCount, nonKeeperClaims, rawInbox+'/'+unstamped, (nowAge??'?')+'m'].join(' | ') + ' |');
