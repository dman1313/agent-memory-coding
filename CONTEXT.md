# Agent Context

> Auto-generated from individual memory files. Do not edit directly — edit the source files and re-run build-context.sh.

---

# NOW — Current State

_Generated: 2026-06-15T01:45:30Z_

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
- **MacH**: 4 start(s) / 1 end(s)
- **claude-code**: 5 start(s) / 3 end(s) · 1 auto-closed by janitor
- **hermes**: 3 start(s) / 2 end(s) · 1 auto-closed by janitor

## Pending Inboxes
- **claude**: Roster check claude: inbox is live.
- **codex**: Roster check codex: inbox is live. ⚠ pending >7d
- **hermes-mac**: Roster check: please acknowledge that hermes-mac inbox is live.
- **hermes-vps**: Roster check hermes-vps: inbox is live.

## Dashboard Messages (48h)
_(none)_

## Blockers
- **hermes · provider-routing**: DeepSeek/xiaomi provider blocked — HTTP 451 cross-border isolation errors for 24h+, cron jobs silently failing _(2026-06-05T12:01:19Z)_

## Recent Activity (48h)
- 2026-06-13T08:05:00Z | **hermes** · agent-memory · session-end | HAL daily brief Jun 13 completed. GREEN health, all services up. IGCSE pipeline (T-0003) still failing 353+ runs. All agents IDLE. api_server retry + scrapling MCP still spamming logs.
- 2026-06-13T06:05:00Z | **hermes** · agent-memory · session-start | HAL daily brief (Saturday). Checking system health, DREAM overnight, fleet state, IGCSE pipeline.

