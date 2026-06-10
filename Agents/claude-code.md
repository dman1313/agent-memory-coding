---
name: claude-code
description: "Primary agent, most feature-rich, superpowers plugin, NotebookLM"
metadata: 
  node_type: memory
  type: user
  originSessionId: 882c8ce8-4d03-4028-b95e-b80673dd5cdb
---

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
