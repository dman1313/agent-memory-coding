# NOW — Current State

_Generated: 2026-06-10T09:45:37Z_

## Active Work
- **claude-code · claude-md-rewrite**: Starting: rewrite global CLAUDE.md for token efficiency + Self-Annealing + Auto Research capabilities. _(2026-06-10T17:00:00Z)_
- **hermes · general**: Vault synced, reading fleet state — last activity June 7, system YELLOW then (drift + provider 451 errors), checking current state _(2026-06-08T14:30:00Z)_

## Stale Open Sessions (>48h, no session-end)
- **cursor · agent-memory-coding** _(stale — log session-end)_: Starting: full vault read (NOW, CONTEXT, ACTIVITY); report active work to user. _(2026-06-05T20:30:00Z)_
- **kimi · pyp-planner-gen** _(stale — log session-end)_: Starting: Returned from pause. User asked to clean up DOCX formatting and update PYP planner code. _(2026-06-04T12:12:18Z)_

## Pending Inboxes
- **claude**: Roster check claude: inbox is live.
- **codex**: Roster check codex: inbox is live.
- **goose**: (pending message)
- **hermes-vps**: Roster check hermes-vps: inbox is live.

## Dashboard Messages (48h)
_(none)_

## Blockers
- **hermes · dream**: DREAM cleanup-before-analysis bug persists — 7th+ occurrence, zero session files for analysis, 516 errors logged _(2026-06-06T14:00:00Z)_
- **hermes · provider-routing**: DeepSeek/xiaomi provider blocked — HTTP 451 cross-border isolation errors for 24h+, cron jobs silently failing _(2026-06-05T12:01:19Z)_

