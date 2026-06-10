---
name: agent-kiro
description: Amazon Kiro — IDE-integrated agent, lightweight steering-based
metadata:
  type: agents
---

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
