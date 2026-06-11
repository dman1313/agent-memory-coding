# NOW — Current State

_Generated: 2026-06-11T14:25:31Z_

## Active Work
- **hermes · agent-memory**: Starting: Dwayne pointed me to the shared wiki vault — reading instructions, reviewing current state, updating hermes.md _(2026-06-10T21:45:00Z)_
- **claude-code · claude-md-rewrite**: Starting: rewrite global CLAUDE.md for token efficiency + Self-Annealing + Auto Research capabilities. _(2026-06-10T17:00:00Z)_

## Plan Board
_0 in motion · 7 todo · 0 blocked · 1 done — full board: Plan/board.md · contract: Plan/README.md_
- todo P1 **T-0002** — Verify com.dwayne.vault-sync launchd job is actually running (→ MacH)
- todo P1 **T-0003** — Fix IGCSE Biology concept pipeline (missing concept-progress.json, 353 failed runs) (→ hermes)
- todo P2 **T-0001** — Retire the diverged ~/agent-memory working tree on the Mac (→ MacH)
- todo P2 **T-0004** — Fix DREAM cleanup-before-analysis bug (7th+ occurrence) (→ hermes)
- todo P2 **T-0008** — Curator pass — 8 orphan sources, 5 dead template links, backlink hygiene (→ claude-code)
- _Raw inbox: 0 unprocessed · archived raw missing processed stamp: 42_

## Stale Open Sessions (>48h, no session-end)
_(none)_

## Pending Inboxes
- **claude**: Roster check claude: inbox is live.
- **codex**: Roster check codex: inbox is live.
- **goose**: (pending message) ⚠ pending >7d
- **hermes-mac**: Roster check: please acknowledge that hermes-mac inbox is live.
- **hermes-vps**: Roster check hermes-vps: inbox is live.

## Dashboard Messages (48h)
_(none)_

## Blockers
- **hermes · provider-routing**: DeepSeek/xiaomi provider blocked — HTTP 451 cross-border isolation errors for 24h+, cron jobs silently failing _(2026-06-05T12:01:19Z)_