## Recent Activity (48h)
- 2026-06-10T19:25:00Z | **MacH** · taste-skill · blocker-resolve | Dwayne challenged my first-pass skip list. Re-evaluated: 6 of 7 skips had weak reasons (called gpt-taste a dup, missed that imagegen-* are prompt direction for any image-gen tool, misread stitch as Stitch-only). Installed all 6 plus updated Guides/taste-skill-availability.md with a correction log. Only taste-skill-v1 stays out (correct reason). Total MacH install: 12 of 13 skills, 6,444 SKILL.md lines. Patched: ~/.hermes/skills/creative/taste-skill/* (6 new subdirs) and the vault pointer.
- 2026-06-10T19:10:00Z | **MacH** · taste-skill · milestone | 
- 2026-06-10T19:05:00Z | **MacH** · taste-skill · note | 
- 2026-06-10T18:30:00Z | **MacH** · claude-md-rewrite · session-end | Done: applied canonical rewrite (Guides/claude-md-rewrite-guide) to schema/AGENTS.md on the iCloud path. 1,020→995 words / ~1,326→~1,293 tokens; added §8 Self-annealing skills, §9 Auto research (Karpathy loop), §10 Leverage. Preserved Multi-agent write contract as new §5 (binding). Logged run audit at Guides/claude-md-rewrite-runs/2026-06-10-MacH-schema-AGENTS.md. Note: there are two diverged working trees on the Mac (~/agent-memory/ vs iCloud); this work landed in the iCloud path so launchd sync will push it. Recommend retiring or syncing the local copy.
- 2026-06-10T18:25:00Z | **MacH** · agent-memory · decision | Confirmed the iCloud vault path is the source of truth for the fleet (launchd sync, all other Mac agents, Hermes pull target). The local ~/agent-memory/ working tree is a stale personal copy that diverged ~24h ago. Will write to iCloud going forward and flag the divergence to Dwayne.
- 2026-06-10T18:20:00Z | **MacH** · claude-md-rewrite · note | Reading claude-codes 18:00 session-end: that run rewrote the per-agent ~/.claude/CLAUDE.md and produced Guides/claude-md-rewrite-guide.md. My run is a second application of the same canonical meta-prompt, targeting the vaults schema/AGENTS.md (not a per-agent config). Keeping the guide as-is; saving per-run audit under Guides/claude-md-rewrite-runs/.
- 2026-06-10T18:10:00Z | **MacH** · claude-md-rewrite · session-start | 
- 2026-06-10T17:00:00Z | **claude-code** · claude-md-rewrite · session-start | Starting: rewrite global CLAUDE.md for token efficiency + Self-Annealing + Auto Research capabilities.
- 2026-06-10T06:00:00Z | **claude-code** · general · session-start | Starting: user typed test — standing by for task assignment. Vault read complete (STANDING-ORDERS, NOW, claude-code.md).
- 2026-06-10T05:34:27Z | **claude-code** · wiki-obsidian · decision | Adopted 4 research recommendations (ADR 0002): multi-agent write contract, schema-alignment at ingest, pre-write self-lint, page lifecycle states. Hybrid search deferred to ~300 pages. Installed com.dwayne.vault-sync launchd job (15 min).
- 2026-06-10T05:27:03Z | **claude-code** · wiki-obsidian · milestone | Restored schema/+sdd/+Reference/+skills to root (accidental move into raw/); reconciled 117 dirty files; found launchd sync job MISSING; queried NotebookLM wiki-research notebook — answers saved to raw/notebooklm-wiki-research-2026-06-10.md (5 CHALLENGEs incl. flat-file mutation danger, hybrid search)
- 2026-06-10T01:35:00Z | **kiro** · agent-memory-coding · session-end | Done: Full wiki compile — 93 raw files → 20 entities, 13 concepts, 19 sources. Raw inbox cleared; files in processed/meetings/ (85), articles/ (3), docs/ (2). index.md + log.md updated.

## Recent Decisions (7d)
- 2026-06-10T18:25:00Z | **MacH** · agent-memory | Confirmed the iCloud vault path is the source of truth for the fleet (launchd sync, all other Mac agents, Hermes pull target). The local ~/agent-memory/ working tree is a stale personal copy that diverged ~24h ago. Will write to iCloud going forward and flag the divergence to Dwayne.
- 2026-06-10T05:34:27Z | **claude-code** · wiki-obsidian | Adopted 4 research recommendations (ADR 0002): multi-agent write contract, schema-alignment at ingest, pre-write self-lint, page lifecycle states. Hybrid search deferred to ~300 pages. Installed com.dwayne.vault-sync launchd job (15 min).
- 2026-06-09T22:05:00Z | **claude-code** · classroom-mirror | Contract signed (19 criteria): webcam classroom tool redesigned ethically — Mode 1 consented LIMS-coded child via zones, Mode 2 aggregate-only; no faces, no video stored, no emotion inference, local-only Mac. First real run of agent-ready-coding-loop v2.2
- 2026-06-04T22:49:00Z | **codex** · humangood-ai-webpage | Found repo mismatch: local humangooDAI.2 tracks dman1313/HumanGood at 20c2b94; dman1313/goodhuman is separate at ede9887 and older/divergent. No publish/remote rewrite performed.

## Recent Milestones (7d)
- 2026-06-10T19:10:00Z | **MacH** · taste-skill | 
- 2026-06-10T05:27:03Z | **claude-code** · wiki-obsidian | Restored schema/+sdd/+Reference/+skills to root (accidental move into raw/); reconciled 117 dirty files; found launchd sync job MISSING; queried NotebookLM wiki-research notebook — answers saved to raw/notebooklm-wiki-research-2026-06-10.md (5 CHALLENGEs incl. flat-file mutation danger, hybrid search)
- 2026-06-10T01:35:00Z | **kiro** · agent-memory-coding | Wiki compile complete: Domain 2 (Human Good/AI) fully extracted; Domain 1 (school ~75 transcripts) batched into 3 period sources; Domain 3 (misc) 4 sources. raw/ inbox clean — only operational subdirs remain.
- 2026-06-10T00:37:30Z | **kiro** · agent-memory-coding | Created raw/voicenotes/ folder (+ .gitkeep)
- 2026-06-10T00:25:00Z | **claude-code** · classroom-mirror | Built + verified: 14/14 AUTO criteria YES (guardrail 4 caught Marie passing as code — fixed w/ digit rule); UI verified live in browser; 5 HUMAN checks await Dwayne (HUMAN-CHECKS.md). 4 commits, repo local
- 2026-06-09T21:18:00Z | **claude-code** · loop-generator | v2.2 written: contract persisted to CONTRACT.md w/ resume protocol, [HUMAN] checks in loop exit, stagnation-based retry budget, checkpoint commits, amendment protocol, fake-data rule, cost question
- 2026-06-09T10:22:00Z | **claude-code** · ollama-external | Configured Ollama to use external drive: /Volumes/Over flow/llm/Ollama (saves internal drive space)
- 2026-06-06T05:09:47Z | **claude-code** · wiki-obsidian | Knowledge Curator build T1-T9 complete: curate skill (6 modes) + schema consolidation (sop/principle, precedence, consult contract) + 7-page company-brain ingest + Dataview/Base/Canvas views; lint clean. 12 commits local on main; push gated (T10).
- 2026-06-05T21:15:00Z | **cursor** · agent-memory-coding | Created AGENT-BOOTSTRAP.md — shareable copy-paste instructions for onboarding any fleet agent.
- 2026-06-05T21:05:00Z | **cursor** · wiki-obsidian | Created schema/AGENTS.md (Knowledge Curator master rules); wired into CLAUDE, STANDING-ORDERS, AGENT-SETUP, MEMORY, vault-purpose, wiki-obsidian.
- 2026-06-05T20:46:50Z | **claude-code** · wiki-obsidian | Wrote Knowledge Curator design spec (schema/specs/2026-06-05-knowledge-curator-design.md): curate skill w/ 6 modes, conversational ask + capture learning loop, sop/principle subtypes, schema precedence, full visual stack. Approved by Dwayne; next: writing-plans.
- 2026-06-05T20:45:00Z | **cursor** · agent-memory-coding | Improved build-context.sh: auto-repair ACTIVITY header, stale sessions, pending inboxes, dashboard feed, empty-project TSV fix; updated sync.sh + STANDING-ORDERS.

## Last Seen (fleet)
- **MacH**: 2026-06-10T19:25:00Z — blocker-resolve: Dwayne challenged my first-pass skip list. Re-evaluated: 6 of 7 skips had weak reasons (called gpt-taste a dup, missed that imagegen-* are prompt direction for any image-gen tool, misread stitch as Stitch-only). Installed all 6 plus updated Guides/taste-skill-availability.md with a correction log. Only taste-skill-v1 stays out (correct reason). Total MacH install: 12 of 13 skills, 6,444 SKILL.md lines. Patched: ~/.hermes/skills/creative/taste-skill/* (6 new subdirs) and the vault pointer.
- **claude-code**: 2026-06-10T17:00:00Z — session-start: Starting: rewrite global CLAUDE.md for token efficiency + Self-Annealing + Auto Research capabilities.
- **kiro**: 2026-06-10T01:35:00Z — session-end: Done: Full wiki compile — 93 raw files → 20 entities, 13 concepts, 19 sources. Raw inbox cleared; files in processed/meetings/ (85), articles/ (3), docs/ (2). index.md + log.md updated.
- **hermes**: 2026-06-09T12:01:37Z — blocker-resolve: Dashboard :9999 recovered (200) — was DOWN June 8, back today without manual restart
- **antigravity**: 2026-06-06T05:23:30Z — session-end: Done: Acknowledged roster checks on Dashboard, cleared pending inbox/messages, closed stale session, and rebuilt vault context.
- **cursor**: 2026-06-05T21:15:00Z — milestone: Created AGENT-BOOTSTRAP.md — shareable copy-paste instructions for onboarding any fleet agent.
- **codex**: 2026-06-05T19:10:25Z — milestone: Adjusted result layout so result text and image stay side-by-side on tablet/desktop widths while stacking on mobile.
- **kimi**: 2026-06-04T12:35:00Z — milestone: Updated pyp_planner.py: proper CLI with argparse, auto-detects pipe/tab tables, PYP structure heuristics (sections/engagements/weeks/options), removes AI artifacts. Applied to Grade 5 Human Migration unit.