## Recent Decisions (7d)
- 2026-06-11T13:24:00Z | **hyperagent** · agent-memory | Spec amendment 2 per Dwayne: identity-first resume flow (I'm MacH — what was I working on? Read the content, start from there; two file reads: Agents/{name}.md -> Project/<slug>.md) + research-once rule M8 (check vault before researching: resume page -> wiki/index -> Reference/ -> DECISIONS; write findings back; ACTIVITY note names where). The vault is the central place for everyone. Spec updated in place (M2/M7/M8, criteria 8).
- 2026-06-11T13:06:00Z | **hyperagent** · agent-memory | Spec approved by Dwayne w/ amendment: this vault is dual-purpose — fleet coordination layer AND Dwaynes second brain. Fleet collects information for/with Dwayne here, and always writes state back keyed by project name: every active project keeps a resume point at Project/<slug>.md (Status now / Next steps / Where things live / Open tasks), updated when an agent stops, read first when an agent resumes. Corrects nuance of my 2026-06-11 audit note re: vault-purpose.md — it wasnt wrong, it was half the story.
- 2026-06-10T22:55:00Z | **hermes** · dream | Giving DREAM one more night with the session_search fix. If
- 2026-06-10T21:50:00Z | **hermes** · agent-memory | Added Shared Wiki Vault protocol (section 22b) to SOUL.md — vault is now mandatory at every session start/end. No more ghost sessions.
- 2026-06-10T18:25:00Z | **MacH** · agent-memory | Confirmed the iCloud vault path is the source of truth for the fleet (launchd sync, all other Mac agents, Hermes pull target). The local ~/agent-memory/ working tree is a stale personal copy that diverged ~24h ago. Will write to iCloud going forward and flag the divergence to Dwayne.
- 2026-06-10T05:34:27Z | **claude-code** · wiki-obsidian | Adopted 4 research recommendations (ADR 0002): multi-agent write contract, schema-alignment at ingest, pre-write self-lint, page lifecycle states. Hybrid search deferred to ~300 pages. Installed com.dwayne.vault-sync launchd job (15 min).
- 2026-06-09T22:05:00Z | **claude-code** · classroom-mirror | Contract signed (19 criteria): webcam classroom tool redesigned ethically — Mode 1 consented LIMS-coded child via zones, Mode 2 aggregate-only; no faces, no video stored, no emotion inference, local-only Mac. First real run of agent-ready-coding-loop v2.2

## Recent Milestones (7d)
- 2026-06-11T22:25:00Z | **hyperagent** · agent-memory | T-0012 done (fitness iteration 4, L4): claim nudges live in vault_keeper.js — P1 unclaimed >48h gets one rate-limited inbox reminder (max 2, then escalate to Dwayne). Fixture-verified. Four levers shipped today: search, session hygiene, resume coverage, claim nudges. Trend: Reference/vault-fitness.md.
- 2026-06-11T21:55:00Z | **hyperagent** · agent-memory | T-0011 done (fitness iteration 3, L3): resume coverage 2/14 -> 14/14. Definition fixed (real project = >=3 entries/14d; 18 sprawl slugs tracked); 11 resume pages auto-generated from each
- 2026-06-11T21:20:00Z | **hyperagent** · agent-memory | T-0010 done (fitness iteration 2, lever L2): NOW.md gains Session Hygiene (7d) naming agents with unpaired sessions / janitor auto-closes; AGENT-BOOTSTRAP rules updated. Baseline 50% pairing -> target 90%; weekly trend in Reference/vault-fitness.md. Next lever: L3. Replica-verified, all NOW sections regress clean.
- 2026-06-11T20:46:00Z | **hyperagent** · wiki-obsidian | T-0009 done: vault search shipped — project-graphs/wiki/search.html, 100 docs indexed (wiki 71 + tasks 9 + projects 13 + decisions 7), self-contained w/ ranked excerpts, paths, type filters. Fitness-loop iteration 1 complete; next lever L2 (session-end compliance). Trend: Reference/vault-fitness.md.
- 2026-06-11T19:16:00Z | **hyperagent** · agent-memory | Fitness baseline: 71 wiki pages, 7.7 links/page, resume coverage 4/32 (slug sprawl — L3), session ritual 22 starts/11 ends in 7d (50% — L2), board adoption 0 non-keeper claims, raw+stamps clean, NOW 51m. Full table: Reference/vault-fitness.md.
- 2026-06-11T14:44:00Z | **hyperagent** · agent-memory | BOARD LIVE: Plan/README.md is the contract; NOW.md now shows the board. At your next session start: read your Project/<slug>.md resume page, check the board, claim before you build, write back what you learn.
- 2026-06-11T14:36:00Z | **hyperagent** · wiki-obsidian | T-0007 done: retro-stamped 42 archived raw files (processed: true + processed_at + note) — re-digestion landmine closed; janitor stamp-missing count 42 -> 0. First task through the full board lifecycle (todo -> claimed -> doing -> done).
- 2026-06-11T13:26:00Z | **hyperagent** · agent-memory | plan.md + tasks.md written for fleet-plan-board (12 tasks): board renderer + janitor inside build-context.sh (sandbox-verifiable), channel archiver, resume points, rules updates, 6 seeded ops tasks (2 MacH, 4 hermes). Suspicion logged: NOW.md ~15h stale despite sync.sh design — launchd vault-sync job may be down again; seeded as T-0002. Implementation next.
- 2026-06-11T13:08:00Z | **hyperagent** · agent-memory | Fleet Plan Board spec committed (Status: Approved): Plan/ task board w/ claim protocol + single-writer rule, Project/<slug>.md resume points, NOW.md board section, janitor hygiene riding the existing 15-min sync, API-agent write path, seeded launch tasks. Spec: sdd/specs/2026-06-11-fleet-plan-board/spec.md. Next per SDD: plan.md + tasks.md.
- 2026-06-10T19:10:00Z | **MacH** · taste-skill | Installed 6 of 13 taste-skill skills to ~/.hermes/skills/creative/taste-skill/ (default + redesign + soft + minimalist + brutalist + output). Skipped gpt-taste (dup), image-to-code (wrong workflow), imagegen-*/brandkit (we use FAL), stitch (Google only), v1 (default to v2). Noted overlap with frontend-ui-engineering (both will load; taste-skill wins on landing/portfolio tasks) and saas-landing-page-razzle-dazzle (orthogonal). Vault pointer at Guides/taste-skill-availability.md so fleet can see
- 2026-06-10T05:27:03Z | **claude-code** · wiki-obsidian | Restored schema/+sdd/+Reference/+skills to root (accidental move into raw/); reconciled 117 dirty files; found launchd sync job MISSING; queried NotebookLM wiki-research notebook — answers saved to raw/notebooklm-wiki-research-2026-06-10.md (5 CHALLENGEs incl. flat-file mutation danger, hybrid search)
- 2026-06-10T01:35:00Z | **kiro** · agent-memory-coding | Wiki compile complete: Domain 2 (Human Good/AI) fully extracted; Domain 1 (school ~75 transcripts) batched into 3 period sources; Domain 3 (misc) 4 sources. raw/ inbox clean — only operational subdirs remain.

## Last Seen (fleet)
- **hermes**: 2026-06-13T08:05:00Z — session-end: HAL daily brief Jun 13 completed. GREEN health, all services up. IGCSE pipeline (T-0003) still failing 353+ runs. All agents IDLE. api_server retry + scrapling MCP still spamming logs.
- **claude-code**: 2026-06-12T17:02:43Z — session-end: (auto-closed by janitor: open since 2026-06-10T17:00:00Z, no session-end >48h)
- **hyperagent**: 2026-06-12T07:58:00Z — note: Closed T-0004 on the board (hermes resolved DREAM bug at 06:00Z, logged milestone + blocker-resolve to ACTIVITY, said board updated in session-end but did not edit the task card — hyperagent closing from ACTIVITY evidence per vault custodian role).
- **kimi**: 2026-06-11T14:11:28Z — session-end: (auto-closed by janitor: open since 2026-06-04T12:12:18Z, no session-end >48h)
- **cursor**: 2026-06-11T14:11:28Z — session-end: (auto-closed by janitor: open since 2026-06-05T20:30:00Z, no session-end >48h)
- **MacH**: 2026-06-10T19:25:00Z — blocker-resolve: Dwayne challenged my first-pass skip list. Re-evaluated: 6 of 7 skips had weak reasons (called gpt-taste a dup, missed that imagegen-* are prompt direction for any image-gen tool, misread stitch as Stitch-only). Installed all 6 plus updated Guides/taste-skill-availability.md with a correction log. Only taste-skill-v1 stays out (correct reason). Total MacH install: 12 of 13 skills, 6,444 SKILL.md lines. Patched: ~/.hermes/skills/creative/taste-skill/* (6 new subdirs) and the vault pointer.
- **kiro**: 2026-06-10T01:35:00Z — session-end: Done: Full wiki compile — 93 raw files → 20 entities, 13 concepts, 19 sources. Raw inbox cleared; files in processed/meetings/ (85), articles/ (3), docs/ (2). index.md + log.md updated.
- **antigravity**: 2026-06-06T05:23:30Z — session-end: Done: Acknowledged roster checks on Dashboard, cleared pending inbox/messages, closed stale session, and rebuilt vault context.
- **codex**: 2026-06-05T19:10:25Z — milestone: Adjusted result layout so result text and image stay side-by-side on tablet/desktop widths while stacking on mobile.

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

**Platform:** VPS (Ubuntu, kernel 6.8.0-124-generic)
**Host:** /home/ubuntu
**Memory:** Git clone at `~/agent-memory/`
**Config:** `~/.hermes/config.yaml` (default profile)
**Gateway:** systemd user service (`hermes-gateway.service`)
**Telegram:** @betaclawv1_bot ("openclaw"), thread 723 (health), thread 725 (wellness)
**Dashboard:** hermesdash.humangood.ai (Natural theme), auth proxy on :9121
**HD1 (3D):** hd1.humangood.ai (Hermes Office 3D), systemd: hermes-office, hermes-office-adapter

## Model Routing

| Tier       | Model              | Provider   |
|------------|--------------------|------------|
| Light      | MiMo v2.5-pro     | Xiaomi     |
| Medium     | DeepSeek v4-flash  | DeepSeek   |
| Heavy      | DeepSeek v4-pro    | DeepSeek   |
| Code       | Coding Officer     | Kimi CLI primary, Claude Code backup |
| GLM 5.1    | coding plan only   | Z.AI       |
| Fallback   | DeepSeek PAYG      | DeepSeek   |

## Skills (300+)

Organized under `~/.hermes/skills/`. Key categories:
- **trading/** — ai-trader, wolf-trading-agent, quant-stock-scanner, alpaca-volume-scanner, commodity-market-intelligence
- **research/** — sherlock, deep-research, academic-pipeline, perplexity-research
- **agents/** — hal, dream, coding-officer, qa-agent, shepherd-agent, special-ops, mrclean
- **devops/** — kanban-orchestrator, ci-cd-and-automation, cloudflare-tunnel-setup
- **creative/** — claude-design, popular-web-designs, excalidraw, baoyu-*, taste-skill (13 sub-skills)
- **productivity/** — google-workspace, notion, obsidian, powerpoint, master-newsletter
- **autonomous-ai-agents/** — claude-code, codex, kimi-cli, opencode, hermes-agent, take-control

## Services Running

| Service | Port | Purpose |
|---------|------|---------|
| 9Router  | 20128 | LLM routing |
| WeKnora  | 8089  | Knowledge base |
| FreeLLMAPI | 3002 | Free LLM API |
| Hermes Office | 3001 | 3D workspace |
| Agent Ready | 8766 | Middleware |
| Caddy | 80/443 | Reverse proxy |

## Cron Jobs (16+ active)

- DREAM nightly reflection (3am)
- Wolf daily scan (8am M-F)
- CFTC COT scanner (Fri 21:45)
- IGCSE Biology pipeline (hourly)
- HAL daily brief (8am Paris)
- Morning/evening Zen reflections
- System health monitor (every 6h)
- Shared memory sync (every 6h)
- GDrive + brain backups
- Dashboard agent memory daily (20:00 UTC)

## Current Capabilities (as of 2026-06-10)

### AI-Trader (ai4trade.ai)
- Agent ID: 7729, portfolio ~$100K paper
- CLI: status, positions, trade, strategy, discussion, feed, rebalance, heartbeat
- Wolf→AI-Trader bridge for auto-publishing signals
- Safety: rate limiting, duplicate detection, circuit breaker, position limits

### Quant / Trading
- Momentum scanner: `~/.hermes/scripts/momentum-scanner.py` (yfinance+Finnhub)
- Options: bull call spreads (debit), bull put spreads (credit) with real bid/ask
- Commodity COT: WTI+Brent positioning >2σ flags
- Quant NN prototype at `~/quant-nn/`

### Study Pipeline
- IGCSE Biology via NotebookLM (nlm CLI)
- Per-concept: study guide, flashcards, slides, video
- AI in Education notebook: 4cf3cf93 (12 sources)
- Study Boy: sherlock-study-boy skill

### Shared Wiki Vault
- Path: `~/agent-memory/` (Git: dman1313/agent-memory-coding)
- This is the shared wiki for the entire agent fleet
- Always read NOW.md at session start, update ACTIVITY.md
- Pull before write, commit+push after changes
- Second Brain (personal): `~/Documents/Obsidian Vault/second-brain/`

### AI Brain
- NotebookLM "H1 AI Brain" (e0da9697)
- Summaries pushed via wrapup skill

## External Systems

- **Google Workspace:** OAuth'd, token at `~/.hermes/google_token.json`
- **X/Twitter:** @humangoodai via xurl (needs $5 top-up)
- **Notion:** HumanGood workspace (curl-based, ntn CLI not installed)
- **Together AI:** image gen provider, MCP server "together-docs"
- **GitHub:** PAT configured, dman1313 org

## Services (9Router, WeKnora, etc.)

- 9Router :20128, WeKnora :8089, FreeLLMAPI :3002, Hermes Office :3001, Agent Ready :8766, Caddy

## Strengths
- Best for: orchestration, scheduling, research, trading, knowledge management
- Has 300+ skills covering most domains
- Cron-based automation (16+ active jobs)
- Multi-platform messaging (Telegram)
- Lead orchestrator (HAL) for the agent fleet

## Recent Resolutions (2026-06-12)
- **Xiaomi provider**: Recovered June 11 — zero HTTP 451 errors. Wolf scan + Night Ignore Reminders running clean.
- **DREAM cleanup bug (T-0004)**: Fixed — session_search as primary method, June 12 run clean after 11+ nights of failures.

### Hyperagent


# Hyperagent

**Platform:** Cloud (Hyperagent platform, browser threads)
**Model:** Claude (Fable 5)
**Memory:** This vault via GitHub REST API — direct commits to `main`
**Config:** Hyperagent project "wiki" + thread context docs (no local config file on Dwayne's machines)

## Access Path (differs from every other agent)

- No iCloud path, no VPS clone. Reads `api.github.com` contents, writes via Git Data API (atomic multi-file commits).
- `git clone`/`push` is blocked in my sandbox (HTTPS proxy); REST API works. Commits land on `main` between the fleet's 15-min syncs.
- Cannot run `build-context.sh` or `sync.sh` — after I write 5+ ACTIVITY entries, the next Mac/VPS agent should regenerate NOW.md/CONTEXT.md.
- Runs **on demand** when Dwayne opens a thread — not a daemon. Inbox checked per session, not continuously.

## Strengths

- Best for: deep research (web search + crawling), vault audits, design specs, long-form writing
- Rich artifacts: webpages, slide decks, tables, documents, images/video/audio
- Browser automation for dynamic sites; sandboxed code execution (Python/Node)

## Current Work

- Fleet Plan Board SHIPPED 2026-06-11 (spec/plan/tasks + ADR 0004 + 6 commits). Monitoring adoption: waiting on T-0002 (launchd check, MacH) and first organic claims by MacH/hermes/claude-code. Next: mark spec Done when criteria 1/2/6 observed; regenerate wiki graph after next compile on request.

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| agent-memory | Designer + builder of the plan board | Shipped; adoption watch | 2026-06-11 |

## Recent Decisions

- 2026-06-11 — Shipped board + janitor; consolidated T3-T6 into one commit (one file, one verified unit); retro-stamped 42 archive files with honest processed_note rather than fabricating per-file wiki_articles_touched.

- 2026-06-11 — Write via GitHub Git Data API (single atomic commits) since git clone is proxy-blocked; append-only, never touch other agents' entries.

## Handoff Notes

- Board live: T-0001/2 → MacH, T-0003..6 → hermes, T-0008 → claude-code (inbox dispatches + ACTIVITY handoffs 2026-06-11). NOW/CONTEXT/board in the launch commit are replica-regenerated — the Mac launchd job should take over regeneration (T-0002 verifies).

- My commits arrive directly on origin/main. Mac agents: launchd pull picks them up; Hermes: `git pull --rebase` as usual.
- Audit findings live in the 2026-06-11 ACTIVITY note; full upgrade spec will follow SDD (spec → plan → tasks).

## Memory Log

- 2026-06-11 — Joined roster per [[AGENT-BOOTSTRAP]] first-time checklist.

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

### Agent Command Center Plan

# Agent Command Center — Implementation Plan
**Generated:** June 12, 2026 | **Status:** Concept
## Phase 1: Cookie Sync (🍪)
- [ ] Run `agentcookie wizard set-keychain-access`
- [ ] Configure blocklist (exclude banking, email)
- [ ] Test: `agentcookie export --domain %github.com`
- [ ] Wire into Hermes toolchain

## Phase 2: Research Pipeline (📰)
- [ ] `last30days` for market/tech trend reports
- [ ] Auto-route findings to vault + Notion
- [ ] Schedule daily briefings via cron

## Phase 3: Image Generation (🎨)
- [ ] Map `image_generate` to planning docs
- [ ] Auto-generate architecture diagrams for each project
- [ ] Visual status cards for NOW.md

## Phase 4: Agent Arena (🏟️)
- [ ] Complete tournament UI integration
- [ ] Add training ground curricula
- [ ] Export fight results as visual reports


### Agent Memory Coding


# agent-memory-coding → use `agent-memory`

## Status now

This slug is an alias. The canonical project is [[Project/agent-memory|agent-memory]] — same vault, same work. Log ACTIVITY entries and board tasks under `agent-memory` (one name across ACTIVITY · board · Project/, per STANDING-ORDERS).

## Next steps

- Agents: switch to the `agent-memory` slug.

## Where things live

- [[Project/agent-memory]]

## Open tasks

- See [[Project/agent-memory]]

### Agent Memory


# Agent Memory (this vault)

The vault is dual-purpose: the fleet's coordination layer AND Dwayne's second brain. Spec: `sdd/specs/2026-06-11-fleet-plan-board/`.

## Status now

Fleet Plan Board + janitor shipped 2026-06-11 (hyperagent): Plan/ board live with 8 seeded tasks, build-context.sh now renders the board into NOW.md, auto-closes stale sessions >48h, archives DONE channel messages >48h, and flags raw-inbox backlog + missing archive stamps. Suspected issue: the Mac launchd vault-sync job may be down (NOW.md sat ~15h stale on 2026-06-11) — T-0002.

## Next steps

- T-0002 (MacH): verify/restore the com.dwayne.vault-sync launchd job — the janitor rides it
- T-0001 (MacH): retire the diverged ~/agent-memory Mac working tree
- After a week of board use: review spec success criteria 1/2/6 and mark the spec Done

## Where things live

- Repo: github.com/dman1313/agent-memory-coding (private) · Mac iCloud path + VPS clone per STANDING-ORDERS
- Board: `Plan/` (contract in Plan/README.md, dashboard in Plan/board.md) · Fleet state: NOW.md
- Generator/janitor: `build-context.sh` (runs via sync.sh every 15 min on Mac) · Spec/plan/tasks: `sdd/specs/2026-06-11-fleet-plan-board/`

## Open tasks

- [[Plan/tasks/T-0001-retire-diverged-mac-tree|T-0001]] · [[Plan/tasks/T-0002-verify-vault-sync-launchd|T-0002]]

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
**Status (2026-06-12):** 19/19 (14 AUTO + 5 HUMAN) ✅ ALL PASS. Git local, NOT pushed to GitHub (not requested).

## Origin — the ethics redesign

Dwayne's original ask was "webcam tags kids, times them in seats, counts hand-raises." Redesigned through the [[project-agent-ready-coding-loop|Loop Generator]] interview: face-tagging minors = biometric data (CNIL struck down facial recognition in schools); emotion/attention inference in education = prohibited by EU AI Act since Feb 2025. The legitimate kernel — "is this strategy supporting this child?" — needs no identification tech. Per-child LIMS rows for the whole class were **deliberately rejected** (pseudonymised ≠ anonymous); recorded in LATER.md.

## The contract method

First real run of agent-ready-coding-loop v2.2: `CONTRACT.md` (19 binary criteria, signed via plan approval), `./check` prints a plain-English scoreboard (guardrails first), checkpoint commits per scoreboard improvement, `LATER.md`, `HUMAN-CHECKS.md`. **The loop caught a real bug:** guardrail 4 failed because "Marie" passed a letters-only code pattern → LIMS/class codes now require ≥1 digit.

## Tech

Python 3.11 venv · Ultralytics YOLO11n-pose (AGPL — flagged in LATER.md for any distribution) · OpenCV · FastAPI on 127.0.0.1:8470 · SQLite (schema-locked by test) · vanilla-JS zone editor · `run.command` double-click launcher · `install.sh` (one-time, downloads model; zero network at runtime, proven by socket-block test).

## Open items

- Real-classroom use gated on homework: DPIA + parental consent (Mode 1) + school sign-off + CNIL check (in SETUP.md).

### Claude Md Rewrite


# claude-md-rewrite

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-10 **MacH** (session-end): Done: applied canonical rewrite (Guides/claude-md-rewrite-guide) to schema/AGENTS.md on the iCloud path. 1,020→995 words / ~1,326→~1,293 tokens; added §8 Self-annealing skills, §9 Auto research (Karpathy loop), §10 Leverage. Preserved "Multi-agent write contract" as new §5 (binding). Logged run audi…
- 2026-06-10 **MacH** (note): Reading claude-code's 18:00 session-end: that run rewrote the per-agent ~/.claude/CLAUDE.md and produced Guides/claude-md-rewrite-guide.md. My run is a second application of the same canonical meta-prompt, targeting the vault's schema/AGENTS.md (not a per-agent config). Keeping the guide as-is; savi…
- 2026-06-10 **MacH** (session-start): Starting: per Dwayne's request, audit + rewrite schema/AGENTS.md to minimize tokens without losing binding instructions, then add Self-Annealing / Auto Research / Leverage sections and produce a fleet instruction manual.

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)

## Where things live

- Trail: ACTIVITY.md (project: claude-md-rewrite) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- (none on the board yet)

### Dream


# dream

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-10 **hermes** (decision): Giving DREAM one more night with the session_search fix. If tomorrow's output is still garbage, pausing the cron.
- 2026-06-10 **hermes** (blocker-resolve): Fixed DREAM cleanup-before-analysis bug (11+ consecutive nights). Root cause: sessions.write_json_snapshots=false means session files don't exist, but DREAM skill had 500+ lines of file-based grep/ls commands. Updated skill to use session_search as primary method. Patched Audit Steps, Session Search…
- 2026-06-06 **hermes** (blocker): DREAM cleanup-before-analysis bug persists — 7th+ occurrence, zero session files for analysis, 516 errors logged

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)

## Where things live

- Trail: ACTIVITY.md (project: dream) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- [[Plan/tasks/T-0004-dream-cleanup-bug|T-0004]] (hermes)

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

### Hermes Dashboard


# hermes-dashboard

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-09 **hermes** (blocker-resolve): Dashboard :9999 recovered (200) — was DOWN June 8, back today without manual restart
- 2026-06-08 **hermes** (blocker): Dashboard :9999 DOWN — was UP yesterday, new failure detected in daily brief
- 2026-06-05 **hermes** (blocker-resolve): Dashboard port 9999 back up (200) — was down June 3

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)

## Where things live

- Trail: ACTIVITY.md (project: hermes-dashboard) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- (none on the board yet)

### Hermes Ecosystem


Skills in the Anti-Gravity/Skills repo are designed as instructions for AI agents (Hermes, OpenClaw), not for direct human use in Claude Code. The agent fleet includes Sherlock (research), Special Ops (orchestration), DREAM (quality tracking), and Firehose (trending topics). Communication Officer agent is planned but not yet built.

**Why:** Changes how skills are authored — they need to be agent-consumable, self-contained workflows with clear handoffs between agents.

**How to apply:** Write skills as step-by-step agent instructions with explicit inputs/outputs, agent handoffs, and escalation paths. Don't assume human-in-the-loop for routine steps.

## Status now

_Section added 2026-06-11 (resume-point rollout, spec M2)._ VPS system YELLOW per HAL briefs: disk 75% w/ swap 94%, DREAM cleanup-before-analysis bug (7th+ occurrence — hermes gave the session_search fix one more night on 2026-06-10, else pausing the cron), HAL Telegram delivery intermittently failing, ~4.5GB reclaimable caches identified by MrClean. 17 agent skills active; full inventory synced to MacH 2026-06-10.

## Next steps

- T-0004 (hermes): DREAM bug — verify the fix or pause the cron with a logged decision
- T-0005 (hermes): HAL Telegram delivery retry/restart
- T-0006 (hermes): clear npx/npm/huggingface caches, log df evidence

## Where things live

- VPS: 65.109.141.110 (`~/.hermes/` skills, scripts, cron) · dashboards: hermesdash.humangood.ai (:9119)
- Audits: `mrclean-audit-2026-06-11.md` · system map: PROJECT-MAP.md

## Open tasks

- [[Plan/tasks/T-0004-dream-cleanup-bug|T-0004]] · [[Plan/tasks/T-0005-hal-telegram-delivery|T-0005]] · [[Plan/tasks/T-0006-vps-cache-cleanup|T-0006]]

### Hermes Mac


# hermes-mac

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-05 **dashboard** (message): hi
- 2026-06-05 **dashboard** (message): Roster check hermes-mac: inbox is live.
- 2026-06-05 **dashboard** (message): Roster check: please acknowledge that hermes-mac inbox is live.

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)

## Where things live

- Trail: ACTIVITY.md (project: hermes-mac) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- (none on the board yet)

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

### Humangood Ai Webpage


# humangood-ai-webpage

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-09 **claude-code** (session-start): Starting: New session in humangoodai project, awaiting instructions
- 2026-06-05 **codex** (milestone): Adjusted result layout so result text and image stay side-by-side on tablet/desktop widths while stacking on mobile.
- 2026-06-05 **codex** (milestone): Added the new visitor/result illustration to the right of the Agent Ready result text and verified responsive layout.

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)

## Where things live

- Trail: ACTIVITY.md (project: humangood-ai-webpage) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- (none on the board yet)

### Humanizer


# humanizer

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-05 **claude-code** (session-start): Starting: User asked to look at the humanizer app
- 2026-06-03 **claude-code** (milestone): Tasks 6–8 complete: onboarding modal, privacy badge, footer, meta tags + favicon. Committed 3 files, +191/-3 lines.
- 2026-06-03 **claude-code** (session-start): Starting: Tasks 6–8 — onboarding modal, privacy badge/footer, meta tags + favicon

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)

## Where things live

- Trail: ACTIVITY.md (project: humanizer) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- (none on the board yet)

### Loop Generator


# loop-generator

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-09 **claude-code** (note): GitHub repo renamed loop-generator -> agent-ready-coding-loop per Dwayne; remote updated, old URL redirects
- 2026-06-09 **claude-code** (session-end): Done: Loop Generator v2.2 shipped + pushed to private repo github.com/dman1313/loop-generator (PROMPT.md + README; v2.1→v2.2 as separate commits; originals untouched)
- 2026-06-09 **claude-code** (milestone): v2.2 written: contract persisted to CONTRACT.md w/ resume protocol, [HUMAN] checks in loop exit, stagnation-based retry budget, checkpoint commits, amendment protocol, fake-data rule, cost question

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)
- Related page: [[Project/agent-ready-coding-loop]] (the Loop Generator contract project)

## Where things live

- Trail: ACTIVITY.md (project: loop-generator) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- (none on the board yet)

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

### Pyp Planner Gen


# pyp-planner-gen

## Status now

**2026-06-13 — MacH:** Claude skill at `~/.claude/skills/pyp-planner/SKILL.md` overhauled with two-path workflow:
- **Path A (Primary): HTML → PDF** — works in cloud/Claude. Full pipeline: Pre-Flight R1 (web search) + R2 (NotebookLM teaching resources) → interview choices → image generation (FAL via Hermes gateway) → contract check (18 criteria) → 3-pass humanization → stop-slop audit (≥35/50) → formatting QA → deliver.
- **Path B (Secondary): DOCX → Pages** — Apple Mac only, flagged as unreliable in cloud.

First complete unit produced: "From Farm to Table" (Grade 3, How the World Works). In `pyp_planner_generator_phase_a/units/grade-3-farm-to-table/`. 18/18 contract check passed, humanized, 7 images embedded, A4 print-ready.

Key additions to skill:
- Pre-Flight Research: mandatory web search + NotebookLM query before any planner content
- NotebookLM integration: `~/.claude/skills/notebooklm/` for teaching templates, prompts, workflows
- Quality gates table: contract check, humanizer, stop-slop, formatting, author-name check
- Author name removal: no personal names in footers (TpT store name in listing only)
- Research-only mode: user can ask to research a topic for a future planner

## Where things live

| Resource | Path |
|----------|------|
| **Claude skill** | `~/.claude/skills/pyp-planner/SKILL.md` (247 lines) |
| **Skill reference** | `~/.claude/skills/pyp-planner/REFERENCE.md` (IB descriptors, Pages rules) |
| **Contract check script** | `/Volumes/M2 Media/Coding Dwayne/IB planner/pyp_planner_generator_phase_a/check` |
| **Image generator** | `/Volumes/M2 Media/Coding Dwayne/IB planner/pyp_planner_generator_phase_a/scripts/image_gen.py` |
| **DOCX converter** | `/Volumes/M2 Media/Coding Dwayne/Claude/pyp-planner-gen/pyp_planner.py` |
| **NotebookLM skill** | `~/.claude/skills/notebooklm/` |
| **Hermes HTML skill** | `~/.hermes/skills/productivity/pyp-planner/SKILL.md` |
| **First unit output** | `/Volumes/M2 Media/Coding Dwayne/IB planner/pyp_planner_generator_phase_a/units/grade-3-farm-to-table/From_Farm_to_Table_Complete_Planner.html` |

## Key decisions

- HTML path is primary because DOCX → Pages chain doesn't work in cloud/Claude
- Image generation uses Hermes `image_generate` (FAL via gateway) — no local API key needed
- Author names stripped from all planner outputs — TpT store name goes in listing metadata only
- Pre-Flight research (web + NotebookLM) is mandatory before every new planner

## Open tasks

- Run NotebookLM auth setup (`notebooklm login`) for next planner session
- Consider initializing git repo for `~/.claude/skills/` to track skill versions
- Next planner: use full Pre-Flight pipeline with real web search + NotebookLM queries

### Study Pipeline


# Study Pipeline (IGCSE Biology)

NotebookLM-driven generation of study packages (flashcards, quizzes, concept deep-dives) for IGCSE Biology, running on the VPS via cron + `concept-pipeline.sh`.

## Status now

BROKEN since the workdir lost `concept-progress.json`: the hourly cron has erred 353+ consecutive runs (FileNotFoundError), failing silently 24x/day. Audit: `mrclean-audit-2026-06-11.md` finding #1 (9/10). Sister skills: sherlock-study-boy + notebooklm (see `skills-for-mac/`); NotebookLM CLI quirks documented in DECISIONS.md (2026-05-31, flashcards difficulty is a string) and `skills-for-mac/sherlock-study-boy/references/nlm-cli-quirks.md`.

## Next steps

- T-0003 (hermes): restore/regenerate concept-progress.json or make the script tolerate absence; confirm 3 clean runs
- Reduce cadence from hourly to every 3-6h per the audit recommendation

## Where things live

- VPS: `~/.hermes/scripts/concept-pipeline.sh` + its workdir · cron "IGCSE Biology Concept Pipeline" (hourly)
- Skills: `skills-for-mac/notebooklm/`, `skills-for-mac/sherlock-study-boy/` · study outputs: VPS `study-packages/`

## Open tasks

- [[Plan/tasks/T-0003-fix-igcse-concept-pipeline|T-0003]]

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

### Taste Skill


# taste-skill

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-10 **MacH** (blocker-resolve): Dwayne challenged my first-pass skip list. Re-evaluated: 6 of 7 skips had weak reasons (called gpt-taste a "dup", missed that imagegen-* are prompt direction for any image-gen tool, misread stitch as Stitch-only). Installed all 6 plus updated Guides/taste-skill-availability.md with a correction log.…
- 2026-06-10 **MacH** (milestone): Installed 6 of 13 taste-skill skills to ~/.hermes/skills/creative/taste-skill/ (default + redesign + soft + minimalist + brutalist + output). Skipped gpt-taste (dup), image-to-code (wrong workflow), imagegen-*/brandkit (we use FAL), stitch (Google only), v1 (default to v2). Noted overlap with fronte…
- 2026-06-10 **MacH** (note): User asked me to clone https://github.com/leonxlnx/taste-skill and use it for the things I design. It's a frontend anti-slop skill pack (13 skills: implementation + image-gen). Source repo: ~/taste-skill/. After review, decided on subset install (see milestone entry).

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)

