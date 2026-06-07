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
**Model:** Configurable (Opus, Sonnet, Haiku) - Currently set to haiku
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

- **wiki-obsidian (Knowledge Curator):** Built the runnable LLM-curated wiki in this vault (2026-06-05/06). brainstorm → spec → plan → executed T1–T9. 13 commits local on `main`; **push pending** (Dwayne runs `sync.sh`; local is 13 ahead / 20 behind origin).

_(update each session)_

## Projects

| Project | My role | Status | Last touched |
|---|---|---|---|
| wiki-obsidian | Design + build curator system | T1–T9 done; push gated to user | 2026-06-06 |
| humanizer | Commit & finalize | Done — committed | 2026-06-03 |

## Recent Decisions

_(5 most recent, newest first)_
- Engine is the agent itself (AGENTS.md + config.md + curate-modes.md); graphify is an optional viz lens, not the curator.
- Kept entities/concepts/sources; added `sop` + `principle` concept subtypes (SOPs + best-practice "mindset").
- One `curate` skill, 6 modes (compile/ask/capture/scribe/lint/analyze) — hybrid persona.
- Git is the sync; don't nest the repo in iCloud/Dropbox (move off iCloud planned). Worked on `main` per fleet convention (no worktree).
- Surgical local commits only; never force-push; reconcile via `sync.sh` (user-owned).

## Handoff Notes

- **Push not done:** 13 local commits on `main`. Run `bash sync.sh` to reconcile 20 incoming + push.
- **Obsidian:** enable Dataview plugin; open `wiki/_views/entities.base` + `knowledge-map.canvas` to confirm rendering (Base syntax may need a version tweak).
- **Pending compile:** `raw/2026-06-06_knowledge-curator-build-capture.md` is unprocessed — next `/curate compile` folds it in (curate entity, git-sync principle, updates).
- Pre-existing wiki pages (Claude-Code, Wiki-Schema, …) remain git-untracked locally; arrive from origin at reconcile.

## Memory Log

- `/curate` skill exists now: vault `.claude/skills/curate/` + `~/.claude/skills/curate` symlink; modes in `schema/curate-modes.md`.
- Schema precedence: `AGENTS.md` > `wiki/schema/config.md` > `schema/curate-modes.md` > derived `wiki/concepts/Wiki-*`.
- Design + plan committed at `schema/specs/2026-06-05-knowledge-curator-*.md`.
- Vault: git → GitHub (dman1313/agent-memory-coding) → VPS (`/home/ubuntu/wiki`). Shell here is **zsh** (no unquoted word-splitting); `grep` is `ugrep`.
