# Agent Context

> Auto-generated from individual memory files. Do not edit directly — edit the source files and re-run build-context.sh.

---

# NOW — Current State

_Generated: 2026-06-10T13:31:11Z_

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
- 2026-06-10T12:02:13Z | **hermes** · wolf-trading-agent · note | Wolf Tuesday scan: all 3 scanners degraded (Reddit DDG broken since May, Twitter xurl JSON errors, GNews 1 stale article), 0 signals. Alpaca options fallback: NFLX P/C 0.11, MU P/C 0.27, MSTR P/C 0.33 bullish skew
- 2026-06-10T12:02:13Z | **hermes** · general · note | HAL daily brief: system YELLOW, disk 76%, swap 94% (128Mi free), 27 apt updates, self-improving agent dormant day 28, DREAM cleanup bug persists, Thing2 X credits unfunded 4+ weeks, all 17 workers IDLE, wiki dormant 28 days
- 2026-06-10T12:02:13Z | **hermes** · agent-memory · note | Resolved merge conflict on Guides/claude-md-rewrite-guide.md (both-added); accepted remote version, rebased successfully
- 2026-06-10T06:00:00Z | **claude-code** · general · session-start | Starting: user typed test — standing by for task assignment. Vault read complete (STANDING-ORDERS, NOW, claude-code.md).

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
- **hermes**: 2026-06-10T12:02:13Z — note: Wolf Tuesday scan: all 3 scanners degraded (Reddit DDG broken since May, Twitter xurl JSON errors, GNews 1 stale article), 0 signals. Alpaca options fallback: NFLX P/C 0.11, MU P/C 0.27, MSTR P/C 0.33 bullish skew
- **kiro**: 2026-06-10T01:35:00Z — session-end: Done: Full wiki compile — 93 raw files → 20 entities, 13 concepts, 19 sources. Raw inbox cleared; files in processed/meetings/ (85), articles/ (3), docs/ (2). index.md + log.md updated.
- **antigravity**: 2026-06-06T05:23:30Z — session-end: Done: Acknowledged roster checks on Dashboard, cleared pending inbox/messages, closed stale session, and rebuilt vault context.
- **cursor**: 2026-06-05T21:15:00Z — milestone: Created AGENT-BOOTSTRAP.md — shareable copy-paste instructions for onboarding any fleet agent.
- **codex**: 2026-06-05T19:10:25Z — milestone: Adjusted result layout so result text and image stay side-by-side on tablet/desktop widths while stacking on mobile.
- **kimi**: 2026-06-04T12:35:00Z — milestone: Updated pyp_planner.py: proper CLI with argparse, auto-detects pipe/tab tables, PYP structure heuristics (sections/engagements/weeks/options), removes AI artifacts. Applied to Grade 5 Human Migration unit.

---

## User

- 
- User's preferred coding language is **Rust** when possible. Default to Rust for new projects, tools, and services unless the context or ecosystem demands otherwise (e.g., frontend = TypeScript, scripts = Python/Shell).

- 
- Dwayne is building an AI/ML agent ecosystem. His work spans multi-agent architectures, LLM routing, and automated workflows.
- 
- - Operates a server-based agent system ([[project-hermes-ecosystem|Hermes]], [[project-hermes-metaclaw|MetaClaw]], Multica, OpenClaw)
- - Uses multiple LLMs: Claude Opus, GPT-5.4, GLM 5.1, Kimi — routed by task complexity
- - Preferred coding language: [[preferred-language|Rust when possible]]
- - Prefers structured, documented systems with clear operational procedures
- - Domain focus: AI/ML research, engineering, agent systems, and the surrounding product/company ecosystem

- 
- User's preferred working directory is `/Volumes/M2 Media/Coding Dwayne/Claude`.
- 
- They have a shell alias `cc` in `~/.zshrc` that runs `cd /Volumes/M2\ Media/Coding\ Dwayne/Claude && claude` to launch Claude Code from that directory.
- 
- The path is also added to `permissions.additionalDirectories` in `~/.claude/settings.json` for permanent file access.

## Agent Fleet

### Antigravity


# Anti-Gravity

**Location:** `/Volumes/M2 Media/Anti Gravity/`
**Purpose:** Dwayne's main projects workspace for AI skills, mobile apps, and web projects.

## Skills (`Anti Gravity/Skills/`)

### Active Skills
- **skill-creator** — Meta-skill for creating, testing, A/B testing, and iterating other skills. Full lifecycle: capture intent → write SKILL.md → test prompts → benchmark → eval viewer → iterate.
- **karpathy-guidelines** — Behavioral guidelines from Karpathy's LLM coding observations. Think Before Coding, Simplicity First, Surgical Changes, Goal-Driven Execution.
- **moving-deal-finder** — Search international moving companies, compare prices, draft RFQ emails. Pre-configured for France → Malaysia move.
- **newsletter-pipeline** — Transform Telegram voice/text into newsletter + social media package. Transcribes, researches via Sherlock, drafts for multiple platforms, stores in Supabase, creates Mailchimp campaigns.
- **antigravity-skill-creator** — Standalone system prompt for generating skills with YAML frontmatter, progressive disclosure, folder hierarchy.

