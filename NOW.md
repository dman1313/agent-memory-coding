# NOW — Current State

_Generated: 2026-08-21T12:08:52Z_

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
- **hermes · skillopt-sleep**: Nightly Aug 21 FAILED (3rd consecutive) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep again. Fix identified Aug 20 (re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path) still NOT applied. Last successful run Aug 10. _(2026-08-21T12:07:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 20 FAILED again (2nd consecutive, 6th total) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. ROOT CAUSE confirmed: /tmp/SkillOpt source wiped by reboot (tmpfs), package not on PyPI, venv metadata-only. Fix: re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path. Last successful run Aug 10. _(2026-08-20T12:08:00Z)_
- **hermes · skillopt-sleep**: Nightly run Aug 19 FAILED — all 4 benchmarks ModuleNotFoundError: skillopt_sleep (5th recurrence: Jul 11-12, 17-20, Aug 18-19). Last successful run Aug 10. Needs reinstall + dependency check in nightly.sh. _(2026-08-19T12:04:00Z)_
- **hermes · hermes-ecosystem**: DREAM audit Aug 18: web_search completely broken — Firecrawl not configured (no FIRECRAWL_API_KEY/URL, 82 cumulative errors). All web-dependent crons dead (movie-recommender, wolf news scanner, awesome-lists). Fix: set key or wire GLMS MCP search fallback. _(2026-08-18T12:48:00Z)_
- **hermes · hermes-ecosystem**: Hermes session DB corrupted (malformed disk image) — session_search broken. Needs VACUUM or restore from backup. Fleet silence Day 44. _(2026-07-25T12:07:00Z)_
- **hermes · skillopt-sleep**: SkillOpt-Sleep recurring failure: editable pip install at /tmp/SkillOpt gets cleaned up by system. Fix: move repo to persistent path (e.g. ~/skillopt/SkillOpt/) instead of /tmp/. 5th occurrence since Jul 11. _(2026-07-20T19:17:00Z)_

## Recent Activity (48h)
- 2026-08-21T12:07:00Z | **hermes** · skillopt-sleep · blocker | Nightly Aug 21 FAILED (3rd consecutive) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep again. Fix identified Aug 20 (re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path) still NOT applied. Last successful run Aug 10.
- 2026-08-21T12:06:00Z | **hermes** · agent-memory · note | No user sessions past 24h — routine crons only (sync-memory 10:05Z clean, SkillOpt 11:17Z failed, evening reflection). System per Aug 21 brief: GREEN Day 38, disk 54%, 5 services down unchanged, URSSAF Q2 ~37d overdue.
- 2026-08-21T06:05:00Z | **hermes** · hermes-ecosystem · session-end | Daily brief Fri Aug 21. System GREEN Day 38. Disk 54%, RAM 4.8/15Gi, swap 0B. 5 services down unchanged (HumanGoodAI, AgentReady, WeKnora, FreeLLMAPI, HermesOffice). ruflo MCP now 2,159 cumulative errors (251 overnight, 80% log noise). Wolf: MRNA 0.49 WATCH (2nd consecutive day, Moderna/Merck cancer vaccine). 3rd consecutive zero-user day (Aug 18-20). URSSAF Q2 ~37d overdue. Vault committed.
- 2026-08-21T06:03:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Fri Aug 21. System GREEN Day 38. Checking DREAM (ruflo 2,159), Wolf (MRNA 0.49 WATCH), prev brief (real, not ghost), services, disk/swap. 150 apt upgrades.
- 2026-08-20T12:08:00Z | **hermes** · skillopt-sleep · blocker | Nightly Aug 20 FAILED again (2nd consecutive, 6th total) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. ROOT CAUSE confirmed: /tmp/SkillOpt source wiped by reboot (tmpfs), package not on PyPI, venv metadata-only. Fix: re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path. Last successful run Aug 10.
- 2026-08-20T06:07:00Z | **hermes** · hermes-ecosystem · session-end | Brief delivered Thu Aug 20. System GREEN Day 37. 5 services down unchanged (HumanGoodAI, AgentReady, WeKnora, FreeLLMAPI, HermesOffice). Disk 54%, RAM 5.0/15Gi, swap 0B. DREAM ran twice (03:00+08:00), found 10 null-byte guard errors (~14min waste). ruflo now 1,908 errs (72% noise) — removal still pending Dwayne approval. Wolf published TSLA/MRNA/RDDT; top MRNA 0.483 WATCH. URSSAF Q2 ~36d overdue. Vault committed.
- 2026-08-20T06:02:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Thu Aug 20. System GREEN Day 37. Checking DREAM (null-byte guard + ruflo 1,908), Wolf (MRNA WATCH), prev brief (real), services, disk/swap. 147 apt upgrades.

## Recent Decisions (7d)
_(none)_

## Recent Milestones (7d)
- 2026-08-18T12:47:00Z | **hermes** · hermes-ecosystem | Gateway restarted after 8+ days (v0.20.0 process loaded, PID 1536). HAL brief/DREAM/SkillOpt/Wolf/GDrive/maintenance-loop all missed Aug 11-17 windows; swap recovered 52%→0% after fresh reboot, disk 54%, memory healthy. Maintenance Phase13-ruflo-canary still awaiting approval since Aug 10.

## Last Seen (fleet)
- **hermes**: 2026-08-21T12:07:00Z — blocker: Nightly Aug 21 FAILED (3rd consecutive) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep again. Fix identified Aug 20 (re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path) still NOT applied. Last successful run Aug 10.
