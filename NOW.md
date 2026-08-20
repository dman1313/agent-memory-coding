# NOW — Current State

_Generated: 2026-08-20T12:09:57Z_

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
_(all fleet agents pairing session-start/end cleanly)_

## Pending Inboxes
- **claude**: Roster check claude: inbox is live. ⚠ pending >7d
- **codex**: Roster check codex: inbox is live. ⚠ pending >7d
- **hermes-mac**: Roster check: please acknowledge that hermes-mac inbox is live. ⚠ pending >7d
- **hermes-vps**: Roster check hermes-vps: inbox is live. ⚠ pending >7d

## Dashboard Messages (48h)
_(none)_

## Blockers
- **hermes · skillopt-sleep**: Nightly Aug 20 FAILED again (2nd consecutive, 6th total) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. ROOT CAUSE confirmed: /tmp/SkillOpt source wiped by reboot (tmpfs), package not on PyPI, venv metadata-only. Fix: re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path. Last successful run Aug 10. _(2026-08-20T12:08:00Z)_
- **hermes · skillopt-sleep**: Nightly run Aug 19 FAILED — all 4 benchmarks ModuleNotFoundError: skillopt_sleep (5th recurrence: Jul 11-12, 17-20, Aug 18-19). Last successful run Aug 10. Needs reinstall + dependency check in nightly.sh. _(2026-08-19T12:04:00Z)_
- **hermes · hermes-ecosystem**: DREAM audit Aug 18: web_search completely broken — Firecrawl not configured (no FIRECRAWL_API_KEY/URL, 82 cumulative errors). All web-dependent crons dead (movie-recommender, wolf news scanner, awesome-lists). Fix: set key or wire GLMS MCP search fallback. _(2026-08-18T12:48:00Z)_
- **hermes · hermes-ecosystem**: Hermes session DB corrupted (malformed disk image) — session_search broken. Needs VACUUM or restore from backup. Fleet silence Day 44. _(2026-07-25T12:07:00Z)_
- **hermes · skillopt-sleep**: SkillOpt-Sleep recurring failure: editable pip install at /tmp/SkillOpt gets cleaned up by system. Fix: move repo to persistent path (e.g. ~/skillopt/SkillOpt/) instead of /tmp/. 5th occurrence since Jul 11. _(2026-07-20T19:17:00Z)_

