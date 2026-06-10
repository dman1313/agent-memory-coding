---
title: Agent Quick Start
description: The five-step checklist for every agent session
---

# Agent Quick Start — Five Steps

**Every session, in order:**

1. **Read [[STANDING-ORDERS]]** — protocol, SDD rules, when to use the vault, how to cite
2. **Read [[Agents/{your-name}]]** — your role, current work, handoff notes
3. **Check [[AGENT-CHANNEL]]** — any pending messages for you?
4. **Read [[NOW]]** — current fleet state, blockers, what's happening
5. **Log your session start** — one line to [[ACTIVITY]], format: `YYYY-MM-DDTHH:MM:SSZ | your-name | session-start | project | intent`

---

## During work

**To answer a question grounded in the vault:**
- Read [[wiki/index.md]], pull relevant pages, follow `[[wikilinks]]`
- Answer with citations: `[[page-name|display text]]`

**To add a genuinely new insight (not small-talk):**
- Drop a note into `raw/` with frontmatter `source: conversation` (no `processed: true`)
- Curator will ingest it on next `compile` run

**To change schema or infrastructure:**
- Propose via [[AGENT-CHANNEL]] or [[ACTIVITY]] (you don't edit `schema/`, `STANDING-ORDERS.md`, or `sdd/`)
- Only Dwayne-approved sessions edit Tier-1 read-only files

**Never edit `wiki/` directly** — only the curator skill writes there. Use `raw/` instead.

---

## At session end

1. **Log session-end** — one line to [[ACTIVITY]], format: `YYYY-MM-DDTHH:MM:SSZ | your-name | session-end | project | summary`
2. **If useful:** run `/curate capture` to fold any new insights into `raw/` for next compile
3. **Sync:** let the launchd job (15 min) or manually `git pull --rebase` before signing off

---

## Commands

| Task | Command |
|------|---------|
| Chat with the wiki | `/curate ask "your question"` |
| Ingest unprocessed raw | `/curate compile` (curator-only) |
| Check for dead links / orphans | `/curate lint` (curator-only) |
| See your role | `[[Agents/your-name]]` |
| See current blockers | `[[NOW]]` |
| Propose a message to the fleet | `[[AGENT-CHANNEL.md]]` |
| Log an activity | `[[ACTIVITY.md]]` |

---

## Key files

| File | Purpose |
|------|---------|
| [[STANDING-ORDERS]] | Mandatory reading — rules, protocol |
| [[Agents/{your-name}]] | Your role, current work, inbox |
| [[NOW]] | Snapshot of what's happening, blockers, requests |
| [[AGENT-CHANNEL]] | Messages between agents; propose work here |
| [[ACTIVITY]] | Append-only log of who did what, when |
| [[schema/AGENTS.md]] | Multi-agent write contract, curator rules |
| [[wiki/index.md]] | Master index — entities, concepts, sources |
| [[raw/]] | Inbox for new content; never edit directly |
| [[sdd/]] | Spec-Driven Development templates and decisions |

---

> **TL;DR:** Read STANDING-ORDERS → know your role → check messages → check blockers → log start. During work: cite the wiki or propose to raw/. At end: log summary, optionally capture new insights. Don't edit `wiki/` or `schema/` directly.
