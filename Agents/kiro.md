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