## Recent Activity (48h)
- 2026-08-20T12:08:00Z | **hermes** · skillopt-sleep · blocker | Nightly Aug 20 FAILED again (2nd consecutive, 6th total) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. ROOT CAUSE confirmed: /tmp/SkillOpt source wiped by reboot (tmpfs), package not on PyPI, venv metadata-only. Fix: re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path. Last successful run Aug 10.
- 2026-08-20T06:07:00Z | **hermes** · hermes-ecosystem · session-end | Brief delivered Thu Aug 20. System GREEN Day 37. 5 services down unchanged (HumanGoodAI, AgentReady, WeKnora, FreeLLMAPI, HermesOffice). Disk 54%, RAM 5.0/15Gi, swap 0B. DREAM ran twice (03:00+08:00), found 10 null-byte guard errors (~14min waste). ruflo now 1,908 errs (72% noise) — removal still pending Dwayne approval. Wolf published TSLA/MRNA/RDDT; top MRNA 0.483 WATCH. URSSAF Q2 ~36d overdue. Vault committed.
- 2026-08-20T06:02:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Thu Aug 20. System GREEN Day 37. Checking DREAM (null-byte guard + ruflo 1,908), Wolf (MRNA WATCH), prev brief (real), services, disk/swap. 147 apt upgrades.
- 2026-08-19T12:04:00Z | **hermes** · skillopt-sleep · blocker | Nightly run Aug 19 FAILED — all 4 benchmarks ModuleNotFoundError: skillopt_sleep (5th recurrence: Jul 11-12, 17-20, Aug 18-19). Last successful run Aug 10. Needs reinstall + dependency check in nightly.sh.
- 2026-08-19T12:03:00Z | **hermes** · agent-memory · note | No user sessions since 06:05Z brief — routine crons only (sync-memory 10:09Z clean, SkillOpt 11:19Z failed, evening reflection 12:03Z). System per Aug 19 brief: post-reboot stable, disk 54%, 5 services down Day 36, ruflo MCP dead, URSSAF Q2 ~35d overdue.
- 2026-08-19T06:05:00Z | **hermes** · hermes-ecosystem · session-end | Daily brief Wed Aug 19. Post-reboot stability held overnight: disk 54%, RAM 4.3/15Gi, swap 0B. 5 services down Day 36 (HumanGoodAI, AgentReady, WeKnora, FreeLLMAPI, HermesOffice). ruflo MCP dead (147 errs today, 1657 cum) — recommend removing from config.yaml. Wolf: 13 signals all NEUTRAL (top U 0.3). No user sessions Aug 12-18 (VPS outage). URSSAF Q2 ~35d overdue. Xiaomi 451 block resolved (0 recent). Vault committed.
- 2026-08-19T06:04:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Wed Aug 19. System GREEN post-reboot. Checking DREAM (ruflo MCP + 3 broken crons), Wolf (13 NEUTRAL), prev brief (not ghost), services, disk/swap. 147 apt upgrades pending.
- 2026-08-18T12:51:00Z | **hermes** · hermes-ecosystem · session-end | Brief delivered Tue Aug 18 (post-outage recovery). Gateway v0.20.0 loaded via reboot, swap cleared, Wolf→AI-Trader published 3 (all NEUTRAL). New blocker: web_search dead (Firecrawl unconfigured, 82 errors). 5 services down Day 35 unchanged. URSSAF Q2 34d overdue. Vault committed.
- 2026-08-18T12:50:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Tue Aug 18 — system recovering from 7-day VPS outage (offline Aug 11-18, rebooted 12:45 UTC). Post-reboot: disk 54%, RAM 4.2/15Gi (resized up from 7.6G), swap 0B, gateway on v0.20.0. 5 services down Day 35. IGCSE provider=None + default provider None confirmed. URSSAF Q2 34d past.
- 2026-08-18T12:49:00Z | **hermes** · agent-memory · note | 8-day vault gap (Aug 11-18): agent-memory-daily cron stopped running Aug 10; gateway restarted today 12:45 UTC (PID 1536) and cron jobs resumed. No user sessions Aug 12-18 — fleet quiet; only cron activity (DREAM, Wolf, reminders, awesome-lists).
- 2026-08-18T12:48:00Z | **hermes** · hermes-ecosystem · blocker | DREAM audit Aug 18: web_search completely broken — Firecrawl not configured (no FIRECRAWL_API_KEY/URL, 82 cumulative errors). All web-dependent crons dead (movie-recommender, wolf news scanner, awesome-lists). Fix: set key or wire GLMS MCP search fallback.
- 2026-08-18T12:47:00Z | **hermes** · hermes-ecosystem · milestone | Gateway restarted after 8+ days (v0.20.0 process loaded, PID 1536). HAL brief/DREAM/SkillOpt/Wolf/GDrive/maintenance-loop all missed Aug 11-17 windows; swap recovered 52%→0% after fresh reboot, disk 54%, memory healthy. Maintenance Phase13-ruflo-canary still awaiting approval since Aug 10.

## Recent Decisions (7d)
_(none)_

## Recent Milestones (7d)
- 2026-08-18T12:47:00Z | **hermes** · hermes-ecosystem | Gateway restarted after 8+ days (v0.20.0 process loaded, PID 1536). HAL brief/DREAM/SkillOpt/Wolf/GDrive/maintenance-loop all missed Aug 11-17 windows; swap recovered 52%→0% after fresh reboot, disk 54%, memory healthy. Maintenance Phase13-ruflo-canary still awaiting approval since Aug 10.

## Last Seen (fleet)
- **hermes**: 2026-08-20T12:08:00Z — blocker: Nightly Aug 20 FAILED again (2nd consecutive, 6th total) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. ROOT CAUSE confirmed: /tmp/SkillOpt source wiped by reboot (tmpfs), package not on PyPI, venv metadata-only. Fix: re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path. Last successful run Aug 10.
