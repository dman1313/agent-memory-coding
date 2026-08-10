# NOW — Current State

_Generated: 2026-08-10T12:15:00Z_

## Active Work
_(none)_

## Plan Board
_0 in motion · 7 todo · 0 blocked · 6 done — full board: Plan/board.md · contract: Plan/README.md_
- todo P1 **T-0002** — Verify com.dwayne.vault-sync launchd job is actually running (→ MacH)
- todo P1 **T-0003** — Fix IGCSE Biology concept pipeline (missing concept-progress.json, 353 failed runs) (→ hermes)
- todo P2 **T-0001** — Retire the diverged ~/agent-memory working tree on the Mac (→ MacH)
- todo P2 **T-0008** — Curator pass — 8 orphan sources, 5 dead template links, backlink hygiene (→ claude-code)
- todo P2 **T-0013** — Keeper full-path runs >60s — rewrite stale janitor as JS-native (no tarball, no bash) (→ hyperagent)

## Stale Open Sessions (>48h, no session-end)
_(none)_

## Session Hygiene (7d)
_Unpaired sessions get auto-closed and named here — log your session-end. [L2, vault-fitness]_
- **hermes**: 6 start(s) / 5 end(s)

## Pending Inboxes
- **claude**: Roster check claude: inbox is live. ⚠ pending >7d
- **codex**: Roster check codex: inbox is live. ⚠ pending >7d
- **hermes-mac**: Roster check: please acknowledge that hermes-mac inbox is live. ⚠ pending >7d
- **hermes-vps**: Roster check hermes-vps: inbox is live. ⚠ pending >7d

## Dashboard Messages (48h)
_(none)_

## Blockers
- **hermes · hermes-ecosystem**: Hermes session DB corrupted (malformed disk image) — session_search broken. Needs VACUUM or restore from backup. Fleet silence Day 44. _(2026-07-25T12:07:00Z)_
- **hermes · skillopt-sleep**: SkillOpt-Sleep recurring failure: editable pip install at /tmp/SkillOpt gets cleaned up by system. Fix: move repo to persistent path (e.g. ~/skillopt/SkillOpt/) instead of /tmp/. 5th occurrence since Jul 11. _(2026-07-20T19:17:00Z)_

## Recent Activity (48h)
- 2026-08-10T11:17:57Z | **hermes** · skillopt-sleep · note | Night 31: all 4 benchmarks ran clean, 0 edits accepted/rejected — trading 0.429, research 0.333 plateau, commits/arxiv 1.000 ceiling. Flatline continues from Night 30; needs fresh held-out examples or broader task diversity.
- 2026-08-10T06:03:00Z | **hermes** · hermes-ecosystem · session-end | Brief delivered Mon Aug 10; vault committed 3c7486f.
- 2026-08-10T06:02:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Mon Aug 10 — system YELLOW Day 27 (5 services down unchanged, swap 52% flat). DREAM Night 10: ruflo 1,270 cumulative, gateway 8+ days overdue. Wolf Mon: published to AI-Trader (streak broken!), 15 signals all NEUTRAL, PLTR 0.344 top. Aug 9 brief REAL. Fleet silence Day 60. URSSAF Q2 26 days past.
- 2026-08-09T11:18:00Z | **hermes** · skillopt-sleep · note | Night 30 flatline: all 4 benchmarks ran clean but zero edits accepted — trading/commits/arxiv maxed at 1.000, research plateaued 0.333 since night 27. Optimizer needs fresh held-out examples or broader task diversity.
- 2026-08-09T06:03:00Z | **hermes** · hermes-ecosystem · session-end | Brief delivered Sun Aug 9. System YELLOW Day 26 (5 services down, swap 52%, disk 55%). DREAM Night 9: ruflo MCP +249 failures (1,021 cumulative), sync-memory cron ~50% fail rate, gateway restart 7+ days overdue (flagged 10 consecutive cycles). AI-Trader publish failed (ai4trade.ai 500s). Fleet silence Day 59. URSSAF Q2 25 days past. Vault pushed.
- 2026-08-09T06:02:28Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Sun Aug 9
- 2026-08-09T04:00:00Z | **hermes** · hermes-ecosystem · note | Health monitor: core infra healthy, but ruflo MCP connection failure persists (loops every ~5 min, parked); npm npx cache corrupted (ENOTEMPTY stale .agentdb — rm to fix); Telegram polling blip 08:39 MYT self-resolved in 16s.
- 2026-08-08T12:15:00Z | **hermes** · skillopt-sleep · note | SkillOpt-Sleep night 29: all 4 benchmarks ran, 0 failures. research 0.167→0.333 (3 edits accepted — character-limit overrides auto-adopted), trading 0.429 plateau, commits/arxiv at 1.000 ceiling. Fleet silence Day 58 continues.
- 2026-08-08T12:15:00Z | **hermes** · hermes-ecosystem · note | No user sessions Aug 8 since morning brief — routine cron only. Health monitor 18:00 found ruflo MCP ROOT CAUSE: npm cache corruption (ENOTEMPTY rename fail on .agentdb-vfJcnMSQ) — fix: rm -rf /home/ubuntu/.npm/_npx/9806d7724c607a8d/node_modules/.agentdb-vfJcnMSQ + gateway restart. Gateway still old v0.19.1 process, restart 9+ nights overdue.

## Recent Decisions (7d)
_(none)_

## Recent Milestones (7d)
- 2026-08-05T19:05:00Z | **hermes** · hermes-ecosystem | Hermes updated v0.19.1 → v0.20.0 (639 commits): deps updated, web dashboard rebuilt, config migrated + validated, new grounded-citations skill installed, hermes doctor core healthy, no active security advisories. Pre-update snapshot created; optional full backup skipped (no writable files found). Gateway still on old process — /restart required to load v0.20.0 into Telegram.
- 2026-08-05T11:18:25Z | **hermes** · skillopt-sleep | SkillOpt-Sleep night 26: all 4 benchmarks clean. research 0.167 → 0.333, 2 edits adopted (mandatory section headings + source/citation enforcement) — first plateau break since DeepSeek backend switch. trading/commits/arxiv at 1.000 ceiling, rejects correct.

## Last Seen (fleet)
- **hermes**: 2026-08-10T11:17:57Z — note: Night 31: all 4 benchmarks ran clean, 0 edits accepted/rejected — trading 0.429, research 0.333 plateau, commits/arxiv 1.000 ceiling. Flatline continues from Night 30; needs fresh held-out examples or broader task diversity.
