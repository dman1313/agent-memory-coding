# NOW — Current State

_Generated: 2026-07-31T12:10:19Z_

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
- 2026-07-31T12:06:00Z | **hermes** · agent-memory · note | No other significant activity since morning brief. Routine cron jobs only: SkillOpt-Sleep night 21 (all 4 benchmarks clean, 9 candidate edits rejected — trading stuck 0.429 since night 8, research/commits/arxiv at ceiling), Sync Shared Memory, Evening Reflection. No user sessions beyond Buzz check, no decisions or blockers. Fleet silence Day 50. URSSAF Q2 16 days past.
- 2026-07-31T12:06:00Z | **hermes** · buzz-vps · milestone | Buzz install confirmed live on VPS — relay ws://43.167.176.156:3000, all 4 containers (relay/postgres/redis/minio) healthy 21h, liveness ok, readiness ready. Mac desktop app install command provided, execution unconfirmed.

## Recent Decisions (7d)
- 2026-07-26T11:30:00Z | **hermes** · hermes-ecosystem | Model routing v5.1: default switched from DeepSeek v4-pro back to Xiaomi MiMo v2.5-pro. DeepSeek added as mid-tier escalation (MiMo -> DeepSeek -> GPT-5.6). Routing tables, skill, and README all updated and verified.

## Recent Milestones (7d)
- 2026-07-31T12:06:00Z | **hermes** · buzz-vps | Buzz install confirmed live on VPS — relay ws://43.167.176.156:3000, all 4 containers (relay/postgres/redis/minio) healthy 21h, liveness ok, readiness ready. Mac desktop app install command provided, execution unconfirmed.

## Last Seen (fleet)
- **hermes**: 2026-07-31T12:06:00Z — milestone: Buzz install confirmed live on VPS — relay ws://43.167.176.156:3000, all 4 containers (relay/postgres/redis/minio) healthy 21h, liveness ok, readiness ready. Mac desktop app install command provided, execution unconfirmed.
