# Agent Memory — Coding Vault

Shared memory system for Dwayne Primeau's coding agent fleet. All agents read and write here.

## Session Startup (mandatory)

On every session start — in this order, no skipping:
1. Read `STANDING-ORDERS.md` — your standing instructions as a fleet agent
2. Read `NOW.md` — current fleet state and active work
3. Read `Agents/{your-agent-name}.md` — your own memory file
4. Log a session-start entry to `ACTIVITY.md`

Never skip startup reads. Other agents rely on this vault being current.

## Knowledge Routing

| Content type | File / Folder |
|---|---|
| Consolidated context (read first) | CONTEXT.md |
| Current fleet state, blockers, milestones | NOW.md |
| Full memory index | MEMORY.md |
| Agent setup, sync architecture, per-agent instructions | AGENT-SETUP.md |
| Inter-agent messages | AGENT-CHANNEL.md |
| Activity log (append-only) | ACTIVITY.md |
| **LLM Wiki operational rules (read-only)** | **schema/AGENTS.md** |
| Raw inbox (unprocessed sources) | raw/ |
| Processed raw archive (immutable) | raw/processed/ |
| Knowledge graph (entities, concepts, sources) | wiki/ |
| User preferences, role, working style | User/ |
| How Dwayne wants work done | Feedback/ |
| Active projects and context | Project/ |
| Per-agent profiles | Agents/ |
| External systems, infrastructure | Reference/ |

## LLM Wiki / Knowledge Curator

When ingesting `raw/`, editing `wiki/`, or running a wiki health check:

1. Read `schema/AGENTS.md` — master operational rules
2. Read `wiki/index.md` — existing graph catalog
3. Follow ingestion protocol: extract → append → cross-link → mark processed → archive raw
4. Never delete raw files; never overwrite wiki history
5. Log curation work to `wiki/log.md` and `ACTIVITY.md`

## Memory File Format

```yaml
---
name: short-kebab-case-slug
description: One-line summary for quick relevance scanning
metadata:
  type: user | feedback | project | reference
---
```

Body uses [[wikilinks]] to connect related memories.

## Activity Log Format

Prepend to ACTIVITY.md (newest at top, never edit existing lines):

```
YYYY-MM-DDTHH:MM:SSZ | agent-name | event-type | project-slug | detail
```

Event types: session-start, session-end, decision, blocker, blocker-resolve, milestone, handoff, note

Agent names: claude-code, codex, goose, kimi, kiro, hermes, antigravity, cursor

After writing 5+ entries: bash build-context.sh

## Rules

1. Read CONTEXT.md, NOW.md, and ACTIVITY.md at every session start.
2. Log session-start and session-end to ACTIVITY.md every session. No ghost sessions.
3. One file per topic. Update existing files, don't create duplicates.
4. Update MEMORY.md when adding or removing files.
5. Use [[wikilinks]] to connect related memories.
6. Verify memories before trusting — they are point-in-time snapshots.
7. Never delete another agent's memory without asking Dwayne first.
8. Hermes must git pull before writing.
9. Log decisions, blockers, and milestones as they happen — not just at session end.

## Vault Owner

- Name: Dwayne Primeau
- Preferred language: Rust (when possible)
- Working directory: /Volumes/M2 Media/Coding Dwayne/Claude
- Personal vault: /Volumes/M2 Media/DROPBOX/Dropbox/Second Brain V2/BRAIN/