## Where things live

- Trail: ACTIVITY.md (project: taste-skill) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- (none on the board yet)

### Vault Maintenance


# vault-maintenance

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-03 **MacH** (handoff): AGENT-CHANNEL message from Claude-Code handled: agent docs updated. VPS Hermes still needs to update its own Current Work section
- 2026-06-03 **MacH** (decision): Agent file Agents/hermes.md updated to document both MacH (macOS) and VPS Hermes instances
- 2026-06-03 **MacH** (session-start): Starting: Vault startup read, updating MacH agent file, handling AGENT-CHANNEL messages

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)

## Where things live

- Trail: ACTIVITY.md (project: vault-maintenance) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- (none on the board yet)

### Vault Purpose


# Vault Purpose

_Rewritten 2026-06-11 per Dwayne (spec amendment, sdd/specs/2026-06-11-fleet-plan-board/): the previous version described only the second-brain half._

This vault is **two things at once**:

1. **The fleet's coordination layer** — shared memory and operating system for all of Dwayne's coding agents: session ritual, ACTIVITY log, NOW dashboard, Plan board, per-agent profiles, decisions.
2. **Dwayne's second brain** — the fleet works *with* Dwayne and collects information *for* him here. Knowledge compounds in `wiki/` (Karpathy LLM-wiki pattern); working state lives in `Project/` resume points and `Plan/` tasks.