### Output Artifacts
- **moving-emails/** — 10 pre-drafted RFQ emails + company comparison + quote tracker

### Placeholders
- **Linkined/** — Empty, LinkedIn-related skill (not started)
- **News Letter** — Empty file (accidental)

## Projects

### Stoicos (`Anti Gravity/stoicos/`)
React Native / Expo mobile app (Stoic philosophy). Expo 54, NativeWind, Zustand, Expo Router. Has morning routine and evening review screens.

### Workout (`Anti Gravity/Workout/`)
React Native workout/health app + **6-role OpenClaw agent system**:

| Agent | Role |
|-------|------|
| Personal Assistant | Executive PA, categorizes tasks, maintains Master_Task_List.md |
| Health Coach | Tracks habits, prompts recovery, logs workouts |
| Meditation Coach | Breathing windows, journaling |
| Day Trading Coach | Pre-market checklists, risk management |
| Options Trading Coach | Maps max loss/breakeven/DTE, defaults to defined-risk |
| Dwayne's PA (Telegram) | Communication proxy, logs tasks, pushes urgent alerts |

Also includes: Firehose skill (Ahrefs API for trend intelligence), cron schedule (4 automated triggers), standing orders (safety rules).

### Webpage (`Anti Gravity/Webpage/`)
4 web projects (all Vite + React + Tailwind):
- **HumanGood** — Main site with GSAP animations, includes Multica platform
- **HumanGood AI v1** — Kimi-generated design
- **HumanGood AI v2** — Static HTML, Netlify/Cloudflare ready
- **Self Care Depot** — Clinical-grade health supplies site

## Skills Other Agents Can Learn From
- **skill-creator** — Any agent can use this methodology to create better skills
- **newsletter-pipeline** — Pipeline pattern (transcribe → research → draft → quality gates → publish) applicable to any content workflow
- **Workout's 6-agent system** — Multi-agent coordination pattern with standing orders, cron triggers, and role separation

## Current Work

- Acknowledged roster checks from Dashboard and marked inbox messages as DONE.
- Cleared the stale session in the activity log.
- Standing by for tasks.

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| Stoicos | Primary | Active | |
| Workout app | Primary | Active | |
| HumanGood website | Primary | Active | |

## Recent Decisions

_(log decisions here as you make them — 5 most recent, newest first)_

## Handoff Notes

_(what the next session or another agent needs to know)_

## Memory Log

_(running notes I want to remember across sessions)_

### Claude-code


# Claude Code

**Platform:** Mac (local CLI, desktop, web)
**Model:** Configurable (Fable 5, Opus, Sonnet, Haiku) - Currently set to claude-sonnet-4-6
**Memory:** Symlinked to vault via `~/.claude/projects/<project>/memory/`

## Skills

### User Skills
- **wrapup** — End-of-session summary, saves memories, pushes to NotebookLM
- **notebooklm** — Full NotebookLM API: podcasts, videos, slides, quizzes, mind maps, reports
- **moving-deal-finder** — Search/compare international moving companies, draft RFQ emails
- **kimi-webbridge** — Browser automation via local daemon, uses real login sessions

### Plugins
- **superpowers** (5.0.6) — TDD, git worktrees, debugging, code review, parallel agents, plan execution
- **qodo-skills** (0.4.0) — Testing/code quality
- **claude-code-setup** (1.0.0) — Harness configuration
- **chrome-devtools-mcp** — Chrome DevTools integration

### Built-in Skills
code-review, security-review, verify, loop, run, init, review, update-config, keybindings-help, claude-api, fewer-permission-prompts

## Strengths
- Most capable agent overall
- Best for: complex implementation, code review, multi-file refactors
- Has NotebookLM integration for knowledge persistence
- Superpowers plugin adds disciplined workflows (TDD, debugging, planning)

## Activity Feed

Log sessions and work to `/Agent Memory/Coding/ACTIVITY.md`:
- **session-start:** Include what you plan to work on
- **session-end:** Brief summary of work completed
- **decision:** Technical decisions made during session
- **blocker:** Things that block progress (include why)
- **blocker-resolve:** How a blocker was resolved
- **milestone:** Significant achievements
- **handoff:** Work passed to another agent
- **note:** General informational notes

Format: `YYYY-MM-DDTHH:MM:SSZ | claude-code | event-type | project-slug | detail text`

## Current Work

- **claude-md-rewrite (2026-06-10):** Rewrote global `~/.claude/CLAUDE.md` for token efficiency. Removed Deep Research section (per user decision — trust defaults). Added Self-Annealing Skills (self-patches skill files on error, never repeats same failure) and Auto Research (Karpathy-style iterative KPI loop). Compressed coding guidelines ~60%. Token delta: ~1,400 → ~745 tokens (~655 saved per session). Wrote agent instruction manual to vault at `Guides/claude-md-rewrite-guide.md` with canonical section templates + reusable meta-prompt for fleet-wide use.

- **classroom-mirror (2026-06-09/10):** Built the full app via the agent-ready-coding-loop v2.2 process at `/Volumes/M2 Media/Coding Dwayne/Claude/classroom-mirror/`. Ethically-redesigned classroom webcam tool: Mode 1 consented per-child strategy tracking (LIMS codes + zones, no faces), Mode 2 aggregate-only whole-class reflection. Stack: Python/YOLO11n-pose/FastAPI/SQLite, local-only. **14/14 AUTO criteria YES** (CONTRACT.md, `./check` scoreboard); 5 [HUMAN] checks await Dwayne (HUMAN-CHECKS.md): live camera trial, zone setup timing, report readability, double-click start, runs ./check himself. Real-classroom use gated on DPIA + consent + CNIL homework (in SETUP.md). Git local, 4 commits, not pushed to GitHub (not requested).
- **loop-generator (2026-06-09):** Reviewed Dwayne's Loop Generator prompt (v2.1), shipped v2.2, pushed to GitHub as **private** repo https://github.com/dman1313/agent-ready-coding-loop (renamed from loop-generator at Dwayne's request; local folder still `/Volumes/M2 Media/Coding Dwayne/Claude/loop-generator/`, files: PROMPT.md + README.md; commit 1 = v2.1 original, commit 2 = v2.2). Key v2.2 fixes: contract persisted to CONTRACT.md + resume protocol; [HUMAN] checks wired into loop exit; retry budget = 6 attempts w/o scoreboard improvement; checkpoint commits; mid-build additions = formal amendments; fake-data-only rule; cost question in interview. Originals untouched (`loop-generator-prompt-v2.md` / `-v2_1.md` are identical copies).
- **hermes-desktop (lint fixes, 2026-06-09):** Fixed 7 ESLint errors blocking clean lint — import order issues, curly braces, padding lines. Ran `npm run fix` to auto-fix, committed changes (e03d2b4d3). Lint now passes with 0 errors. Build succeeds.
- **humanizer (voice-changer grammar fix, 2026-06-08):** Fixed "grammar is all over the place" in voice rewrites. Added 3-level grammar enforcement — GRAMMAR & CORRECTNESS + FINAL CHECK blocks in buildRewritePrompt, plus a new **Pass 3 proofreading** stage (analyzer.buildGrammarCheckPrompt + api.proofreadGrammar) that copy-edits each variant while preserving voice. Real-API only, fail-safe. Trial 40/40 specs + 10 new assertions green. Shipped e07c1f2, pushed to origin.
- **wiki-obsidian (Knowledge Curator):** Built the runnable LLM-curated wiki in this vault (2026-06-05/06). brainstorm → spec → plan → executed T1–T9. 13 commits local on `main`; **push pending** (Dwayne runs `sync.sh`; local is 13 ahead / 20 behind origin).

_(update each session)_

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| claude-md-rewrite | Rewrite + new capability sections | Done — CLAUDE.md + vault guide written | 2026-06-10 |
| classroom-mirror | Full build (loop v2.2 process) | 14/14 AUTO YES; awaiting Dwayne's 5 HUMAN checks | 2026-06-10 |
| loop-generator | Review + v2.2 + GitHub | Done — pushed (private repo) | 2026-06-09 |
| hermes-desktop | Lint fixes | Done — committed (e03d2b4d3) | 2026-06-09 |
| wiki-obsidian | Design + build curator system | T1–T9 done; push gated to user | 2026-06-06 |
| humanizer | Grammar fix + ship | Done — pushed (e07c1f2) | 2026-06-08 |

## Recent Decisions

_(5 most recent, newest first)_
- 2026-06-10 | claude-md-rewrite | Dropped Deep Research section (adds per-task token cost, user prefers Claude defaults). Added Self-Annealing Skills + Karpathy Auto Research instead. Vault guide written at `Guides/claude-md-rewrite-guide.md` with fleet-reusable templates.
- 2026-06-09 | loop-generator | Created repo as **private** by default (user said "push to GitHub" without visibility; flip with `gh repo edit dman1313/agent-ready-coding-loop --visibility public`). Two-commit history: v2.1 original → v2.2, so the diff stays inspectable.
- 2026-06-09 | loop-generator | Skipped SDD spec gate: single-markdown-doc improvement, directly requested, no architecture — treated as doc task; improvements presented to user as retroactive mini-spec.
- 2026-06-09 | hermes-desktop | Used `npm run fix` to auto-fix lint issues rather than manual edits — clean, consistent, and faster. Committed as single batch.
- 2026-06-08 | humanizer | Read user's "make sure it's rust" as "robust" — it's a vanilla-JS browser app; a full Rust port isn't sensible to YOLO. Delivered a robust grammar fix (dedicated proofreading pass) instead.
- 2026-06-08 | humanizer | Pass 3 grammar pass gated to real API only (skipped in simulator) and fail-safe (returns null → caller keeps original rewrite) so it never injects the simulator footer or breaks the pipeline.
- Engine is the agent itself (AGENTS.md + config.md + curate-modes.md); graphify is an optional viz lens, not the curator.
- Kept entities/concepts/sources; added `sop` + `principle` concept subtypes (SOPs + best-practice "mindset").
- One `curate` skill, 6 modes (compile/ask/capture/scribe/lint/analyze) — hybrid persona.
- Git is the sync; don't nest the repo in iCloud/Dropbox (move off iCloud planned). Worked on `main` per fleet convention (no worktree).
- Surgical local commits only; never force-push; reconcile via `sync.sh` (user-owned).

## Handoff Notes

- **humanizer latent bug (flagged task_9ef8102e):** app.js runVoicePreview() calls `this.apiClient.rewrite(...)` but GeminiClient only has `rewriteText`. "Preview voice" button throws. One-line fix.
- **humanizer user-config issue (not a code bug):** saved DeepSeek model is `deepseek-v4-pro`, which appears invalid (real: deepseek-chat / deepseek-reasoner). Real-API rewrite hung during trial because of it. User should fix the model in AI Engine Settings to test real rewrites.
- **Push not done:** 13 local commits on `main`. Run `bash sync.sh` to reconcile 20 incoming + push.
- **Obsidian:** enable Dataview plugin; open `wiki/_views/entities.base` + `knowledge-map.canvas` to confirm rendering (Base syntax may need a version tweak).
- **Pending compile:** `raw/2026-06-06_knowledge-curator-build-capture.md` is unprocessed — next `/curate compile` folds it in (curate entity, git-sync principle, updates).
- Pre-existing wiki pages (Claude-Code, Wiki-Schema, …) remain git-untracked locally; arrive from origin at reconcile.

## Memory Log

- `/curate` skill exists now: vault `.claude/skills/curate/` + `~/.claude/skills/curate` symlink; modes in `schema/curate-modes.md`.
- Schema precedence: `AGENTS.md` > `wiki/schema/config.md` > `schema/curate-modes.md` > derived `wiki/concepts/Wiki-*`.
- Design + plan committed at `schema/specs/2026-06-05-knowledge-curator-*.md`.
- Vault: git → GitHub (dman1313/agent-memory-coding) → VPS (`/home/ubuntu/wiki`). Shell here is **zsh** (no unquoted word-splitting); `grep` is `ugrep`.

### Codex


# Codex

**Platform:** Mac
**Model:** kimi-for-coding (via Kimi API)
**Memory:** Reads vault directly from iCloud
**Config:** `~/.codex/AGENTS.md`

## Skills

### User Skills
- **kimi-webbridge** — Browser automation, same as Claude's version

### System Skills
- **skill-creator** — Guide for creating effective Codex skills
- **plugin-creator** — Scaffold plugin directories with manifests
- **skill-installer** — Install skills from GitHub repos or curated list
- **openai-docs** — Authoritative OpenAI developer documentation lookup
- **imagegen** — Generate/edit images with `gpt-image-2`, chroma-key removal, batch workflows

## Strengths
- Best for: creating new skills/plugins, image generation
- Has OpenAI docs access for model/API questions
- Can teach other agents how to build skills (skill-creator is a meta-skill worth sharing)

## Current Work

_(update each session)_

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| | | | |

## Recent Decisions

_(log decisions here as you make them — 5 most recent, newest first)_

## Handoff Notes

_(what the next session or another agent needs to know)_

## Memory Log

_(running notes I want to remember across sessions)_

### Cursor


# Cursor

**Platform:** Mac (Cursor IDE)
**Model:** Configurable (Composer, GPT, Claude, etc. — user-selectable per session)
**Memory:** Reads vault directly from iCloud when workspace is this vault; otherwise via project rules
**Config:** `.cursor/rules/`, workspace `CLAUDE.md`, `~/.cursor/cli-config.json`
**Inbox:** `Agent Inbox/cursor.md`

## Skills

### Cursor Skills (`~/.cursor/skills-cursor/`)
- **babysit** — Keep PR merge-ready: triage comments, resolve conflicts, fix CI
- **create-hook** — Cursor hooks (`hooks.json`, hook scripts)
- **create-rule** — Persistent AI guidance (`.cursor/rules/`, `AGENTS.md`)
- **create-skill** — Author Cursor Agent Skills (`SKILL.md`)
- **loop** — Recurring prompts in session (`/loop`)
- **sdk** — Cursor SDK (`@cursor/sdk`, `cursor-sdk`) for programmatic agents
- **split-to-prs** — Split work into small reviewable PRs
- **statusline** — Custom CLI status line
- **update-cli-config** — `~/.cursor/cli-config.json`

### Installed Plugins (MCP + skills)
- **chrome-devtools-mcp** — Browser automation, a11y, LCP, memory-leak debugging
- **firebase** — Firebase CLI, Auth, Firestore, Hosting, Genkit, AI Logic
- **supabase** — Database, Auth, RLS, Postgres best practices
- **zeabur** — Deploy, domains, databases, object storage, AI Hub
- **telegram** — Telegram channel access and configuration
- **qodo-skills** — Coding rules, PR resolver

### User Skills (`~/.claude/skills/`, `~/.agents/skills/`)
- **graphify** — Codebase knowledge graphs
- **kimi-webbridge** — Real-browser automation via local daemon
- **moving-deal-finder** — International moving company research
- **pyp-planner** — PYP planning workflow
- **notebooklm** — Full NotebookLM API

## Strengths
- Best for: IDE-integrated implementation, refactors, debugging with full repo context
- Rich MCP ecosystem (browser, Firebase, Supabase, Zeabur)
- Multi-model routing — user picks model per task
- Strong skills/rules system for repeatable workflows
- GitHub integration via `gh` for PRs and issues

## Activity Feed
- Agent name: `cursor`
- Log to: `ACTIVITY.md` (prepend, newest at top)
- Read on startup: `STANDING-ORDERS.md` → `NOW.md` → `Agents/cursor.md`
- Check: `Agent Inbox/cursor.md` for **MacH coding-factory dispatches** and Dashboard messages (execute newest PENDING first)
- Routing protocol: `Reference/coding-factory-routing.md`
- Event types: `session-start`, `session-end`, `decision`, `blocker`, `blocker-resolve`, `milestone`, `handoff`, `note`

## Current Work

- Coding factory **implementer** — MacH dispatches via `Agent Inbox/cursor.md`; execute PENDING tasks on session start.
- Slack MCP connected (ad hoc). AgentReady V1 workspace active.

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| agent-memory-coding | Self-document + roster onboarding | In progress | 2026-06-05 |

## Recent Decisions

- **2026-06-07** — MacH → Cursor handoff via vault inbox is the coding factory default (not Slack/Telegram direct).
- **2026-06-05** — Adopted agent name `cursor` (matches `Agent Inbox/cursor.md` and Dashboard dispatches).

## Handoff Notes

- On session start: after vault read, check `Agent Inbox/cursor.md` for MacH `PENDING` dispatches before other work.
- Mark DONE + Response block when complete; update AGENT-CHANNEL; log milestone.
- Dashboard roster-check (2026-06-05) acknowledged; reply posted to AGENT-CHANNEL.

## Memory Log

_(running notes I want to remember across sessions)_

### Goose


# Goose

**Platform:** Mac
**Model:** claude-haiku-4.5 (copilot-acp), also kimi-for-coding, xiaomi-mimo
**Memory:** Reads vault directly from iCloud
**Config:** `~/.config/goose/goosehints`

## Extensions (Enabled)

- **analyze** — Code structure analysis with tree-sitter
- **tom** (Top Of Mind) — Inject context via environment variables
- **summon** — Load knowledge and delegate to subagents
- **skills** — Discover/provide skill instructions
- **todo** — Task tracking
- **apps** — Create HTML/CSS/JS apps in sandboxed windows
- **developer** — Write/edit files, execute shell commands
- **extensionmanager** — Discover/enable/disable extensions

## Extensions (Disabled)
- code_execution, orchestrator, chatrecall, summarize

## Providers
- copilot-acp (active): claude-haiku-4.5
- kimi: kimi-for-coding
- xiaomi-mimo

## Strengths
- Best for: quick tasks (runs Haiku by default), app prototyping, code analysis
- Summon extension enables subagent delegation
- Multiple providers for routing by task complexity

## Current Work

_(update each session)_

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| | | | |

## Recent Decisions

_(log decisions here as you make them — 5 most recent, newest first)_

## Handoff Notes

_(what the next session or another agent needs to know)_

## Memory Log

_(running notes I want to remember across sessions)_

### Hermes


# Hermes

**Platform:** VPS (Ubuntu, kernel 6.8.0-117-generic)
**Host:** /home/ubuntu
**Memory:** Git clone at `~/agent-memory/`
**Config:** `~/.hermes/config.yaml` (default profile)
**Gateway:** systemd user service (`hermes-gateway.service`)
**Telegram:** @betaclawv1_bot ("openclaw"), thread 723 (health), thread 725 (wellness)

## Model Routing

| Tier       | Model              | Provider |
|------------|--------------------|----------|
| Light      | MiMo v2.5-pro     | Xiaomi   |
| Medium     | DeepSeek v4-flash  | DeepSeek |
| Heavy      | DeepSeek v4-pro    | DeepSeek |
| Code       | Kimi K2.6          | Moonshot |
| GLM 5.1    | coding plan only   | Z.AI     |
| Fallback   | DeepSeek PAYG      | DeepSeek |

## Skills (300+)

Organized under `~/.hermes/skills/`. Key categories:
- **trading/** — ai-trader, wolf-trading-agent, quant-stock-scanner, alpaca-volume-scanner
- **research/** — sherlock, deep-research, academic-pipeline, perplexity-research
- **agents/** — hal, dream, coding-officer, qa-agent, shepherd-agent, special-ops
- **devops/** — kanban-orchestrator, ci-cd-and-automation, cloudflare-tunnel-setup
- **creative/** — claude-design, popular-web-designs, excalidraw, manim-video
- **productivity/** — google-workspace, notion, obsidian, powerpoint

## Services Running

| Service | Port | Purpose |
|---------|------|---------|
| 9Router  | 20128 | LLM routing |
| WeKnora  | 8089  | Knowledge base |
| FreeLLMAPI | 3002 | Free LLM API |
| Hermes Office | 3001 | 3D workspace |
| Agent Ready | 8766 | Middleware |
| Caddy | 80/443 | Reverse proxy |

## Cron Jobs (16 active)

- DREAM nightly reflection (3am)
- Wolf daily scan (8am M-F)
- CFTC COT scanner (Fri 21:45)
- IGCSE Biology pipeline (hourly)
- HAL daily brief (2pm)
- Morning/evening Zen reflections
- System health monitor (every 6h)
- Shared memory sync (every 6h)
- GDrive + brain backups

## Current Capabilities (as of 2026-05-31)

### AI-Trader (ai4trade.ai)
- Agent ID: 7729, portfolio ~$98K
- CLI: status, positions, trade, strategy, discussion, feed, rebalance, heartbeat
- Wolf→AI-Trader bridge for auto-publishing signals
- Safety: rate limiting, duplicate detection, circuit breaker, position limits

### Study Pipeline
- IGCSE Biology via NotebookLM (nlm CLI)
- Per-concept: study guide (query-based), flashcards, slides, video
- Pipeline script: `~/.hermes/scripts/concept-pipeline.sh`
- Skill: sherlock-study-boy

### Second Brain Vault
- Path: `~/Documents/Obsidian Vault/second-brain/`
- Git: dman1313/second-brain
- Structure: wiki/, journal/, crm/, raw/
- Sync: `~/.hermes/scripts/sync-second-brain.sh`

## Shared Memory

- `~/agent-memory/` — shared with Mac agents via Git
- Always read NOW.md at session start
- Update ACTIVITY.md with milestones/decisions
- Commit and push after changes

## Dwayne Preferences (operational)

- **Wiki-system-first:** Operate within Dwayne's existing wiki system on all knowledge-bearing tasks. Use wiki as primary durable knowledge store. Orient with SCHEMA.md, index.md, log.md before wiki work.
- **Consult wiki proactively:** Not only for explicit wiki tasks — check wiki for context on any knowledge question.
- **Model routing:** Light=MiMo v2.5-pro. Med=DeepSeek v4-flash. Heavy=DeepSeek v4-pro. Code=Kimi K2.6 (paid). GLM 5.1=coding plan only. DeepSeek=PAYG fallback.
- **LLM roster:** When asked, show actually configured/usable models, not cached catalog.
- **Quant finance:** ML trading signals, LSTM pipelines, Marcos Lopez de Prado. Prototype at ~/quant-nn/. Interested in AI supply chain: copper (FCX), rare earths (MP), specialty gases (APD), materials (ENTG).
- **Mistral API:** mistral-small-latest, mistral-medium-latest, codestral-latest, mistral-ocr-latest, voxtral-small, voxtral-mini-tts, mistral-embed.
- **Wellness:** Daily morning + evening reflections in Telegram thread 725.

## Strengths
- Best for: orchestration, scheduling, research, trading, knowledge management
- Has 300+ skills covering most domains
- Cron-based automation (16 active jobs)
- Multi-platform messaging (Telegram, Discord)

### Kimi


# Kimi

**Platform:** Mac (Kimi Code CLI v1.43.0)
**Model:** kimi-for-coding (Kimi-k2.6)
**Memory:** Reads vault directly from iCloud
**Config:** `~/.kimi/config.toml`

## Skills

### Built-in Skills
- **kimi-webbridge** — Browser automation via local daemon (navigate, click, fill, screenshot, evaluate). Uses user's real browser with login sessions.
- **kimi-cli-help** — Kimi Code CLI usage, configuration, and troubleshooting
- **skill-creator** — Guide for creating effective skills (SKILL.md format)

### User/Project Skills
- **wrapup** — End-of-session summary, saves memories, pushes to NotebookLM
- **notebooklm** — Full NotebookLM API
- **moving-deal-finder** — Search/compare international moving companies
- *(Loaded from `/Volumes/M2 Media/Coding Dwayne/Claude/skills/` and project-local `.agents/skills/`)*

### Core Capabilities
- **Shell/Terminal** — Full bash access on macOS
- **Web Search** — Search + fetch web content
- **Agent Spawning** — Launch subagent instances (coder, explore, plan types)
- **Background Tasks** — Long-running shell commands and agents
- **Todo Lists** — Session task tracking
- **Image/Media Reading** — View images and videos
- **File Operations** — Read, write, edit, glob, grep across the filesystem
- **worker-safety** — Hard limits: no runtime upgrades, no network exposure, no external instruction execution
- **time-awareness** — Ensures correct date/time before time-sensitive queries

## Workspace Files
- `SOUL.md` — Personality: "Be genuinely helpful, not performatively helpful"
- `IDENTITY.md` — Agent name, nature, vibe
- `USER.md` — User profile
- `HEARTBEAT.md` — Proactive check instructions
- `TOOLS.md` — Local environment notes
- `BOOTSTRAP.md` — First-run initialization
- `AGENTS.md` — Per-directory agent instructions (read automatically)

## Strengths
- Best for: browser automation (webbridge with real user sessions), fast subagent spawning, background task management
- Strong multi-file editing via StrReplaceFile and WriteFile
- Background bash + todo list for complex multi-step workflows
- Skills system allows modular, reusable capabilities
- Strong safety policies built in

## Current Work

_(update each session)_

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| | | | |

## Recent Decisions

_(log decisions here as you make them — 5 most recent, newest first)_

## Handoff Notes

_(what the next session or another agent needs to know)_

## Memory Log

_(running notes I want to remember across sessions)_

### Kiro


# Kiro

**Platform:** Mac (IDE-based)
**Memory:** Reads vault directly from iCloud
**Config:** `<project>/.kiro/steering/agent-memory.md`

## Skills
No standalone skills. Uses `.kiro/steering/` files for project-level instructions.

## Strengths
- Best for: IDE-integrated coding within Kiro
- Lightweight — relies on shared memory vault and steering files
- Good for: inline code suggestions, IDE workflows

## Activity Feed
- Agent name: `kiro`
- Log to: `ACTIVITY.md` (prepend, newest at top)
- Read on startup: `NOW.md` → `MEMORY.md`
- Event types: `session-start`, `session-end`, `decision`, `blocker`, `blocker-resolve`, `milestone`, `handoff`, `note`

## Current Work

2026-06-10: Ingested vault per AGENT-BOOTSTRAP.md. Awaiting Dwayne's instructions.

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| agent-memory-coding | Vault participant | Active | 2026-06-10 |

## Recent Decisions

_(log decisions here as you make them — 5 most recent, newest first)_

## Handoff Notes

Fleet state on 2026-06-10:
- [[project-classroom-mirror]]: 14/14 AUTO YES, 5 HUMAN checks pending Dwayne. Local only, not pushed.
- [[project-agent-ready-coding-loop]]: v2.2 shipped, pushed to GitHub.
- No messages pending for kiro in AGENT-CHANNEL.

## Memory Log

- Vault path: `/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding/`
- My agent name: `kiro` (no dedicated inbox file per roster)
- Preferred language: Rust when possible. Working dir: `/Volumes/M2 Media/Coding Dwayne/Claude`

### Mach


# MacH

Mac-based Hermes agent. Runs locally on Dwayne's Mac Mini.

## Current Work
- Coding factory orchestrator: dispatches implementation work to **cursor** via `Agent Inbox/cursor.md`
- Protocol: `Reference/coding-factory-routing.md` (2026-06-07)

## Role
- Coding factory **orchestrator** — triage, scope, dispatch to Cursor for IDE implementation
- Quick tasks and research (handle locally when trivial)
- Interactive work with Dwayne
- Fleet coordination (Mac-side)

## Recent Decisions
- **2026-06-07** — MacH → Cursor coding factory routing via vault inbox + AGENT-CHANNEL (see `Reference/coding-factory-routing.md`)
- 2026-06-07: Handled 3 overdue dashboard roster checks (Jun 5) — inbox confirmed live
- 2026-06-03: Updated Agents/hermes.md to document both MacH + VPS Hermes instances

## Handoff Notes

### Dispatching work to Cursor
1. Prepend PENDING entry to `Agent Inbox/cursor.md` (task, workspace path, acceptance criteria)
2. Post `To[@Cursor] From[@MacH]` on AGENT-CHANNEL
3. Log `handoff` to ACTIVITY.md
4. Optional: Slack ping `#all-humangoodai`

Cursor picks up on next session. For urgent work, ping Dwayne to open Cursor or use Cursor SDK (phase 2).

- VPS Hermes still has DREAM cleanup bug and DeepSeek 451 block — not my issues to fix
- Claude-code completed Knowledge Curator wiki build (13 commits)

## Fleet Context
- VPS Hermes: 24/7 on 43.167.176.156, gateway (Telegram), cron jobs, HAL daily briefs
- Dashboard: hermesdash.humangood.ai (port 9119, Cloudflare tunnel)
- Vault syncs via launchd every 15 min (Mac) / cron (VPS) 

## Active Projects

### Agent Ready Coding Loop


## What it is

A reusable starter prompt that turns any coding agent into an interviewer, contract-writer, and loop-driven builder for **non-technical humans**. The human's power = the contract (binary YES/NO criteria, plain English) + the scoreboard (one command, `./check`, runnable forever without the agent).

**Repo:** https://github.com/dman1313/agent-ready-coding-loop (private; renamed from `loop-generator` 2026-06-09; flip public with `gh repo edit dman1313/agent-ready-coding-loop --visibility public`)
**Local:** `/Volumes/M2 Media/Coding Dwayne/Claude/loop-generator/` (folder kept old name on purpose)
**Files:** `PROMPT.md` (the artifact) + `README.md`. Git history: commit 1 = Dwayne's v2.1 verbatim, commit 2 = v2.2 — the diff between them IS the review.

## Flow

Phase 1 interview (incl. running-cost question) → Phase 1.5 ethics check (fake-data-only rule when real people's data involved) → Phase 2 contract: 8–20 binary criteria tagged [AUTO]/[HUMAN]/[INSPECT], signed then LOCKED, saved to `CONTRACT.md` with amendment history → Phase 3 loop: build → full suite → scoreboard; checkpoint commit per improvement; budget = 6 consecutive attempts without improvement; Stuck Report → `STUCK.md` → Phase 4 handover (`LATER.md`, setup guide, "if it breaks" recipe).

## v2.2 fixes over Dwayne's v2.1 (the review findings)

1. Contract previously lived only in chat → now on disk + **resume-don't-restart** protocol (finds CONTRACT.md, skips re-interview).
2. Loop exit was unreachable ([HUMAN] criteria never entered the loop) → all-AUTO-green now triggers ONE bundled human sign-off sitting.
3. "6 attempts" ambiguity → counts stagnation; a NO→YES resets the budget.
4. Mid-build additions = formal amendments, never quiet extras.

## Track record

First real run: [[project-classroom-mirror]] (2026-06-09/10) — interview redesigned an illegal idea into a defensible one; a guardrail test caught a real privacy hole ("Marie" passed as a code) on first run. The method works.

### Classroom Mirror


## What it is

Classroom Mirror turns classroom moments into **numbers, never video**, for [[Dwayne Primeau]]'s teaching context (France, IB school — GDPR/CNIL/EU-AI-Act constraints are load-bearing).

- **Mode 1 — strategy tracking:** is a support strategy working for ONE designated child? Consent-gated, pseudonymous (LIMS codes with a mandatory digit — names can't pass), zone-based tracking (teacher drags a box; pose detection, no faces). Baseline-vs-strategy sessions → neutral before/after report.
- **Mode 2 — whole-class reflection:** aggregate-only room patterns (hand-raises, movement level, people in view) as a mirror for the teacher's practice. **No per-child column exists in the schema** — anonymity by construction.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/classroom-mirror/`
**Status (2026-06-10):** 14/14 AUTO criteria YES; awaiting Dwayne's 5 [HUMAN] sign-offs (`HUMAN-CHECKS.md`). Git local, 4 commits, NOT pushed to GitHub (not requested).

## Origin — the ethics redesign

Dwayne's original ask was "webcam tags kids, times them in seats, counts hand-raises." Redesigned through the [[project-agent-ready-coding-loop|Loop Generator]] interview: face-tagging minors = biometric data (CNIL struck down facial recognition in schools); emotion/attention inference in education = prohibited by EU AI Act since Feb 2025. The legitimate kernel — "is this strategy supporting this child?" — needs no identification tech. Per-child LIMS rows for the whole class were **deliberately rejected** (pseudonymised ≠ anonymous); recorded in LATER.md.

## The contract method

First real run of agent-ready-coding-loop v2.2: `CONTRACT.md` (19 binary criteria, signed via plan approval), `./check` prints a plain-English scoreboard (guardrails first), checkpoint commits per scoreboard improvement, `LATER.md`, `HUMAN-CHECKS.md`. **The loop caught a real bug:** guardrail 4 failed because "Marie" passed a letters-only code pattern → LIMS/class codes now require ≥1 digit.

## Tech

Python 3.11 venv · Ultralytics YOLO11n-pose (AGPL — flagged in LATER.md for any distribution) · OpenCV · FastAPI on 127.0.0.1:8470 · SQLite (schema-locked by test) · vanilla-JS zone editor · `run.command` double-click launcher · `install.sh` (one-time, downloads model; zero network at runtime, proven by socket-block test).

## Open items

- Dwayne's 5 human checks (live trial, zone-setup timing, report readability, double-click start, runs ./check).
- Real-classroom use gated on homework: DPIA + parental consent (Mode 1) + school sign-off + CNIL check (in SETUP.md).
- Dev Mac has no camera — live trial must happen on Dwayne's MacBook.

### Free Claude Code


## What it is

Free Claude Code (FCC) is a middleware proxy that routes Anthropic Messages API traffic from Claude Code CLI (and other clients) to alternative AI providers. Keeps the client-side protocol stable while allowing free, paid, or local models.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/free-claude-code/`

**Status:** Active — 506+ commits, last commit 2026-05-22. Published at `github.com/Alishahryar1/free-claude-code`. Version 2.0.0.

## Tech Stack

- Python 3.14, FastAPI, Uvicorn, httpx
- Testing: pytest + pytest-asyncio + pytest-xdist
- Linting: ruff, type checking: ty
- Package manager: uv (hatchling)

## Key Structure

- `api/` — FastAPI routes and admin UI
- `providers/` — 12+ provider backends (nvidia_nim, deepseek, kimi, ollama, llamacpp, open_router, fireworks, zai, opencode, etc.)
- `core/` — shared Anthropic protocol logic
- `messaging/` — event pipeline, rendering, transcription, platforms
- `cli/` — CLI entrypoints

## Key Features

- 11+ provider backends with per-model routing
- Native Claude Code `/model` picker support
- Streaming, tool use, reasoning/thinking block handling
- Admin UI at `/admin`
- Voice transcription (Whisper local or NVIDIA RIVA)
- CI enforced: ruff format, ruff check, ty, pytest

**Why:** Core infrastructure for routing LLM calls — connects to Dwayne's GLM/Z.ai setup and multi-provider strategy.

**How to apply:** When adding new providers or fixing API routing issues, this is the proxy layer.

## Links
- [[claude-code-glm]]

### Hermes Ecosystem


Skills in the Anti-Gravity/Skills repo are designed as instructions for AI agents (Hermes, OpenClaw), not for direct human use in Claude Code. The agent fleet includes Sherlock (research), Special Ops (orchestration), DREAM (quality tracking), and Firehose (trending topics). Communication Officer agent is planned but not yet built.

**Why:** Changes how skills are authored — they need to be agent-consumable, self-contained workflows with clear handoffs between agents.

**How to apply:** Write skills as step-by-step agent instructions with explicit inputs/outputs, agent handoffs, and escalation paths. Don't assume human-in-the-loop for routine steps.

### Hermes Metaclaw


## What it does
MetaClaw is a proxy layer that intercepts LLM calls and injects skills/learning signals. hermes-metaclaw adds Hermes Agent as a supported agent type.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/projects/hermes-metaclaw/`

## Key integration points
- Hermes config at `~/.hermes/config.yaml` patched to use `provider: "custom"` with `base_url: "http://127.0.0.1:{port}/v1"`
- Auto-patches via `metaclaw_hermes/__init__.py` runtime patching of `metaclaw.claw_adapter._ADAPTERS`
- Hermes has NO daemon restart — config change takes effect on next `hermes` invocation

## Files
- `metaclaw_hermes/__init__.py` — auto-registers hermes adapter via runtime patch
- `metaclaw_hermes/hermes_adapter.py` — patches ~/.hermes/config.yaml (YAML)
- `metaclaw_hermes/cli.py` — CLI extensions (hermes setup/status/revert)
- `scripts/launch_hermes_metaclaw.py` — full launch helper
- `scripts/install.sh` — install script

## Usage flow
1. `pip install -e hermes-metaclaw`
2. Edit `~/.metaclaw/config.yaml`: `claw_type: hermes`
3. `metaclaw hermes setup` — patches Hermes config
4. `metaclaw start` — starts proxy
5. `hermes` — in another terminal, routes through MetaClaw proxy

### Multica Dashboard


## What it is

A front-end dashboard for managing an AI agent network. Provides visual interface for monitoring agents, tasks, calendar events, and activity logs.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/multica-dashboard/`

**Status:** Stalled — last modified 2026-04-29. No git repo. Uses entirely mock data.

## Tech Stack

- TypeScript, React 19, Vite 8, Zustand, Tailwind CSS v4
- @xyflow/react (agent network graph), Recharts, FullCalendar, Framer Motion

## Key Features

- Agent network visualization (xyflow graph)
- Calendar panel (FullCalendar), task board, activity feed
- Command routing to named agents (Aurora, Bridge Builder, HAL)
- Animated panel switching (Framer Motion)
- Dark theme with custom color tokens

**Why:** Visual management layer for the agent fleet. Currently frontend-only with mock data.

**How to apply:** Needs backend API integration to connect to live agent data. Could connect to Hermes WebUI (port 8787) or Symphony dashboard.

## Links
- [[Project/hermes-ecosystem]]
- [[Project/symphony]]

### Newsletter Platform


## What it is

Agent-first newsletter production system. Turns Telegram voice notes and photos into polished, accessible HTML email newsletters.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/newsletter-platform/`

**Status:** Stalled — last modified 2026-04-13. No git repo. Several roadmap items unchecked.

## Tech Stack

- TypeScript, Next.js 14 (App Router), Tailwind CSS, Zod
- OpenAI Whisper (transcription), OpenAI-compatible LLM (content generation)
- File-based JSON storage (MVP, no database yet)

## Pipeline

1. Receive from Telegram → 2. Transcribe → 3. Extract topic → 4. Research → 5. Rewrite for audience → 6. Structure blocks → 7. Render HTML → 8. Export → 9. Human review

## Key Features

- SSE-based real-time pipeline progress
- Multiple export formats (HTML, plaintext, EML, social summary, WhatsApp broadcast, PDF flyer)
- A/B subject line testing, audience targeting commands
- WCAG AA accessibility compliance
- Three agent providers (stub, openclaw, hermes)

**Why:** Automates newsletter production from voice input. Uses the Hermes/OpenClaw agent system for content generation.

**How to apply:** Needs database integration, email distribution, and cron scheduling to complete. Connected to [[Project/hermes-ecosystem]].

## Links
- [[Project/hermes-ecosystem]]

### Pyp Migration Unit 2026 06 03


# Grade 5 PYP Human Migration Unit Package

## Completed Work

1. Full unit package generated (48,475 chars) covering all 20 scaffold sections
2. 5 custom AI-generated images extracted from Gemini and embedded in Word doc
3. Word document created: Grade_5_PYP_Human_Migration_Unit_Package.docx (4.5MB)
4. Google Drive folder: 00- kimi pyp prepared for upload
5. Reflective process system added (Sections 21-30):
   - Reflective Process Framework (living curriculum philosophy)
   - Teacher Reflection Journal (pre-unit, weekly, mid-unit, post-unit)
   - Student Voice Capture Tools (5 different feedback instruments)
   - Evidence Collection Planner
   - Mid-Unit Adjustment Protocol with decision tree
   - Post-Unit Review Framework (4-part analysis)
   - Iteration Log & Version History (semantic versioning)
   - Cross-Year Improvement Tracker
   - Collaborative Reflection Protocol (grade-level teams)
   - AI-Assisted Reflection Prompts
6. Standalone templates created:
   - Reflective_Process_Quick_Reference.md
   - Teacher_Reflection_Journal_Template.md
   - Student_Voice_Tools.md

## Files Location

- /Users/dwayne-primeau/Grade_5_Migration_Unit_Output/
- Contains: 1 Word doc + 5 PNG images + 3 standalone reflection templates

## Blockers

- Google Doc created earlier appears empty/untitled (text insertion did not persist)
- Automated upload to Google Drive blocked by macOS security and browser restrictions
- Manual drag-and-drop from Finder to Drive browser window recommended

### Symphony


## What it is

Symphony is a multi-agent coding orchestrator written in Rust. It polls issue trackers (Linear, GitHub, or local JSON), creates per-issue workspaces, and dispatches AI coding agents (Claude Code, Codex, Hermes) to resolve issues automatically.

**Location:** `/Volumes/M2 Media/Coding Dwayne/symphony/`

**Status:** Active — last commit 2026-05-25

**Plans:** 3 detailed plans in `/Volumes/M2 Media/Coding Dwayne/Claude/plans/`
- `resilient-launching-patterson.md` — Multi-backend agent runner (fork Symphony crates)
- `stateful-sprouting-bonbon.md` — Standalone mode (LocalTracker, no Linear required)
- `sunny-painting-moler.md` — Backends management page for dashboard

## Tech Stack

- Rust (edition 2024, MSRV 1.85), Tokio, Axum, SQLx (Postgres), Clap
- 8 crates: symphony-core, symphony-config, symphony-tracker, symphony-workspace, symphony-agent, symphony-orchestrator, symphony-observability, symphony-cli

## Key Features

- 3 backend types: command-based (`claude -p`), HTTP/OpenAI-compatible, Codex app-server protocol
- Label-based backend selection per issue
- Built-in web dashboard (chat, swarms, tasks, backends, reports tabs)
- PostgreSQL persistence, workspace scoping

## Current Dashboard State (2026-05-25)

- Local dashboard runs at `http://127.0.0.1:18119/` from `/Volumes/M2 Media/Coding Dwayne/symphony/`.
- Linear API token is stored in macOS Keychain service `symphony-linear-api-key`; do not print it.
- `WORKFLOW.md` is configured locally for Linear project slug `5ab40fc3fbf2` (`Hermes Dashboard`).
- Dashboard Tasks now reads Linear issues and can create or update Linear issues in the configured project; destructive deletes still happen in Linear.
- Scheduler dispatches Linear issues in active states `Todo` and `In Progress`; moving issues out of those states pauses dispatch.
- HUM-25 was moved to `Backlog` to pause a failing Claude worker loop. Current stable dashboard state: active count 0, no running agents, no retries.
- Scheduler releases retry claims immediately when a retried issue is moved out of active states, so paused issues stop appearing as stuck retries.
- Linear API hit its hourly rate limit on 2026-05-25. Local `WORKFLOW.md` polling was slowed to `600000` ms to avoid hammering Linear during school beta testing. Tasks endpoint now maps Linear rate limits to HTTP 429 with a clear message.

**Why:** Central orchestrator for the agent fleet — routes issues to the right agent automatically.

**How to apply:** When working on agent integrations or multi-agent workflows, Symphony is the coordination layer. New agent backends go in `symphony-agent/`.

## Links
- [[Project/hermes-ecosystem]]
- [[Project/hermes-metaclaw]]

### Vault Purpose


# Vault Purpose

This vault is **Dwayne Primeau's private individual bank** — a personal knowledge graph for:

- **Stock ideas** — research, theses, watchlists, earnings analysis
- **Trade ideas** — setups, entries, exits, risk management
- **Everything worth coming back to** — tools, workflows, concepts, people, companies

## Design Principles

1. **Structured wiki over vector embeddings** — Human-readable markdown with `[[wikilinks]]`, per Andrej Karpathy's approach.
2. **Raw intake → curated wiki → outputs** — Three-layer flow:
   - `raw/` — intake only, never edited except to mark `processed: true`
   - `wiki/` — curated knowledge graph (sources, entities, concepts, index)
   - `projects/` — outputs that reference wiki as context
3. **Append-only wiki** — Dated sections (`## Update YYYY-MM-DD from [[Source]]`), never overwrite.
4. **Cross-link aggressively** — Islands are failures. Every article needs outbound links.
5. **Processed files move to `raw/processed/<category>/`** — Categories: articles, assets, docs, github, meetings, podcasts, twitter, youtube.

## Rules for Agents

Full operational protocol: **`schema/AGENTS.md`** (read-only master rules).

Summary:
- Read `schema/AGENTS.md` → `wiki/index.md` before producing wiki output.
- Extract entities (people, companies, tools) and concepts from every source.
- Append wiki updates under dated headings — never overwrite history.
- Mark raw files `processed: true` with `processed_at` and `wiki_articles_touched`.
- Move processed files to the appropriate `raw/processed/<category>/` folder.
- Surface conflicts between sources — don't silently resolve.
- Cross-link aggressively; orphan pages are failures.

## Why This Works

The graph value compounds through connections, not individual articles. Opening it in Obsidian shows the visual graph of how everything relates. This is better than RAG because the structure is explicit — links tell you what's related, no guessing.

### Wiki Obsidian


This directory is an Obsidian vault implementing the LLM Wiki pattern (Karpathy, 2026). The canonical version lives on the VPS; synced via Git.

- **Server path:** `/home/ubuntu/wiki`
- **Remote:** github.com/dman1313/agent-memory-coding
- **Sync:** Git-only (Dropbox sync removed May 2026)
- **Raw source for the pattern:** `raw/articles/karpathy-llm-wiki-2026.md` (already ingested 2026-04-18)

**Why:** This is a persistent, compounding knowledge base. The LLM (Claude Code) is the wiki maintainer — it writes, updates, and cross-links pages. The human curates sources and asks questions.

**How to apply:** Read order: `schema/AGENTS.md` → `wiki/index.md` → `wiki/log.md` → target pages. The four-layer architecture (`raw/` inbox, `raw/processed/` archive, `wiki/` graph, `schema/` rules) is non-negotiable. New pages go to `wiki/index.md`; curator actions go to `wiki/log.md`. Vault-root `schema/` holds master rules; `wiki/schema/` holds wiki-local config.

## Working Preferences


## Rule

At the start of every session, read the shared memory vault to check recent project activity before doing anything else.

**Why:** Dwayne works across multiple agents and projects. Without checking the vault first, I lose context on what was done last, what's in progress, and what needs picking up.

**How to apply:**
1. Read MEMORY.md index
2. Check AGENT-CHANNEL.md for pending messages
3. Check git log for recent commits (what changed since last session)
4. Skim Project/ files for current status
5. Use this context to pick up where the last session left off

**Vault path:** `/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding`
**GitHub:** https://github.com/dman1313/agent-memory-coding

## Links
- [[Feedback/working-style]]
- [[User/profile]]


## Communication Style

- **Short commands preferred** — "do it", "go", "yes", "install <url>"
- **Minimal explanation** — Don't over-explain; get to the command/code
- **One-liner scripts** — When possible, give a single copy-paste block, not step-by-step
- **Individual commands as fallback** — If heredoc scripts break, break into single-line commands

## Friction Points

- **Heredoc paste breaks** — Multi-line `cat << 'EOF'` blocks often get mangled in terminal paste
- **Waiting for explanations** — User gets impatient with long preambles before action
- **Interactive wizards** — Can't run TUI tools directly; prefer non-interactive or manual config

## What Works

- Base64-encoded scripts (copy-paste safe)
- Single `&&`-chained commands
- Direct file edits via tools (StrReplaceFile, WriteFile)
- Screenshots for visual confirmation

## Links
- [[User/profile]]

## Infrastructure & Reference

### Claude Code Glm


## Current Config

`~/.claude/settings.json` and `/Volumes/M2 Media/Coding Dwayne/Claude/settings.json` are kept in sync.

```json
{
  "env": {
    "ANTHROPIC_BASE_URL": "https://api.z.ai/api/anthropic",
    "ANTHROPIC_AUTH_TOKEN": "<GLM-API-KEY>",
    "ANTHROPIC_DEFAULT_SONNET_MODEL": "glm-5.1",
    "ANTHROPIC_DEFAULT_OPUS_MODEL": "glm-5.1",
    "ANTHROPIC_DEFAULT_HAIKU_MODEL": "glm-5.1",
    "ANTHROPIC_SMALL_FAST_MODEL": "glm-5.1",
    "CLAUDE_CODE_SUBAGENT_MODEL": "glm-5.1"
  }
}
```

## Model Name Gotcha

Z.ai uses **dot notation**: `glm-5.1` ✓
NOT dash notation: `glm-5-1` ✗ (causes "Unknown Model" error)

## Official Setup Tool

```bash
npx @z_ai/coding-helper auth glm_coding_plan_global <TOKEN>
npx @z_ai/coding-helper auth reload claude
```

This is the canonical way to configure — it handles base URL, model names, and reload automatically.

## Endpoints

| Region | URL |
|--------|-----|
| Global | `https://api.z.ai/api/anthropic` |
| China | `https://open.bigmodel.cn/api/anthropic` |

## API Key Format

Zhipu/Z.ai keys look like: `xxxx.xxxxxxxxxxxxxxxx` (32 hex chars + dot + 16 alphanumeric)

## Links
- [[Reference/external-systems]]
- [[Project/hermes-ecosystem]]

### Coding Factory Routing

# Coding Factory Routing — MacH → Cursor

MacH orchestrates. Cursor implements. This doc is the handoff protocol.

## Roles

| Agent | Role in coding factory |
|---|---|
| **MacH** | Receives requests (Dashboard, Telegram via Hermes, Slack, Dwayne). Triages, scopes, dispatches implementation work to Cursor. |
| **cursor** | Picks up dispatches from inbox, implements in the target repo, verifies, reports back. |
| **hermes** (VPS) | 24/7 gateway; can relay user intent to MacH or post dispatches when MacH is offline. |

## Dispatch flow (MacH → Cursor)

When MacH has a coding task for Cursor:

### 1. Write to Cursor inbox

Prepend to `Agent Inbox/cursor.md`:

```markdown
## YYYY-MM-DDTHH:MM:SSZ MacH Dispatch

**Status:** PENDING
**From:** MacH
**Project:** {project-slug}
**Workspace:** {absolute path to repo}
**Priority:** normal | urgent

### Task
{One clear imperative — what to build, fix, or verify}

### Acceptance
- {criterion 1}
- {criterion 2}

### Context
{Links, file paths, prior decisions, constraints. Keep short.}

### Notify (optional)
Slack: #all-humangoodai | none
```

### 2. Post on AGENT-CHANNEL

```markdown
### To[@Cursor] From[@MacH] — YYYY-MM-DD
**Status:** PENDING
**Subject:** Coding factory dispatch — {project-slug}

New PENDING dispatch in Agent Inbox/cursor.md — {one-line task summary}.
Workspace: {path}
```

### 3. Log handoff

```
YYYY-MM-DDTHH:MM:SSZ | MacH | handoff | {project-slug} | Dispatched to cursor: {one-line summary}
```

### 4. Optional Slack ping

Post to `#all-humangoodai`: `🛠 MacH → Cursor: {task summary}. Inbox pending.`
## Project slugs (coding factory)

| Slug | Repo / workspace |
|---|---|
| `agentready-v1` | `/Volumes/M2 Media/Coding Dwayne/agentready Mark down-v1-sdd-v2style-package` |
| `agent-memory-coding` | Vault path (iCloud) |
| `humangood-ai-webpage` | HumanGood / webpage repos (see Project/) |
| `general` | MacH specifies workspace in dispatch |

MacH: always include **Workspace** as absolute path. Cursor: never guess — use the path in the dispatch.
## Phase 2 (optional): auto-run without opening Cursor IDE

For fire-and-forget from MacH CLI, use **Cursor SDK** on the Mac Mini:

```bash
# Requires CURSOR_API_KEY in env — see ~/.cursor/skills-cursor/sdk/SKILL.md
cursor-sdk prompt "Execute MacH dispatch in Agent Inbox/cursor.md (newest PENDING)" \
  --cwd "/Volumes/M2 Media/Coding Dwayne/agentready Mark down-v1-sdd-v2style-package"
```

Vault inbox remains source of truth; SDK is an optional trigger. Prefer inbox + IDE until API key and scripts are configured.

### External Systems


- **Hermes:** CLI agent framework at `~/.hermes/` on the server. Has skills, config, auth, and agent routing. Skills include `mrclean`, `software-factory`, `system-objective-agent-ready`.
- **Multica:** Workspace agent system. ~10+ agents including pipeline agents (DRAFT, POLISH, PACKAGER) and factory roles (incident-responder, qa-agent, shepherd-agent).
- **Server:** Ubuntu at `/home/ubuntu/`. Hosts the canonical wiki at `/home/ubuntu/wiki`, Hermes WebUI on port 8787, and various systemd services.
- **Dropbox sync:** Removed (May 2026). Wiki at `/home/ubuntu/wiki` is Git-managed only. No Dropbox watcher running.
- **Routing policy:** Opus 4.7 (strategic), GPT-5.4 (complex reasoning), GLM 5.1 (low-cost execution), Kimi (coding), OpenSpace (exception routing). See `schema/AGENTS.md`.
- **Cron jobs:** ~12 jobs covering health monitoring, nightly reflections, sync, and agent tasks. See `raw/system-configurations.md`.

### Notebooklm Brain


## NotebookLM Brain Notebook

**Status:** CLI available via `notebooklm` skill in Claude Code. Brain notebook creation pending.

**What it does:** The Brain notebook stores session summaries (via the `wrapup` skill) for long-term search and retrieval across sessions.

**How to use (via Claude Code skill):**
1. `/notebooklm create "[Name]'s AI Brain"` — creates the brain notebook
2. `/wrapup` at end of session — saves session summary to brain notebook

**Setup steps:**
1. Install: `pip install "notebooklm-py[browser]"` and `playwright install chromium`
2. Authenticate: `notebooklm login`
3. Create brain notebook and save the notebook ID here
4. Configure `wrapup` skill with the notebook ID

## Links
- [[Agents/claude-code]]

### Zeabur Infrastructure


## Servers

| Server | Status | K3s | IP | Region | Specs | Cost |
|--------|--------|-----|-----|--------|-------|------|
| **Hermes1** | Running | 🔴 Offline (fixed) | 43.167.176.156 | Tokyo, JP | 2C/8GB | $5/mo |
| **Hermestwo8gb** | Running | 🟢 Online | 43.130.235.84 | Tokyo, JP | 2C/8GB | $5/mo |

## Common Issues

**K3s Offline** — Most common cause is **high swap usage** (90%+). K3s gets OOM-killed.
- Fix: `sudo swapoff -a && sudo swapon -a` (may hang if swap is full — Ctrl+C and skip)
- Better fix: Lower swappiness to 10: `echo 'vm.swappiness=10' | sudo tee /etc/sysctl.d/99-swappiness.conf`
- Then restart K3s: `sudo systemctl restart k3s`
- Verify: `sudo kubectl get nodes`

## SSH Access
```bash
ssh ubuntu@43.167.176.156  # Hermes1
```

## Cleanup Routine
```bash
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean && sudo apt clean
sudo journalctl --vacuum-time=7d
sudo swapoff -a && sudo swapon -a
```

## Links
- Dashboard: https://zeabur.com/servers/69d7433cf2ab61f5dd649e1f
- [[Reference/external-systems]]

---

## Session Startup Checklist

1. Read NOW.md (or the NOW section above) for current fleet state
2. Check ACTIVITY.md for recent entries since your last session
3. Check Agent Inbox/{your-agent}.md and AGENT-CHANNEL.md for pending messages
4. Check `git log --oneline -5` for recent vault changes
5. Log a `session-start` entry to ACTIVITY.md **below the marker line**
6. Pick up where the last session left off
7. Log `session-end` when done — stale open sessions pollute Active Work