## Recent Activity (48h)
- 2026-06-11T14:45:00Z | **hyperagent** · agent-memory · session-end | Done: Fleet Plan Board shipped (spec sdd/specs/2026-06-11-fleet-plan-board, tasks T1-T12). Board live w/ 8 seeds, janitor in build-context.sh (auto-close, channel archive, lints, raw-backlog), resume points on 5 Project pages, research-once + cloud-agent rules, ADR 0004. T-0007 executed (42 stamps). All script changes verified on a sandbox replica before commit; NOW/CONTEXT/board in this commit are replica-regenerated.
- 2026-06-11T14:44:00Z | **hyperagent** · agent-memory · milestone | BOARD LIVE: Plan/README.md is the contract; NOW.md now shows the board. At your next session start: read your Project/<slug>.md resume page, check the board, claim before you build, write back what you learn.
- 2026-06-11T14:43:00Z | **hyperagent** · wiki-obsidian · handoff | T-0008 -> claude-code: curator pass (8 orphan sources, 5 dead template links, backlinks). Dispatch in Agent Inbox/claude.md; context in Project/wiki-obsidian.md.
- 2026-06-11T14:42:00Z | **hyperagent** · hermes-ecosystem · handoff | T-0003 T-0004 T-0005 T-0006 -> hermes: IGCSE pipeline fix (P1, 353 failed runs), DREAM bug, HAL Telegram delivery, ~4.5GB cache cleanup. Dispatch in Agent Inbox/hermes-vps.md; context in Project/hermes-ecosystem.md + Project/study-pipeline.md.
- 2026-06-11T14:41:00Z | **hyperagent** · agent-memory · handoff | T-0001 T-0002 -> MacH: retire diverged ~/agent-memory tree; verify com.dwayne.vault-sync launchd (P1 — NOW.md sat ~15h stale; the janitor rides that job). Dispatch in Agent Inbox/hermes-mac.md; context in Project/agent-memory.md.
- 2026-06-11T14:36:00Z | **hyperagent** · wiki-obsidian · milestone | T-0007 done: retro-stamped 42 archived raw files (processed: true + processed_at + note) — re-digestion landmine closed; janitor stamp-missing count 42 -> 0. First task through the full board lifecycle (todo -> claimed -> doing -> done).
- 2026-06-11T14:11:28Z | **kimi** · pyp-planner-gen · session-end | (auto-closed by janitor: open since 2026-06-04T12:12:18Z, no session-end >48h)
- 2026-06-11T14:11:28Z | **cursor** · agent-memory-coding · session-end | (auto-closed by janitor: open since 2026-06-05T20:30:00Z, no session-end >48h)
- 2026-06-11T13:26:00Z | **hyperagent** · agent-memory · milestone | plan.md + tasks.md written for fleet-plan-board (12 tasks): board renderer + janitor inside build-context.sh (sandbox-verifiable), channel archiver, resume points, rules updates, 6 seeded ops tasks (2 MacH, 4 hermes). Suspicion logged: NOW.md ~15h stale despite sync.sh design — launchd vault-sync job may be down again; seeded as T-0002. Implementation next.
- 2026-06-11T13:24:00Z | **hyperagent** · agent-memory · decision | Spec amendment 2 per Dwayne: identity-first resume flow (I'm MacH — what was I working on? Read the content, start from there; two file reads: Agents/{name}.md -> Project/<slug>.md) + research-once rule M8 (check vault before researching: resume page -> wiki/index -> Reference/ -> DECISIONS; write findings back; ACTIVITY note names where). The vault is the central place for everyone. Spec updated in place (M2/M7/M8, criteria 8).
- 2026-06-11T13:08:00Z | **hyperagent** · agent-memory · milestone | Fleet Plan Board spec committed (Status: Approved): Plan/ task board w/ claim protocol + single-writer rule, Project/<slug>.md resume points, NOW.md board section, janitor hygiene riding the existing 15-min sync, API-agent write path, seeded launch tasks. Spec: sdd/specs/2026-06-11-fleet-plan-board/spec.md. Next per SDD: plan.md + tasks.md.
- 2026-06-11T13:06:00Z | **hyperagent** · agent-memory · decision | Spec approved by Dwayne w/ amendment: this vault is dual-purpose — fleet coordination layer AND Dwaynes second brain. Fleet collects information for/with Dwayne here, and always writes state back keyed by project name: every active project keeps a resume point at Project/<slug>.md (Status now / Next steps / Where things live / Open tasks), updated when an agent stops, read first when an agent resumes. Corrects nuance of my 2026-06-11 audit note re: vault-purpose.md — it wasnt wrong, it was half the story.

## Recent Decisions (7d)
- 2026-06-11T13:24:00Z | **hyperagent** · agent-memory | Spec amendment 2 per Dwayne: identity-first resume flow (I'm MacH — what was I working on? Read the content, start from there; two file reads: Agents/{name}.md -> Project/<slug>.md) + research-once rule M8 (check vault before researching: resume page -> wiki/index -> Reference/ -> DECISIONS; write findings back; ACTIVITY note names where). The vault is the central place for everyone. Spec updated in place (M2/M7/M8, criteria 8).
- 2026-06-11T13:06:00Z | **hyperagent** · agent-memory | Spec approved by Dwayne w/ amendment: this vault is dual-purpose — fleet coordination layer AND Dwaynes second brain. Fleet collects information for/with Dwayne here, and always writes state back keyed by project name: every active project keeps a resume point at Project/<slug>.md (Status now / Next steps / Where things live / Open tasks), updated when an agent stops, read first when an agent resumes. Corrects nuance of my 2026-06-11 audit note re: vault-purpose.md — it wasnt wrong, it was half the story.
- 2026-06-10T22:55:00Z | **hermes** · dream | Giving DREAM one more night with the session_search fix. If
- 2026-06-10T21:50:00Z | **hermes** · agent-memory | Added Shared Wiki Vault protocol (section 22b) to SOUL.md — vault is now mandatory at every session start/end. No more ghost sessions.
- 2026-06-10T18:25:00Z | **MacH** · agent-memory | Confirmed the iCloud vault path is the source of truth for the fleet (launchd sync, all other Mac agents, Hermes pull target). The local ~/agent-memory/ working tree is a stale personal copy that diverged ~24h ago. Will write to iCloud going forward and flag the divergence to Dwayne.
- 2026-06-10T05:34:27Z | **claude-code** · wiki-obsidian | Adopted 4 research recommendations (ADR 0002): multi-agent write contract, schema-alignment at ingest, pre-write self-lint, page lifecycle states. Hybrid search deferred to ~300 pages. Installed com.dwayne.vault-sync launchd job (15 min).
- 2026-06-09T22:05:00Z | **claude-code** · classroom-mirror | Contract signed (19 criteria): webcam classroom tool redesigned ethically — Mode 1 consented LIMS-coded child via zones, Mode 2 aggregate-only; no faces, no video stored, no emotion inference, local-only Mac. First real run of agent-ready-coding-loop v2.2
- 2026-06-04T22:49:00Z | **codex** · humangood-ai-webpage | Found repo mismatch: local humangooDAI.2 tracks dman1313/HumanGood at 20c2b94; dman1313/goodhuman is separate at ede9887 and older/divergent. No publish/remote rewrite performed.

## Recent Milestones (7d)
- 2026-06-11T14:44:00Z | **hyperagent** · agent-memory | BOARD LIVE: Plan/README.md is the contract; NOW.md now shows the board. At your next session start: read your Project/<slug>.md resume page, check the board, claim before you build, write back what you learn.
- 2026-06-11T14:36:00Z | **hyperagent** · wiki-obsidian | T-0007 done: retro-stamped 42 archived raw files (processed: true + processed_at + note) — re-digestion landmine closed; janitor stamp-missing count 42 -> 0. First task through the full board lifecycle (todo -> claimed -> doing -> done).
- 2026-06-11T13:26:00Z | **hyperagent** · agent-memory | plan.md + tasks.md written for fleet-plan-board (12 tasks): board renderer + janitor inside build-context.sh (sandbox-verifiable), channel archiver, resume points, rules updates, 6 seeded ops tasks (2 MacH, 4 hermes). Suspicion logged: NOW.md ~15h stale despite sync.sh design — launchd vault-sync job may be down again; seeded as T-0002. Implementation next.
- 2026-06-11T13:08:00Z | **hyperagent** · agent-memory | Fleet Plan Board spec committed (Status: Approved): Plan/ task board w/ claim protocol + single-writer rule, Project/<slug>.md resume points, NOW.md board section, janitor hygiene riding the existing 15-min sync, API-agent write path, seeded launch tasks. Spec: sdd/specs/2026-06-11-fleet-plan-board/spec.md. Next per SDD: plan.md + tasks.md.
- 2026-06-10T19:10:00Z | **MacH** · taste-skill | Installed 6 of 13 taste-skill skills to ~/.hermes/skills/creative/taste-skill/ (default + redesign + soft + minimalist + brutalist + output). Skipped gpt-taste (dup), image-to-code (wrong workflow), imagegen-*/brandkit (we use FAL), stitch (Google only), v1 (default to v2). Noted overlap with frontend-ui-engineering (both will load; taste-skill wins on landing/portfolio tasks) and saas-landing-page-razzle-dazzle (orthogonal). Vault pointer at Guides/taste-skill-availability.md so fleet can see
- 2026-06-10T05:27:03Z | **claude-code** · wiki-obsidian | Restored schema/+sdd/+Reference/+skills to root (accidental move into raw/); reconciled 117 dirty files; found launchd sync job MISSING; queried NotebookLM wiki-research notebook — answers saved to raw/notebooklm-wiki-research-2026-06-10.md (5 CHALLENGEs incl. flat-file mutation danger, hybrid search)
- 2026-06-10T01:35:00Z | **kiro** · agent-memory-coding | Wiki compile complete: Domain 2 (Human Good/AI) fully extracted; Domain 1 (school ~75 transcripts) batched into 3 period sources; Domain 3 (misc) 4 sources. raw/ inbox clean — only operational subdirs remain.
- 2026-06-10T00:37:30Z | **kiro** · agent-memory-coding | Created raw/voicenotes/ folder (+ .gitkeep)
- 2026-06-10T00:25:00Z | **claude-code** · classroom-mirror | Built + verified: 14/14 AUTO criteria YES (guardrail 4 caught Marie passing as code — fixed w/ digit rule); UI verified live in browser; 5 HUMAN checks await Dwayne (HUMAN-CHECKS.md). 4 commits, repo local
- 2026-06-09T21:18:00Z | **claude-code** · loop-generator | v2.2 written: contract persisted to CONTRACT.md w/ resume protocol, [HUMAN] checks in loop exit, stagnation-based retry budget, checkpoint commits, amendment protocol, fake-data rule, cost question
- 2026-06-09T10:22:00Z | **claude-code** · ollama-external | Configured Ollama to use external drive: /Volumes/Over flow/llm/Ollama (saves internal drive space)
- 2026-06-06T05:09:47Z | **claude-code** · wiki-obsidian | Knowledge Curator build T1-T9 complete: curate skill (6 modes) + schema consolidation (sop/principle, precedence, consult contract) + 7-page company-brain ingest + Dataview/Base/Canvas views; lint clean. 12 commits local on main; push gated (T10).

## Last Seen (fleet)
- **hyperagent**: 2026-06-11T14:45:00Z — session-end: Done: Fleet Plan Board shipped (spec sdd/specs/2026-06-11-fleet-plan-board, tasks T1-T12). Board live w/ 8 seeds, janitor in build-context.sh (auto-close, channel archive, lints, raw-backlog), resume points on 5 Project pages, research-once + cloud-agent rules, ADR 0004. T-0007 executed (42 stamps). All script changes verified on a sandbox replica before commit; NOW/CONTEXT/board in this commit are replica-regenerated.
- **kimi**: 2026-06-11T14:11:28Z — session-end: (auto-closed by janitor: open since 2026-06-04T12:12:18Z, no session-end >48h)
- **cursor**: 2026-06-11T14:11:28Z — session-end: (auto-closed by janitor: open since 2026-06-05T20:30:00Z, no session-end >48h)
- **hermes**: 2026-06-10T22:55:00Z — decision: Giving DREAM one more night with the session_search fix. If
- **MacH**: 2026-06-10T19:25:00Z — blocker-resolve: Dwayne challenged my first-pass skip list. Re-evaluated: 6 of 7 skips had weak reasons (called gpt-taste a dup, missed that imagegen-* are prompt direction for any image-gen tool, misread stitch as Stitch-only). Installed all 6 plus updated Guides/taste-skill-availability.md with a correction log. Only taste-skill-v1 stays out (correct reason). Total MacH install: 12 of 13 skills, 6,444 SKILL.md lines. Patched: ~/.hermes/skills/creative/taste-skill/* (6 new subdirs) and the vault pointer.
- **claude-code**: 2026-06-10T17:00:00Z — session-start: Starting: rewrite global CLAUDE.md for token efficiency + Self-Annealing + Auto Research capabilities.
- **kiro**: 2026-06-10T01:35:00Z — session-end: Done: Full wiki compile — 93 raw files → 20 entities, 13 concepts, 19 sources. Raw inbox cleared; files in processed/meetings/ (85), articles/ (3), docs/ (2). index.md + log.md updated.
- **antigravity**: 2026-06-06T05:23:30Z — session-end: Done: Acknowledged roster checks on Dashboard, cleared pending inbox/messages, closed stale session, and rebuilt vault context.
- **codex**: 2026-06-05T19:10:25Z — milestone: Adjusted result layout so result text and image stay side-by-side on tablet/desktop widths while stacking on mobile.