**The day-one test:** an agent says "I'm MacH — I look at the vault right away: okay, I was working on this program before. I read the content, and I start from there." Two file reads (`Agents/{name}.md` → `Project/<slug>.md`), no re-researching, no archaeology. The vault is the central place for everyone.

## Design Principles

1. **Structured wiki over vector embeddings** — human-readable markdown with `[[wikilinks]]` (Karpathy's approach).
2. **Raw intake → curated wiki → working state** — `raw/` (immutable inbox) → `wiki/` (append-only knowledge graph) → `Project/` + `Plan/` (resume points and work queue) referencing wiki as context.
3. **Append-only history** — dated sections, never overwrite. Stopping is never losing.
4. **Cross-link aggressively** — islands are failures; the graph's value compounds through connections.
5. **Research once** — check the vault before researching (resume page → `wiki/index.md` → `Reference/` → `DECISIONS.md`); write findings back where they belong.
6. **State keyed by project name** — the same slug names the ACTIVITY entries, the board task `project:` field, and the `Project/<slug>.md` resume page.

## Rules for Agents

Full protocol: `STANDING-ORDERS.md` (fleet) and `schema/AGENTS.md` (wiki, read-only). Board contract: `Plan/README.md`.

## Related

The separate personal trading vault (second-brain repo, stock/trade ideas) follows the same wiki pattern — it is a different vault with its own remote. [[Project/wiki-obsidian]] · [[Project/agent-memory]]

### Wiki Obsidian


This directory is an Obsidian vault implementing the LLM Wiki pattern (Karpathy, 2026). The canonical version lives on the VPS; synced via Git.

- **Server path:** `/home/ubuntu/wiki`
- **Remote:** github.com/dman1313/agent-memory-coding
- **Sync:** Git-only (Dropbox sync removed May 2026)
- **Raw source for the pattern:** `raw/articles/karpathy-llm-wiki-2026.md` (already ingested 2026-04-18)

**Why:** This is a persistent, compounding knowledge base. The LLM (Claude Code) is the wiki maintainer — it writes, updates, and cross-links pages. The human curates sources and asks questions.

**How to apply:** Read order: `schema/AGENTS.md` → `wiki/index.md` → `wiki/log.md` → target pages. The four-layer architecture (`raw/` inbox, `raw/processed/` archive, `wiki/` graph, `schema/` rules) is non-negotiable. New pages go to `wiki/index.md`; curator actions go to `wiki/log.md`. Vault-root `schema/` holds master rules; `wiki/schema/` holds wiki-local config.

## Status now

_Section added 2026-06-11 (resume-point rollout, spec M2)._ Wiki healthy after kiro's 2026-06-10 full compile (93 raw → 20 entities, 13 concepts, 19 sources; 71 pages, 356 links per the 2026-06-11 graph snapshot). Two hygiene items open: 42 archived raw files missing their `processed: true` stamp (re-digestion landmine — T-0007), and 8 orphan sources + 5 dead template links from the lint/graph (T-0008). The janitor now surfaces raw backlog + stamp gaps in NOW.md.

## Next steps

- T-0007 (hyperagent): stamp the 42 archived raw files
- T-0008 (claude-code): curator pass — orphan sources, dead template links, backlinks
- Next compile: regenerate the wiki graph snapshot on request

## Where things live

- Wiki: `wiki/` in this vault (rules: `schema/AGENTS.md`, modes: `schema/curate-modes.md`, skill: `.claude/skills/curate/`)
- Intake: `raw/` → archive `raw/processed/<category>/` · curator log: `wiki/log.md`
- Graph view: `project-graphs/wiki/graph.html` (interactive map of the whole wiki; regenerated by hyperagent on request)

## Open tasks

- [[Plan/tasks/T-0007-stamp-archived-raw-files|T-0007]] · [[Plan/tasks/T-0008-wiki-orphans-dead-links|T-0008]]

### Wolf Trading Agent


# wolf-trading-agent

## Status now

_Auto-generated from the project's ACTIVITY trail (L3 resume-point rollout, 2026-06-11, hyperagent). The next agent working this project: refine this page at session-end per the stop rule (Plan/README.md)._

- 2026-06-10 **hermes** (note): Wolf Tuesday scan: all 3 scanners degraded (Reddit DDG broken since May, Twitter xurl JSON errors, GNews 1 stale article), 0 signals. Alpaca options fallback: NFLX P/C 0.11, MU P/C 0.27, MSTR P/C 0.33 bullish skew
- 2026-06-09 **hermes** (note): Wolf Monday scan: 2 NEUTRAL (RDDT, GME), Twitter xurl fully broken (invalid JSON), Reddit degraded, GNews low signal
- 2026-06-08 **hermes** (note): Wolf Sunday scan: 2 NEUTRAL signals (RDDT, GME), Twitter scanner degraded, low-value weekend run

## Next steps

- (to be set by the owning agent at next session-end — derive from Status above)

## Where things live

- Trail: ACTIVITY.md (project: wolf-trading-agent) · full-text: project-graphs/wiki/search.html · graph: project-graphs/wiki/graph.html

## Open tasks

- (none on the board yet)

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

### Vault Fitness


# Vault Fitness — trend & iteration log

Loop spec: `sdd/specs/2026-06-11-vault-fitness-loop/spec.md` · instrument: `scripts/vault-keeper/vault_fitness.js`. Append-only: one row + one iteration note per run.

| date | pages | links/pg | resume cov. | sessions 7d | auto-closes | claims (non-keeper) | raw/unstamped | NOW age |
|---|---|---|---|---|---|---|---|---|
| 2026-06-11 | 71 | 7.7 | 4/32 | 22s/11e | 2 | 0 | 0/0 | 51m |

## Iterations

### Iteration 0 — 2026-06-11 (baseline)
Headline findings: only **50% of sessions log a session-end** (janitor compensating); **resume coverage 4/32** (the "32" includes one-off slugs — definition refinement queued as L3); **board adoption 0** non-keeper claims (launch day — dispatches pending pickup). Wiki itself healthy: 71 pages, 7.7 links/page, raw inbox + archive stamps clean.
**Lever chosen → L1 search page (T-0009):** directly serves Dwayne's "can be searched later on"; zero risk to rules. Measured next run by: search page exists, covers all four content classes, and gets referenced.

### Iteration 1 — 2026-06-11 (L1 shipped)
**Lever L1 — search page: DONE.** `project-graphs/wiki/search.html` — 100 documents indexed across all four content classes (wiki 71, board tasks 9, projects 13, decisions 7), self-contained (works offline/from Obsidian), ranked results with highlighted excerpts and file paths, type filters. T-0009 todo→claimed→done same day. Measured next run: page referenced/used; doc count tracks vault growth. **Next lever queued: L2 (session-end compliance — 50% pairing rate is the worst KPI).**

### Iteration 2 — 2026-06-11 (L2 shipped)
**Lever L2 — session-end compliance: DONE (T-0010).** NOW.md now renders "Session Hygiene (7d)" naming each fleet agent with unpaired sessions or janitor auto-closes; AGENT-BOOTSTRAP rules state the consequence. Mechanism: visibility-by-name in the file every agent reads first. Measured next runs: starts/ends pairing rate (baseline 22s/11e = 50%, target ≥90%) and weekly auto-close count trending to 0. **Next lever queued: L3 (resume-coverage definition + rollout).**

### Iteration 3 — 2026-06-11 (L3 shipped)
**Lever L3 — resume coverage: DONE (T-0011).** Definition fixed (real project = ≥3 ACTIVITY entries/14d; sprawl slugs tracked separately — baseline 18). Rollout: 11 evidence-based resume pages + 1 alias stub (agent-memory-coding → agent-memory) generated from each project's ACTIVITY trail, marked for owner refinement at next session-end. **Coverage: 2/14 → 14/14.** Measured next runs: coverage stays 14/14 as definition catches new projects; sprawl count trend; pages refined by owners (not just generated). **Next lever queued: L4 (claim nudges).**

### Iteration 4 — 2026-06-11 (L4 shipped)
**Lever L4 — claim nudges: DONE (T-0012).** Keeper's hourly regen now reminds the assigned agent (inbox dispatch) when a P1 sits unclaimed 48h+: max 1 per 72h, max 2 total, then escalate to Dwayne. Rate-limit state lives in the task's own Log. Fixture-verified (fires once, suppressed on rerun). Measured next runs: time-to-claim for P1s; nudge counts (target: rarely needed). **Four levers shipped on day one: search (L1), session hygiene (L2), resume coverage (L3), claim nudges (L4). Next: L5 weekly digest — via the weekly cycle.**

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

1. Read NOW.md (or the NOW section above) — fleet state including the Plan Board
2. Check ACTIVITY.md for recent entries since your last session
3. Check Agent Inbox/{your-agent}.md and AGENT-CHANNEL.md for pending messages
4. Resuming a project? Read Project/<slug>.md FIRST — it is the resume point
5. Starting non-trivial work? Check Plan/board.md and claim the task (Plan/README.md)
6. Researching anything? Check the vault first: resume page → wiki/index.md → Reference/ → DECISIONS.md
7. Check `git log --oneline -5` for recent vault changes
8. Log a `session-start` entry to ACTIVITY.md **below the marker line**
9. When you stop: update Project/<slug>.md + your agent file, write back what you learned, log `session-end`
