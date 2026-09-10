# NOW — Current State

_Generated: 2026-09-10T06:04:26Z_

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
- **hermes · skillopt-sleep**: Nightly Sep 8 FAILED (22nd consecutive, Aug 18-Sep 8) — 19:19 MYT run, all 4 benchmarks (trading/research/commits/arxiv) ModuleNotFoundError: skillopt_sleep. Root cause unchanged: package not pip-installed, nightly.sh doesn't activate correct venv; workspace harness present at /home/ubuntu/skillopt/workspace/ but no git remote. Fix not applied — blocked on Dwayne providing source repo URL. Last successful run Aug 10. _(2026-09-08T11:19:18Z)_
- **hermes · skillopt-sleep**: Nightly Sep 7 FAILED (21st consecutive, Aug 18-Sep 7) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); no source dir under /home/ubuntu/skillopt. Fix (re-clone to persistent path, pip install -e) not applied — blocked on Dwayne providing source repo URL. Last successful run Aug 10. _(2026-09-07T11:18:01Z)_
- **hermes · skillopt-sleep**: Nightly Sep 6 FAILED (20th consecutive, Aug 18-Sep 6) — summary JSON run_at 2026-09-06T11:17:46Z shows all 4 benchmarks (trading/research/commits/arxiv) fail: ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); no source dir under /home/ubuntu/skillopt. Fix (re-clone to persistent path, pip install -e) not applied — blocked on Dwayne providing source repo URL. Last successful run Aug 10. _(2026-09-06T12:02:00Z)_
- **hermes · skillopt-sleep**: Nightly Sep 5 FAILED (19th consecutive, Aug 18-Sep 5) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); no source dir under /home/ubuntu/skillopt. Fix (re-clone to persistent path, pip install -e) not applied — blocked on Dwayne providing source repo URL. Last successful run Aug 10. _(2026-09-05T12:01:24Z)_
- **hermes · skillopt-sleep**: Nightly Sep 4 FAILED (18th consecutive, Aug 18-Sep 4) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); no source dir under /home/ubuntu/skillopt. Fix (re-clone to persistent path, pip install -e) not applied — blocked on Dwayne providing source repo URL. Last successful run Aug 10. _(2026-09-04T12:00:38Z)_
- **hermes · skillopt-sleep**: Nightly Sep 3 FAILED (17th consecutive, Aug 18-Sep 3) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); no source dir under /home/ubuntu/skillopt. Fix (re-clone, pip install -e) not applied — blocked on Dwayne providing source repo URL. Last successful run Aug 10. _(2026-09-03T12:01:00Z)_
- **hermes · skillopt-sleep**: Nightly Sep 2 FAILED (16th consecutive, Aug 18-Sep 2) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep; no source dir, no pip install, no pyproject anywhere under /home/ubuntu/skillopt. Fix (re-clone to persistent path, pip install -e) still NOT applied. Last successful run Aug 10. Escalation-fatigue flag stands — 16 nights, 0 action. _(2026-09-02T12:04:16Z)_
- **hermes · hermes-ecosystem**: HAL Daily Brief Sep 2 FAILED at 14:04 MYT — HTTP 401 'token expired or incorrect' vs api.z.ai (glm-5.2). No brief delivered (Day 50 health snapshot missing), no DREAM/Wolf cross-check, no vault logging from brief. Action: refresh Z.AI API token in Hermes env/secrets. Health monitor 18:00 MYT independently flagged same. _(2026-09-02T12:04:16Z)_
- **hermes · skillopt-sleep**: Nightly Sep 1 FAILED (15th consecutive, Aug 18-Sep 1) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); venv metadata-only, no source anywhere under /home/ubuntu/skillopt. Fix (re-clone to persistent path, pip install -e) still NOT applied. Last successful run Aug 10. _(2026-09-01T12:02:07Z)_
- **hermes · skillopt-sleep**: Nightly Aug 31 FAILED (14th consecutive, Aug 18-31) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); venv has only __editable__ pth metadata, no source anywhere under /home/ubuntu/skillopt. NEW: SkillOpt session investigated and found no git remote, no pyproject.toml outside venv — self-heal now blocked on Dwayne providing the source repo URL (fix: re-clone to persistent path, pip install -e). Last successful run Aug 10. _(2026-08-31T12:06:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 30 FAILED (13th consecutive, Aug 18-30) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); venv gone, package not pip-installed anywhere. Fix (re-clone to persistent path, recreate venv, pip install -e) still NOT applied. Last successful run Aug 10. Escalation-fatigue flag stands — 13 nights, 0 action. _(2026-08-30T12:04:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 29 FAILED (12th consecutive, Aug 18-29) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); venv gone, package not pip-installed anywhere. Fix (re-clone to persistent path, recreate venv, pip install -e) still NOT applied. Last successful run Aug 10. Escalation-fatigue flag stands — 12 nights, 0 action. _(2026-08-29T12:03:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 28 FAILED (11th consecutive, Aug 18-28) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); venv gone, package not pip-installed anywhere. Fix (re-clone to persistent path, recreate venv, pip install -e) still NOT applied. Last successful run Aug 10. Escalation-fatigue flag stands — 11 nights, 0 action. _(2026-08-28T12:08:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 27 FAILED (10th consecutive, Aug 18-27) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause worsened: not just the package missing — the venv itself is gone (/home/ubuntu/skillopt/venv/ does not exist) and package not pip-installed anywhere. Fix (re-clone to persistent path, recreate venv, pip install -e) still NOT applied. Last successful run Aug 10. _(2026-08-27T11:17:00Z)_
- **hermes · skillopt-sleep**: Nightly Aug 26 FAILED (9th consecutive, Aug 18-26) — all 4 benchmarks ModuleNotFoundError: skillopt_sleep. Root cause unchanged: editable install mapped to /tmp/SkillOpt (wiped by reboot); source gone, venv metadata-only. Fix (re-clone to persistent path, pip install -e) still NOT applied. Last successful run Aug 10. _(2026-08-26T11:17:00Z)_
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
- 2026-09-10T06:02:00Z | **hermes** · hermes-ecosystem · session-end | Brief delivered Thu Sep 10 (Day 58). System GREEN. RECOVERED from Sep 9 brief failure (HTTP 401 token expired). 3 provider creds dead same day (DeepSeek 402, Z.ai 401, DeepSeek custom 401) + GDrive OAuth expired. URSSAF Q2 ~55d overdue (top priority). Vault committed.
- 2026-09-10T06:01:00Z | **hermes** · hermes-ecosystem · session-start | HAL daily brief Thu Sep 10 (Day 58). System GREEN: disk 57%, RAM 5.1/15Gi, swap 5.0Mi. 5 services down unchanged (HumanGoodAI :5000, AgentReady :8766, WeKnora :8089, FreeLLMAPI :3002, HermesOffice :3001); up Dashboard :9999, 9Router :20128, DashAuth :9121. RECOVERY — Sep 9 brief FAILED (HTTP 401 token expired, no brief/vault Day 57). DREAM: 3 provider creds died same day + GDrive OAuth expired. Wolf: 17 signals, only META 0.459 WATCH (bearish), no STRONG; Twitter 0 credits-depleted; published 3/3 UBER/MRNA/U to AI-Trader. 23rd zero-user day. URSSAF Q2 ~55d overdue. X $5 top-up. 202 apt upgrades.
- 2026-09-08T12:01:00Z | **hermes** · agent-memory · note | No user sessions Sep 8 — 22nd consecutive zero-user day (Aug 18-Sep 8). Post-brief crons only: health monitor 18:00 MYT clean (all systems healthy, gateway up; ruflo MCP still failing ~every 6 min since 15:51 UTC — parked, ~500KB log noise), sync-shared-memory success 18:00, SkillOpt 22nd fail 19:19 MYT. HAL Day 56 brief entries above cover system state (GREEN, Wolf publish corrected NOT phantom, GDrive OAuth expired, URSSAF Q2 ~53d overdue).
- 2026-09-08T11:19:18Z | **hermes** · skillopt-sleep · blocker | Nightly Sep 8 FAILED (22nd consecutive, Aug 18-Sep 8) — 19:19 MYT run, all 4 benchmarks (trading/research/commits/arxiv) ModuleNotFoundError: skillopt_sleep. Root cause unchanged: package not pip-installed, nightly.sh doesn't activate correct venv; workspace harness present at /home/ubuntu/skillopt/workspace/ but no git remote. Fix not applied — blocked on Dwayne providing source repo URL. Last successful run Aug 10.

## Recent Decisions (7d)
_(none)_

## Recent Milestones (7d)
_(none)_

## Last Seen (fleet)
- **hermes**: 2026-09-10T06:02:00Z — session-end: Brief delivered Thu Sep 10 (Day 58). System GREEN. RECOVERED from Sep 9 brief failure (HTTP 401 token expired). 3 provider creds dead same day (DeepSeek 402, Z.ai 401, DeepSeek custom 401) + GDrive OAuth expired. URSSAF Q2 ~55d overdue (top priority). Vault committed.
