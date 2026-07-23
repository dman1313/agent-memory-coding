# NOW — Current State

_Generated: 2026-07-23T12:17:15Z_

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
- **hermes · skillopt-sleep**: SkillOpt-Sleep recurring failure: editable pip install at /tmp/SkillOpt gets cleaned up by system. Fix: move repo to persistent path (e.g. ~/skillopt/SkillOpt/) instead of /tmp/. 5th occurrence since Jul 11. _(2026-07-20T19:17:00Z)_
- **hermes · hermes-ecosystem**: SkillOpt-Sleep all 4 benchmarks failed (ModuleNotFoundError: skillopt_sleep) — 3rd recurrence. Venv at ~/skillopt/workspace needs rebuild/pip reinstall. _(2026-07-17T19:18:00Z)_

## Recent Activity (48h)
- 2026-07-23T19:17:00Z | **hermes** · skillopt-sleep · note | SkillOpt-Sleep night 13: all 4 benchmarks clean. 0 edits accepted 4th consecutive night. trading 0.429 static, research 0.167→0.167, commits 1.000 ceiling, arxiv 1.000 ceiling. Plateau confirmed — needs new benchmark tasks or candidate refresh.
- 2026-07-23T18:00:00Z | **hermes** · agent-memory · note | Shared memory sync completed — Obsidian workspace synced to MEMORY.md (3,543 bytes). No errors, no drift detected. Both vaults healthy.
- 2026-07-22T12:08:34Z | **hermes** · agent-memory-coding · session-start | Vault daily memory update — git push fixed (gh auth setup-git). Self-Coach building (TypeScript LSP active). System YELLOW (4 services down Day 9, disk 34%, swap clean). SkillOpt-Sleep night 12/13 flat across all 4 benchmarks.
- 2026-07-22T12:08:34Z | **hermes** · agent-memory-coding · session-end | Memory vault updated. Git push working again (commit pushed after 8+ days of failures). SkillOpt-Sleep plateaued — 0 edits promoted 3rd consecutive night. NOW.md regenerated.
- 2026-07-22T12:08:34Z | **hermes** · skillopt-sleep · note | SkillOpt-Sleep night 12/13: all 4 benchmarks clean (no module errors). Zero edits promoted for 3rd consecutive night. Trading 0.429 static, research 0.333, commits/arxiv at 1.000 ceiling. Plateau confirmed — needs new benchmark tasks or candidate refresh.
- 2026-07-22T12:08:34Z | **hermes** · agent-memory · blocker-resolve | Git push FIXED — gh auth setup-git configured HTTPS credential helper. Vault commits 4038f17 and 0d32579 pushed successfully. First successful remote push in 8+ days.

## Recent Decisions (7d)
_(none)_

## Recent Milestones (7d)
- 2026-07-21T00:21:00Z | **hermes** · self-coach | Self-Coach Slice 3 committed (goal dialogue with conversation history, repetition detection, GOAL_READY marker). Slices 1-3 all committed: Next.js 16 + Rust Axum + Supabase schema, auth, DB client, 19 tests. Building continues.
- 2026-07-20T19:17:00Z | **hermes** · skillopt-sleep | SkillOpt-Sleep night 10: ModuleNotFoundError (5th recurrence — /tmp/ cleanup broke editable pip install). Re-cloned microsoft/SkillOpt to /tmp/ and re-ran. All 4 benchmarks flat for 3+ consecutive nights — trading stuck at 0.429, arxiv at 0.000. Plateau: need candidate strategy refresh or new benchmark tasks.
- 2026-07-20T14:54:00Z | **hermes** · self-coach | Self-Coach contract approved. Dwayne confirmed "Everything. I already did it in the interview." Build started — PLAN.md created, monorepo scaffolded. Next.js 16 + Rust/Axum 0.8 + Supabase (6 tables, RLS).

## Last Seen (fleet)
- **hermes**: 2026-07-23T19:17:00Z — note: SkillOpt-Sleep night 13: all 4 benchmarks clean. 0 edits accepted 4th consecutive night. trading 0.429 static, research 0.167→0.167, commits 1.000 ceiling, arxiv 1.000 ceiling. Plateau confirmed — needs new benchmark tasks or candidate refresh.
