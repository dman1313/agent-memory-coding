# Agent Setup Guide

This Obsidian vault is a **shared memory system** for all coding agents (Claude Code, Copilot, Gemini, etc.).

## What This Is

A centralized knowledge base that persists across sessions, projects, and agents. All agents read and write to the same vault so they can collaborate and maintain continuity.

## Folder Structure

```
├── MEMORY.md              # Index file — always read this first
├── AGENT-SETUP.md         # This file — setup instructions for agents
├── User/                  # User preferences, role, knowledge
├── Feedback/              # How the user wants work done (do's and don'ts)
├── Project/               # Active projects, deadlines, decisions
└── Reference/             # External system pointers (dashboards, trackers, etc.)
```

## File Format

Every memory file uses this frontmatter:

```yaml
---
name: short-kebab-case-slug
description: One-line summary for quick relevance scanning
metadata:
  type: user | feedback | project | reference
---
```

Body content follows with `[[wikilinks]]` to related memories. Obsidian-style links so the user can navigate the graph.

## For Claude Code

This vault is symlinked to:
```
~/.claude/projects/<project>/memory → this vault
```

Run this for each project directory to link it:
```bash
rm -rf ~/.claude/projects/<project-path>/memory
ln -s "/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding" ~/.claude/projects/<project-path>/memory
```

## For Other Agents

Point your memory/knowledge system at this directory:
```
/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding
```

Always read `MEMORY.md` first — it's the index. Follow links from there.

## Rules

1. **One file per topic**, not per session. Update existing files rather than creating duplicates.
2. **Update MEMORY.md** when adding or removing files.
3. **Use the type folders.** Don't dump files at the root.
4. **Keep frontmatter accurate** — name, description, and type must match the content.
5. **Link related memories** with `[[wikilinks]]` so the graph stays connected.
6. **Verify before trusting** — memories are point-in-time. If something seems stale, check current state before acting on it.
7. **Never delete** another agent's memory without confirming with the user.
