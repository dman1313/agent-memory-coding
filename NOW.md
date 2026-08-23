# NOW — Current State

_Generated: 2026-08-23T12:08:59Z_

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
- **hermes · skillopt-sleep**: Nightly Aug 23 FAILED (6th consecutive, Aug 18-23) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install points to deleted /tmp/SkillOpt. Fix (re-clone to persistent path) still NOT applied. Last successful run Aug 10. _(2026-08-23T11:17:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 22 FAILED (4th consecutive) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause re-confirmed: editable install points to /tmp/SkillOpt (deleted), venv has skillopt-0.2.0 dist-info + pth only. Fix (re-clone to persistent path, pip install -e, update run_cycle.py sys.path) still NOT applied. Last successful run Aug 10. _(2026-08-22T12:07:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 21 FAILED (3rd consecutive) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep again. Fix identified Aug 20 (re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path) still NOT applied. Last successful run Aug 10. _(2026-08-21T12:07:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 20 FAILED again (2nd consecutive, 6th total) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. ROOT CAUSE confirmed: /tmp/SkillOpt source wiped by reboot (tmpfs), package not on PyPI, venv metadata-only. Fix: re-clone to persistent /home/ubuntu/skillopt/src, pip install -e, update run_cycle.py sys.path. Last successful run Aug 10. _(2026-08-20T12:08:00Z)_
- **hermes · skillopt-sleep**: Nightly run Aug 19 FAILED — all 4 benchmarks ModuleNotFoundError: skillopt_sleep (5th recurrence: Jul 11-12, 17-20, Aug 18-19). Last successful run Aug 10. Needs reinstall + dependency check in nightly.sh. _(2026-08-19T12:04:00Z)_
- **hermes · hermes-ecosystem**: DREAM audit Aug 18: web_search completely broken — Firecrawl not configured (no FIRECRAWL_API_KEY/URL, 82 cumulative errors). All web-dependent crons dead (movie-recommender, wolf news scanner, awesome-lists). Fix: set key or wire GLMS MCP search fallback. _(2026-08-18T12:48:00Z)_
- **hermes · hermes-ecosystem**: Hermes session DB corrupted (malformed disk image) — session_search broken. Needs VACUUM or restore from backup. Fleet silence Day 44. _(2026-07-25T12:07:00Z)_
- **hermes · skillopt-sleep**: SkillOpt-Sleep recurring failure: editable pip install at /tmp/SkillOpt gets cleaned up by system. Fix: move repo to persistent path (e.g. ~/skillopt/SkillOpt/) instead of /tmp/. 5th occurrence since Jul 11. _(2026-07-20T19:17:00Z)_

## Recent Activity (48h)
- 2026-08-23T12:06:00Z | **hermes** · agent-memory · note | No user sessions Aug 23 — 6th consecutive zero-user day (Aug 18-23). Routine crons only (sync-memory 18:03 MYT clean, SkillOpt 19:17 MYT failed, evening reflection 20:02 MYT). System per Aug 23 brief: GREEN Day 40, disk 54%, ruflo MCP 2,700+ errors, backup null-byte guard bug (low priority), URSSAF Q2 ~39d overdue.
- 2026-08-23T11:17:00Z | **hermes** · skillopt-sleep · blocker | Nightly Aug 23 FAILED (6th consecutive, Aug 18-23) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install points to deleted /tmp/SkillOpt. Fix (re-clone to persistent path) still NOT applied. Last successful run Aug 10.
- 2026-08-23T06:05:00Z | **hermes** · hermes-ecosystem · session-end | Brief delivered Sun Aug 23. System GREEN Day 40. Disk 54%, RAM 4.5/15Gi, swap 0B. 5 services down Day 40 unchanged (HumanGoodAI, AgentReady, WeKnora, FreeLLMAPI, HermesOffice). ruflo MCP 2,700+ cumulative errors (5th night flagged). SkillOpt-Sleep 4th consecutive nightly fail (fix still not applied). New DREAM finding: backup null-byte guard bug (~255s/run wasted, low priority). No user sessions 5 days (Aug 18-22). Wolf Sun no run. URSSAF Q2 ~39d overdue. X top-up still needed. Vault committed.
- 2026-08-23T06:01:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Sun Aug 23. System GREEN Day 40. Checking DREAM (ruflo 2,700+, SkillOpt 4th fail, backup null-byte new), Wolf (Sun — no run), prev brief (real, not ghost), services, disk/swap. 154 apt upgrades.
- 2026-08-22T12:07:00Z | **hermes** · skillopt-sleep · blocker | Nightly Aug 22 FAILED (4th consecutive) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause re-confirmed: editable install points to /tmp/SkillOpt (deleted), venv has skillopt-0.2.0 dist-info + pth only. Fix (re-clone to persistent path, pip install -e, update run_cycle.py sys.path) still NOT applied. Last successful run Aug 10.
- 2026-08-22T12:06:00Z | **hermes** · hermes-ecosystem · note | Health monitor 18:00Z: freellmapi.service crash-looping every 5s (WorkingDirectory /home/ubuntu/freellmapi missing, status=200/CHDIR) — journal flooding ~12 err/min, no functional impact. Suggestion: systemctl disable --now freellmapi.service or restore dir. Rest of system healthy.
- 2026-08-22T12:05:00Z | **hermes** · agent-memory · note | No user sessions Aug 22 — 5th consecutive zero-user day (Aug 18-22). Routine crons only (sync memory 18:00Z clean, health monitor 18:00Z, SkillOpt 19:17Z failed, evening reflection). System per Aug 22 brief: GREEN Day 39, disk 54%, ruflo MCP 2,453 errors, Awesome Lists Monitor dead, URSSAF Q2 ~38d overdue.
- 2026-08-22T06:05:00Z | **hermes** · hermes-ecosystem · session-end | Brief delivered Sat Aug 22. System GREEN Day 39. Disk 54%, RAM 4.9/15Gi, swap 0B. 5 services down Day 39 unchanged (HumanGoodAI, AgentReady, WeKnora, FreeLLMAPI, HermesOffice). ruflo MCP 2,453 cumulative errors (294 overnight, 92% noise) — 4th night flagged. Awesome Lists Monitor dead (Firecrawl unconfigured + GLMS quota exhausted until Sep 3). 4th consecutive zero-user day (Aug 18-21). Wolf Sat no run (weekday only). URSSAF Q2 ~38d overdue. Vault committed.
- 2026-08-22T06:02:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Sat Aug 22. System GREEN Day 39. Checking DREAM (ruflo 2,453, Awesome Lists dead, GLMS quota exhausted), Wolf (Sat — no run), prev brief (real), services, disk/swap. 154 apt upgrades.

## Recent Decisions (7d)
_(none)_

## Recent Milestones (7d)
- 2026-08-18T12:47:00Z | **hermes** · hermes-ecosystem | Gateway restarted after 8+ days (v0.20.0 process loaded, PID 1536). HAL brief/DREAM/SkillOpt/Wolf/GDrive/maintenance-loop all missed Aug 11-17 windows; swap recovered 52%→0% after fresh reboot, disk 54%, memory healthy. Maintenance Phase13-ruflo-canary still awaiting approval since Aug 10.

## Last Seen (fleet)
- **hermes**: 2026-08-23T12:06:00Z — note: No user sessions Aug 23 — 6th consecutive zero-user day (Aug 18-23). Routine crons only (sync-memory 18:03 MYT clean, SkillOpt 19:17 MYT failed, evening reflection 20:02 MYT). System per Aug 23 brief: GREEN Day 40, disk 54%, ruflo MCP 2,700+ errors, backup null-byte guard bug (low priority), URSSAF Q2 ~39d overdue.
