---
name: vault-purpose
description: Dual purpose — the fleet's coordination layer AND Dwayne's second brain; fleet collects information for/with Dwayne, state keyed by project name
metadata:
  type: project
---

# Vault Purpose

_Rewritten 2026-06-11 per Dwayne (spec amendment, sdd/specs/2026-06-11-fleet-plan-board/): the previous version described only the second-brain half._

This vault is **two things at once**:

1. **The fleet's coordination layer** — shared memory and operating system for all of Dwayne's coding agents: session ritual, ACTIVITY log, NOW dashboard, Plan board, per-agent profiles, decisions.
2. **Dwayne's second brain** — the fleet works *with* Dwayne and collects information *for* him here. Knowledge compounds in `wiki/` (Karpathy LLM-wiki pattern); working state lives in `Project/` resume points and `Plan/` tasks.

**The day-one test:** an agent says "I'm MacH — I look at the vault right away: okay, I was working on this program before. I read the content, and I start from there." Two file reads (`Agents/{name}.md` → `Project/<slug>.md`), no re-researching, no archaeology. The vault is the central place for everyone.

## Design Principles

1. **Structured wiki over vector embeddings** — human-readable markdown with `[[wikilinks]]` (Karpathy's approach).
2. **Raw intake → curated wiki → working state** — `raw/` (immutable inbox) → `wiki/` (append-only knowledge graph) → `Project/` + `Plan/` (resume points and work queue) referencing wiki as context.
3. **Append-only history** — dated sections, never overwrite. Stopping is never losing.
4. **Cross-link aggressively** — islands are failures; the graph's value compounds through connections.
5. **Research once** — check the vault before researching (resume page → `wiki/index.md` → `Reference/` → `DECISIONS.md`); write findings back where they belong.
6. **State keyed by project name** — the same slug names the ACTIVITY entries, the board task `project:` field, and the `Project/<slug>.md` resume page.

## Rules for Agents

Full protocol: `STANDING-ORDERS.md` (fleet) and `schema/AGENTS.md` (wiki, read-only). Board contract: `Plan/README.md`.

## Related

The separate personal trading vault (second-brain repo, stock/trade ideas) follows the same wiki pattern — it is a different vault with its own remote. [[Project/wiki-obsidian]] · [[Project/agent-memory]]
