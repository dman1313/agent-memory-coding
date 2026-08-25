# NOW — Current State

_Generated: 2026-08-25T12:09:18Z_

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
- **hermes · skillopt-sleep**: Nightly Aug 25 FAILED (8th consecutive, Aug 18-25) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); no skillopt_sleep dir or pip package found anywhere under /home/ubuntu/skillopt. Fix (re-clone to persistent path, pip install -e) still NOT applied. Last successful run Aug 10. Escalation-fatigue flag stands — same issue flagged 8 nights, 0 action. _(2026-08-25T11:17:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 24 FAILED (7th consecutive, Aug 18-24) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install maps to /tmp/SkillOpt (wiped by reboot); source gone, venv metadata-only. Fix (re-clone to persistent path, pip install -e) still NOT applied. Last successful run Aug 10. Escalation-fatigue flag stands (same issue flagged 7 nights, 0 action). _(2026-08-24T11:17:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 23 FAILED (6th consecutive, Aug 18-23) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install points to deleted /tmp/SkillOpt. Fix (re-clone to persistent path) still NOT applied. Last successful run Aug 10. _(2026-08-23T11:17:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 22 FAILED (4th consecutive) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause re-confirmed: editable install points to /tmp/SkillOpt (deleted), venv has skillopt-0.2.0 dist-info + pth only. Fix (re-clone to persistent path, pip install -e, update run_cycle.py sys.path) still NOT applied. Last successful run Aug 10. _(2026-08-22T12:07:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 21 FAILED (3rd consecutive) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep again. Fix identified Aug 20 (re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path) still NOT applied. Last successful run Aug 10. _(2026-08-21T12:07:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 20 FAILED again (2nd consecutive, 6th total) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. ROOT CAUSE confirmed: /tmp/SkillOpt source wiped by reboot (tmpfs), package not on PyPI, venv metadata-only. Fix: re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path. Last successful run Aug 10. _(2026-08-20T12:08:00Z)_
- **hermes · skillopt-sleep**: Nightly run Aug 19 FAILED — all 4 benchmarks ModuleNotFoundError: skillopt_sleep (5th recurrence: Jul 11-12, 17-20, Aug 18-19). Last successful run Aug 10. Needs reinstall + dependency check in nightly.sh. _(2026-08-19T12:04:00Z)_
- **hermes · hermes-ecosystem**: DREAM audit Aug 18: web_search completely broken — Firecrawl not configured (no FIRECRAWL_API_KEY/URL, 82 cumulative errors). All web-dependent crons dead (movie-recommender, wolf news scanner, awesome-lists). Fix: set key or wire GLMS MCP search fallback. _(2026-08-18T12:48:00Z)_
- **hermes · hermes-ecosystem**: Hermes session DB corrupted (malformed disk image) — session_search broken. Needs VACUUM or restore from backup. Fleet silence Day 44. _(2026-07-25T12:07:00Z)_
- **hermes · skillopt-sleep**: SkillOpt-Sleep recurring failure: editable pip install at /tmp/SkillOpt gets cleaned up by system. Fix: move repo to persistent path (e.g. ~/skillopt/SkillOpt/) instead of /tmp/. 5th occurrence since Jul 11. _(2026-07-20T19:17:00Z)_

## Recent Activity (48h)
- 2026-08-25T12:07:00Z | **hermes** · agent-memory · note | No user sessions Aug 25 — 8th consecutive zero-user day (Aug 18-25, longest streak in audit history); Zen evening reflection night 8 without acknowledgment. Routine crons only: sync-memory 10:03Z clean, SkillOpt 11:17Z failed, evening reflection 12:01Z. System per Aug 25 brief: GREEN Day 42, disk 55%, RAM 5.0/15Gi, swap 0B, 5 services down unchanged, Wolf 15 signals (NVDA 0.477 WATCH top, rest NEUTRAL), URSSAF Q2 ~40d overdue, X $5 top-up needed.
- 2026-08-25T11:17:00Z | **hermes** · skillopt-sleep · blocker | Nightly Aug 25 FAILED (8th consecutive, Aug 18-25) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); no skillopt_sleep dir or pip package found anywhere under /home/ubuntu/skillopt. Fix (re-clone to persistent path, pip install -e) still NOT applied. Last successful run Aug 10. Escalation-fatigue flag stands — same issue flagged 8 nights, 0 action.
- 2026-08-25T06:05:00Z | **hermes** · hermes-ecosystem · session-end | Brief delivered Tue Aug 25. System GREEN Day 42. Disk 55%, RAM 5.0/15Gi, swap 0B. 5 services down Day 42 unchanged (HumanGoodAI, AgentReady, WeKnora, FreeLLMAPI, HermesOffice). DREAM: escalation fatigue now the finding itself (same 3 issues 6-8 nights, 0 action). Wolf ran 15 signals (NVDA 0.477 WATCH top, rest NEUTRAL) but cron response hollow — no signal summary, AI-Trader output dir empty (publish unconfirmed). Twitter 0 mentions still. No user sessions 8 days (longest streak in audit history). URSSAF Q2 ~40d overdue. X $5 top-up needed. Vault committed.
- 2026-08-25T06:02:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Tue Aug 25. System GREEN Day 42. Checking DREAM (escalation fatigue + 8-day no-user streak), Wolf (NVDA 0.477 WATCH, hollow cron response), prev brief (real, not ghost), services (5 down Day 42), disk/swap. 154 apt upgrades.
- 2026-08-24T11:17:00Z | **hermes** · skillopt-sleep · blocker | Nightly Aug 24 FAILED (7th consecutive, Aug 18-24) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install maps to /tmp/SkillOpt (wiped by reboot); source gone, venv metadata-only. Fix (re-clone to persistent path, pip install -e) still NOT applied. Last successful run Aug 10. Escalation-fatigue flag stands (same issue flagged 7 nights, 0 action).
- 2026-08-24T06:05:00Z | **hermes** · hermes-ecosystem · session-end | Brief delivered Mon Aug 24. System GREEN Day 41. Disk 55%, RAM 5.0/15Gi, swap 0B. 5 services down Day 41 unchanged (HumanGoodAI, AgentReady, WeKnora, FreeLLMAPI, HermesOffice). DREAM escalation-fatigue flag (ruflo 2,700+, SkillOpt 6th fail, freellmapi crash-loop — same 3 issues 6 nights). Wolf: NVDA 0.477 WATCH, MRNA 0.387 NEUTRAL, Twitter dead. No user sessions 6 days (Aug 18-23). URSSAF Q2 ~39d overdue. X $5 top-up needed. Vault committed.
- 2026-08-24T06:02:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Mon Aug 24. System GREEN Day 41. Checking DREAM (escalation fatigue — 3 issues flagged 6 nights, 0 action), Wolf (Mon — NVDA 0.477 WATCH), prev brief (real, not ghost), services (5 down Day 41), disk/swap. 154 apt upgrades.

## Recent Decisions (7d)
_(none)_

## Recent Milestones (7d)
- 2026-08-18T12:47:00Z | **hermes** · hermes-ecosystem | Gateway restarted after 8+ days (v0.20.0 process loaded, PID 1536). HAL brief/DREAM/SkillOpt/Wolf/GDrive/maintenance-loop all missed Aug 11-17 windows; swap recovered 52%→0% after fresh reboot, disk 54%, memory healthy. Maintenance Phase13-ruflo-canary still awaiting approval since Aug 10.

## Last Seen (fleet)
- **hermes**: 2026-08-25T12:07:00Z — note: No user sessions Aug 25 — 8th consecutive zero-user day (Aug 18-25, longest streak in audit history); Zen evening reflection night 8 without acknowledgment. Routine crons only: sync-memory 10:03Z clean, SkillOpt 11:17Z failed, evening reflection 12:01Z. System per Aug 25 brief: GREEN Day 42, disk 55%, RAM 5.0/15Gi, swap 0B, 5 services down unchanged, Wolf 15 signals (NVDA 0.477 WATCH top, rest NEUTRAL), URSSAF Q2 ~40d overdue, X $5 top-up needed.
