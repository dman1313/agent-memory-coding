---
name: agent-cursor
description: Cursor IDE agent — IDE-integrated coding, MCP plugins, multi-model
metadata:
  type: agents
---

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
