# NOW — Current State

_Generated: 2026-07-27T12:11:42Z_

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
- 2026-07-26T11:30:00Z | **hermes** · hermes-ecosystem · decision | Model routing v5.1: default switched from DeepSeek v4-pro back to Xiaomi MiMo v2.5-pro. DeepSeek added as mid-tier escalation (MiMo -> DeepSeek -> GPT-5.6). Routing tables, skill, and README all updated and verified.

## Recent Decisions (7d)
- 2026-07-26T11:30:00Z | **hermes** · hermes-ecosystem | Model routing v5.1: default switched from DeepSeek v4-pro back to Xiaomi MiMo v2.5-pro. DeepSeek added as mid-tier escalation (MiMo -> DeepSeek -> GPT-5.6). Routing tables, skill, and README all updated and verified.

## Recent Milestones (7d)
- 2026-07-21T00:21:00Z | **hermes** · self-coach | Self-Coach Slice 3 committed (goal dialogue with conversation history, repetition detection, GOAL_READY marker). Slices 1-3 all committed: Next.js 16 + Rust Axum + Supabase schema, auth, DB client, 19 tests. Building continues.
- 2026-07-20T19:17:00Z | **hermes** · skillopt-sleep | SkillOpt-Sleep night 10: ModuleNotFoundError (5th recurrence — /tmp/ cleanup broke editable pip install). Re-cloned microsoft/SkillOpt to /tmp/ and re-ran. All 4 benchmarks flat for 3+ consecutive nights — trading stuck at 0.429, arxiv at 0.000. Plateau: need candidate strategy refresh or new benchmark tasks.
- 2026-07-20T14:54:00Z | **hermes** · self-coach | Self-Coach contract approved. Dwayne confirmed "Everything. I already did it in the interview." Build started — PLAN.md created, monorepo scaffolded. Next.js 16 + Rust/Axum 0.8 + Supabase (6 tables, RLS).

## Last Seen (fleet)
- **hermes**: 2026-07-26T11:30:00Z — decision: Model routing v5.1: default switched from DeepSeek v4-pro back to Xiaomi MiMo v2.5-pro. DeepSeek added as mid-tier escalation (MiMo -> DeepSeek -> GPT-5.6). Routing tables, skill, and README all updated and verified.
