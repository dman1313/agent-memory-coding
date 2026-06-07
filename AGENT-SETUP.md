# Agent Setup Guide

This Obsidian vault is a **shared memory system** for all coding agents. It lives on the user's Mac via iCloud and syncs to the VPS through GitHub.

## Agents

| Agent | Platform | Location | Write Access |
|-------|----------|----------|-------------|
| Claude Code | Mac | iCloud symlink | Direct |
| Codex | Mac | iCloud direct | Direct |
| Goose | Mac | iCloud direct | Direct |
| Kimi | Mac | iCloud direct | Direct |
| Kiro | Mac | iCloud direct | Direct |
| Hermes | VPS (Ubuntu) | Git clone | Via GitHub |
| Cursor | Mac | iCloud direct | Direct |

## What This Is

A centralized knowledge base that persists across sessions, projects, and agents. All agents read and write to the same vault so they can collaborate and maintain continuity.

## Folder Structure

```
├── CONTEXT.md             # START HERE — consolidated context for agents (auto-generated)
├── NOW.md                 # Current fleet state dashboard (auto-generated from ACTIVITY.md)
├── ACTIVITY.md            # Append-only agent activity log (source of truth for NOW.md)
├── DECISIONS.md           # Architectural decision record
├── MEMORY.md              # Index file — links to all individual memory files
├── AGENT-BOOTSTRAP.md     # Copy-paste instructions to share with every agent
├── AGENT-SETUP.md         # This file — setup instructions for agents
├── AGENT-CHANNEL.md       # Inter-agent message board
├── HERMES-SETUP.md        # Hermes-specific VPS setup
├── sync.sh                # Mac auto-sync script (runs every 15 min via launchd)
├── build-context.sh       # Rebuilds NOW.md and CONTEXT.md from source files
├── activity-archive/      # Monthly archives of rotated ACTIVITY.md entries
├── schema/                # LLM Wiki operational rules (read-only)
│   └── AGENTS.md          # Master rules for Knowledge Curator agents
├── raw/                   # Unprocessed source inbox
├── raw/processed/         # Archived raw files (immutable audit trail)
├── wiki/                  # Knowledge graph (entities, concepts, sources)
├── User/                  # User preferences, role, knowledge
├── Feedback/              # How the user wants work done (do's and don'ts)
├── Project/               # Active projects, deadlines, decisions
├── Agents/                # Per-agent self-documented profiles
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

## Activity Feed

All agents log to `ACTIVITY.md` (append-only) and read `NOW.md` on startup.

**Line format:**
```
YYYY-MM-DDTHH:MM:SSZ | agent-name | event-type | project-slug | detail text
```

**Event types:**
| Type | When | Detail field |
|------|------|-------------|
| `session-start` | Session begins | What you plan to work on |
| `session-end` | Session ends | Brief summary of what was done |
| `decision` | A technical decision is made | The decision and reasoning |
| `blocker` | Something blocks progress | What's blocked and why |
| `blocker-resolve` | A blocker is resolved | How it was resolved |
| `milestone` | A significant achievement | What was accomplished |
| `handoff` | Work passed to another agent | Who received it and context |
| `note` | Informational | The note content |

**Agent names:** `claude-code`, `codex`, `goose`, `kimi`, `kiro`, `hermes`, `antigravity`, `cursor`
**Project slugs:** `symphony`, `free-claude-code`, `hermes-ecosystem`, `hermes-metaclaw`, `wiki-obsidian`, `newsletter-platform`, `multica-dashboard`, or leave empty for general work.

**Rules:**
1. Always prepend (newest at top). Never edit or delete existing lines.
2. Use your exact agent name from the list above.
3. Include intent on session-start, summary on session-end.
4. NOW.md is auto-generated — never edit it directly. Regenerate via `bash build-context.sh` (also runs on `sync.sh`). If the ACTIVITY header is missing, `build-context.sh --repair-only` restores it.
5. ACTIVITY.md is auto-trimmed to 500 entries by sync.sh. Overflow archived to `activity-archive/YYYY-MM.md`.
6. **MANDATORY: Log what you're working on.** Every session must:
   - Write a `session-start` entry to ACTIVITY.md with a clear description of what you plan to work on.
   - Write a `session-end` entry when done with a summary of what was accomplished.
   - Log `decision`, `blocker`, `blocker-resolve`, or `milestone` entries as they happen during the session.
   - If you're in the middle of work (not finished), write a `note` entry with current status so other agents know what's in progress.
   - **No ghost sessions.** If you started working, there must be a trail in ACTIVITY.md. Other agents rely on this to avoid duplicate work and hand off cleanly.

## Sync Architecture

```
Mac (iCloud)
├── Claude Code  ←──symlink──→ memory/
├── Codex        ←──reads────→ vault/
├── Goose        ←──reads────→ vault/
├── Kimi         ←──reads────→ vault/
├── Kiro         ←──reads────→ vault/
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

**Mac agents** read/write directly to iCloud. The launchd sync handles pushing to GitHub.

**Hermes (VPS)** reads/writes via git. Cron keeps it in sync.

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

## For Codex (Mac)

Point Codex at this vault. Add to your `AGENTS.md` or project config:
```
Memory vault: /Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding
Read MEMORY.md first, then follow links. Save new memories to the correct type folder.
```

Read/write directly — same iCloud files as Claude Code.

## For Goose (Mac)

Point Goose at this vault. Add to your Goose config or session instructions:
```
Memory vault: /Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding
Read MEMORY.md first, then follow links. Save new memories to the correct type folder.
```

Read/write directly — same iCloud files as Claude Code.

## For Kimi (Mac)

Point Kimi at this vault. Add to your session or config:
```
Memory vault: /Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding
Read MEMORY.md first, then follow links. Save new memories to the correct type folder.
```

Read/write directly — same iCloud files as Claude Code.

## For Kiro (Mac)

Kiro reads instructions from `.kiro/steering/` in each project.

A steering file is already at:
```
/Volumes/M2 Media/Coding Dwayne/Claude/.kiro/steering/agent-memory.md
```

For other projects, create the same file:
```bash
mkdir -p <project-root>/.kiro/steering
cp "/Volumes/M2 Media/Coding Dwayne/Claude/.kiro/steering/agent-memory.md" <project-root>/.kiro/steering/
```

Read/write directly — same iCloud files as Claude Code.

## For Cursor (Mac)

Open this vault as the workspace, or add to project rules:
```
Memory vault: /Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding
Read STANDING-ORDERS.md, NOW.md, and Agents/cursor.md at session start. Log to ACTIVITY.md as agent name `cursor`.
Check Agent Inbox/cursor.md for Dashboard dispatches.
```

Workspace `CLAUDE.md` carries fleet standing orders when this vault is the active project. Read/write directly — same iCloud files as other Mac agents.

## For Hermes (VPS)

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

## Rules

1. **One file per topic**, not per session. Update existing files rather than creating duplicates.
2. **Update MEMORY.md** when adding or removing files.
3. **Use the type folders.** Don't dump files at the root.
4. **Keep frontmatter accurate** — name, description, and type must match the content.
5. **Link related memories** with `[[wikilinks]]` so the graph stays connected.
6. **Verify before trusting** — memories are point-in-time. If something seems stale, check current state before acting on it.
7. **Never delete** another agent's memory without confirming with the user.
8. **Pull before push** — Hermes must always `git pull --rebase` before writing.
9. **Log your work — mandatory.** Every agent must write to ACTIVITY.md at session start and end, and log decisions/blockers/milestones mid-session. Other agents and the user rely on this log to know what's happening. Unlogged work is invisible work.
