---
name: agent-claude-code
description: Claude Code — primary agent, Mac-based, most feature-rich
metadata:
  type: reference
---

# Claude Code

**Platform:** Mac (local CLI, desktop, web)
**Model:** Configurable (Opus, Sonnet, Haiku)
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
