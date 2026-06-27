# NOW — Current State

_Generated: 2026-06-27T06:01:38Z_

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
- **hermes**: 4 start(s) / 3 end(s)

## Pending Inboxes
- **claude**: Roster check claude: inbox is live. ⚠ pending >7d
- **codex**: Roster check codex: inbox is live. ⚠ pending >7d
- **hermes-mac**: Roster check: please acknowledge that hermes-mac inbox is live. ⚠ pending >7d
- **hermes-vps**: Roster check hermes-vps: inbox is live. ⚠ pending >7d

## Dashboard Messages (48h)
_(none)_

## Blockers
- **hermes · igcse-pipeline**: IGCSE concept-progress.json missing from workdir, pipeline couldn't start. Created bootstrap with 10 IGCSE Biology concepts (Cell Structure → Gas Exchange). Pipeline revived after 523+ consecutive failures. _(2026-06-26T17:40:00Z)_
- **hermes · hermes-dashboard**: Dashboard :9999 DOWN — was UP yesterday, new failure. _(2026-06-08T14:05:00Z)_

## Recent Activity (48h)
- 2026-06-26T18:00:00Z | **hermes** · agent-memory · session-end | Daily memory vault update complete. Prepended 16 entries covering Jun 21-26 work including major triage-fix session. NOW.md 11d stale (build-context.sh times out). Triage session resolved zombie MCP processes, fixed 5 cron jobs, rebuilt IGCSE concept-progress.json. MINIMAX_API_KEY received — provider=None cascade fixable.
- 2026-06-26T17:45:00Z | **hermes** · triage-fix · milestone | Full system triage per Dwayne's voice command: found 20 zombie MCP processes eating 1.4GB RAM (broken YAML args in context7/firecrawl configs), killed all zombies, recovered 1.4GB RAM. Disabled broken MCP servers. Pinned 5 provider=None cron jobs to deepseek-chat. IGCSE concept-progress.json rebuilt.
- 2026-06-26T17:43:00Z | **hermes** · provider-routing · blocker-resolve | Dwayne provided MINIMAX_API_KEY — minimax provider now configured. Longest-standing cron failure path (provider=None → minimax → no key) resolved. 5 cron jobs unpinned from deepseek-chat can optionally use minimax again.
- 2026-06-26T17:40:00Z | **hermes** · igcse-pipeline · blocker | IGCSE concept-progress.json missing from workdir, pipeline couldn't start. Created bootstrap with 10 IGCSE Biology concepts (Cell Structure → Gas Exchange). Pipeline revived after 523+ consecutive failures.
- 2026-06-26T14:02:00Z | **hermes** · agent-memory · session-start | HAL Daily Brief (Friday): system YELLOW — core services up, disk 61%, swap 84%. Vault logging broken 4 days (Jun 22-25 ghost commits, build-context.sh xargs quoting, NOW.md 11d stale). Wolf low-conviction Friday (all 15 NEUTRAL). Provider=None cascade Day 8 unfixed.
- 2026-06-26T10:39:33Z | **MacH** · fleet-sync · session-end | (auto-closed by janitor: open since 2026-06-10T19:35:06Z, no session-end >48h)
- 2026-06-26T10:39:33Z | **claude-code** · claude-md-rewrite · session-end | (auto-closed by janitor: open since 2026-06-10T17:00:00Z, no session-end >48h)
- 2026-06-26T08:04:00Z | **hermes** · wolf-trading-agent · session-start | Wolf Friday scan: 35 Reddit posts, 62 news articles, 15 signals all NEUTRAL. Top ASTS 0.202, Unity 0.200. Published 3 to AI-Trader (AMC bearish, INTC bullish, BB neutral). Twitter offline (CreditsDepleted). Reddit + GNews flowing.
- 2026-06-26T06:00:00Z | **hermes** · agent-memory · session-start | Agent memory vault daily update — maintained ACTIVITY.md, attempted build-context.sh (times out), committed and pushed. 7 entries prepended covering Jun 22-25 ghost gap. build-context.sh xargs quoting bug fixed (sed trim).
- 2026-06-25T06:05:00Z | **hermes** · agent-memory · note | Jun 25 HAL brief ran — NOT ghost (full health metrics), but vault commit failed silently. 5th day without git push. build-context.sh broken.

## Recent Decisions (7d)
_(none)_

## Recent Milestones (7d)
- 2026-06-26T17:45:00Z | **hermes** · triage-fix | Full system triage per Dwayne's voice command: found 20 zombie MCP processes eating 1.4GB RAM (broken YAML args in context7/firecrawl configs), killed all zombies, recovered 1.4GB RAM. Disabled broken MCP servers. Pinned 5 provider=None cron jobs to deepseek-chat. IGCSE concept-progress.json rebuilt.

## Last Seen (fleet)
- **hermes**: 2026-06-26T18:00:00Z — session-end: Daily memory vault update complete. Prepended 16 entries covering Jun 21-26 work including major triage-fix session. NOW.md 11d stale (build-context.sh times out). Triage session resolved zombie MCP processes, fixed 5 cron jobs, rebuilt IGCSE concept-progress.json. MINIMAX_API_KEY received — provider=None cascade fixable.
- **MacH**: 2026-06-26T10:39:33Z — session-end: (auto-closed by janitor: open since 2026-06-10T19:35:06Z, no session-end >48h)
- **claude-code**: 2026-06-26T10:39:33Z — session-end: (auto-closed by janitor: open since 2026-06-10T17:00:00Z, no session-end >48h)
- **antigravity**: 2026-06-06T05:23:30Z — session-end: Done: Acknowledged roster checks, updated pending inboxes.
- **cursor**: 2026-06-05T21:15:00Z — milestone: Created AGENT-BOOTSTRAP.md — shareable copy-paste onboarding.
- **codex**: 2026-06-04T22:49:00Z — decision: Found repo mismatch: local humangooDAI.2 vs dman1313/goodhuman divergent.
- **kimi**: 2026-06-04T12:35:00Z — milestone: Updated pyp_planner.py: proper CLI with argparse, auto-detects pipe/tab tables.
