# NOW — Current State

_Generated: 2026-08-07T12:16:33Z_

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
- **hermes · hermes-ecosystem**: Hermes session DB corrupted (malformed disk image) — session_search broken. Needs VACUUM or restore from backup. Fleet silence Day 44. _(2026-07-25T12:07:00Z)_
- **hermes · skillopt-sleep**: SkillOpt-Sleep recurring failure: editable pip install at /tmp/SkillOpt gets cleaned up by system. Fix: move repo to persistent path (e.g. ~/skillopt/SkillOpt/) instead of /tmp/. 5th occurrence since Jul 11. _(2026-07-20T19:17:00Z)_
- **hermes · hermes-ecosystem**: SkillOpt-Sleep all 4 benchmarks failed (ModuleNotFoundError: skillopt_sleep) — 3rd recurrence. Venv at ~/skillopt/workspace needs rebuild/pip reinstall. _(2026-07-17T19:18:00Z)_

## Recent Activity (48h)
- 2026-08-07T12:15:00Z | **hermes** · agent-memory · note | No user sessions Aug 6-7 — routine cron only (HAL brief, DREAM Night 8, Wolf Thu, SkillOpt-Sleep, maintenance loop, syncs). Per Fri Aug 7 brief: system YELLOW (5 services DOWN Day 24, swap 50% flat 978Mi/1.9Gi), NEW blocker AI-Trader publish FAILED (ai4trade.ai 500 errors), ruflo MCP 490 errors across 2 nights (Night 8 — one `hermes mcp remove ruflo` fixes), session DB 0 bytes Night 8 (gateway restart needed), 3 crons blocked by approval guard, cron 2bac775e7d28 gateway-restart loop blocked 5x, Wolf Thu 1 WATCH (U 0.414) rest NEUTRAL, Twitter 0 tweets Day 25, fleet silence Day 57, URSSAF Q2 23 days past.
- 2026-08-06T06:15:00Z | **hermes** · agent-memory-coding · session-end | Brief delivered Thu Aug 6. System YELLOW: 5 services DOWN Day 23, swap SURGE 50% (2.6× from 19% yesterday). DREAM Night 7: ruflo MCP dead (238 errors), gateway still on old process — /restart pending to load v0.20.0. Wolf Thu: all 14 NEUTRAL, published to AI-Trader. Aug 5 brief REAL (443 lines). Fleet silence Day 56. URSSAF Q2 22 days past.
- 2026-08-05T19:05:00Z | **hermes** · hermes-ecosystem · milestone | Hermes updated v0.19.1 → v0.20.0 (639 commits): deps updated, web dashboard rebuilt, config migrated + validated, new grounded-citations skill installed, hermes doctor core healthy, no active security advisories. Pre-update snapshot created; optional full backup skipped (no writable files found). Gateway still on old process — /restart required to load v0.20.0 into Telegram.

## Recent Decisions (7d)
_(none)_

## Recent Milestones (7d)
- 2026-08-05T19:05:00Z | **hermes** · hermes-ecosystem | Hermes updated v0.19.1 → v0.20.0 (639 commits): deps updated, web dashboard rebuilt, config migrated + validated, new grounded-citations skill installed, hermes doctor core healthy, no active security advisories. Pre-update snapshot created; optional full backup skipped (no writable files found). Gateway still on old process — /restart required to load v0.20.0 into Telegram.
- 2026-08-05T11:18:25Z | **hermes** · skillopt-sleep | SkillOpt-Sleep night 26: all 4 benchmarks clean. research 0.167 → 0.333, 2 edits adopted (mandatory section headings + source/citation enforcement) — first plateau break since DeepSeek backend switch. trading/commits/arxiv at 1.000 ceiling, rejects correct.

## Last Seen (fleet)
- **hermes**: 2026-08-07T12:15:00Z — note: No user sessions Aug 6-7 — routine cron only (HAL brief, DREAM Night 8, Wolf Thu, SkillOpt-Sleep, maintenance loop, syncs). Per Fri Aug 7 brief: system YELLOW (5 services DOWN Day 24, swap 50% flat 978Mi/1.9Gi), NEW blocker AI-Trader publish FAILED (ai4trade.ai 500 errors), ruflo MCP 490 errors across 2 nights (Night 8 — one `hermes mcp remove ruflo` fixes), session DB 0 bytes Night 8 (gateway restart needed), 3 crons blocked by approval guard, cron 2bac775e7d28 gateway-restart loop blocked 5x, Wolf Thu 1 WATCH (U 0.414) rest NEUTRAL, Twitter 0 tweets Day 25, fleet silence Day 57, URSSAF Q2 23 days past.
