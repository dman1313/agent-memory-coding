# Agent Setup Guide

This Obsidian vault is a **shared memory system** for all coding agents. It lives on the user's Mac via iCloud and syncs to the VPS through GitHub.

## What This Is

A centralized knowledge base that persists across sessions, projects, and agents. All agents read and write to the same vault so they can collaborate and maintain continuity.

## Folder Structure

```
├── MEMORY.md              # Index file — always read this first
├── AGENT-SETUP.md         # This file — setup instructions for agents
├── sync.sh                # Mac auto-sync script (runs every 15 min via launchd)
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

## Sync Architecture

```
Mac (iCloud) ←──symlink──→ Claude Code memory/
      ↕
  launchd (every 15 min)
      ↕
  GitHub (private repo)
      ↕
  VPS cron (every 15 min)
      ↕
  /home/ubuntu/agent-memory ←── Hermes reads/writes here
```

**GitHub repo:** `https://github.com/dman1313/agent-memory-coding` (private)

- **Mac → GitHub:** `launchd` runs `sync.sh` every 15 min (pull, commit, push)
- **VPS → GitHub:** Cron pulls and pushes every 15 min
- **Hermes (VPS):** Only agent with direct GitHub access on the server
- **Other agents on VPS:** Pull from `/home/ubuntu/agent-memory` (Hermes keeps it current)

## For Claude Code (Mac)

This vault is symlinked to:
```
~/.claude/projects/<project>/memory → this vault
```

To link a new project:
```bash
rm -rf ~/.claude/projects/<project-path>/memory
ln -s "/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding" ~/.claude/projects/<project-path>/memory
```

Read/write directly — the Mac launchd sync handles pushing to GitHub automatically.

## For Hermes (VPS — Primary Agent)

Clone and configure:
```bash
cd /home/ubuntu
git clone https://github.com/dman1313/agent-memory-coding.git agent-memory
```

Set up bidirectional sync cron:
```bash
(crontab -l 2>/dev/null; echo '*/15 * * * * cd /home/ubuntu/agent-memory && git pull --rebase --autostash && git add -A && git diff --cached --quiet || (git commit -m "auto-sync VPS $(date +\%Y-\%m-\d\ \%H:\%M)" --author="Agent Memory Sync <dman1313@users.noreply.github.com>" && git push)') | crontab -
```

Memory path for Hermes: `/home/ubuntu/agent-memory`

When writing memories:
1. Pull first: `git pull --rebase`
2. Write/update memory files following the format above
3. Update `MEMORY.md` index
4. Commit and push: `git add -A && git commit -m "memory: <topic>" && git push`

## For Other VPS Agents

Read memory from: `/home/ubuntu/agent-memory`

Do NOT write directly. If you need to save something, send it to Hermes or route it back to Claude Code on the Mac. Hermes is the only agent with GitHub push access on the VPS.

## Rules

1. **One file per topic**, not per session. Update existing files rather than creating duplicates.
2. **Update MEMORY.md** when adding or removing files.
3. **Use the type folders.** Don't dump files at the root.
4. **Keep frontmatter accurate** — name, description, and type must match the content.
5. **Link related memories** with `[[wikilinks]]` so the graph stays connected.
6. **Verify before trusting** — memories are point-in-time. If something seems stale, check current state before acting on it.
7. **Never delete** another agent's memory without confirming with the user.
8. **Pull before push** — always `git pull --rebase` before writing on the VPS.
