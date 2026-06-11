---
name: project-wiki-obsidian
description: Obsidian vault implementing Karpathy's LLM Wiki pattern, synced via Dropbox from remote server
metadata:
  type: project
---

This directory is an Obsidian vault implementing the LLM Wiki pattern (Karpathy, 2026). The canonical version lives on the VPS; synced via Git.

- **Server path:** `/home/ubuntu/wiki`
- **Remote:** github.com/dman1313/agent-memory-coding
- **Sync:** Git-only (Dropbox sync removed May 2026)
- **Raw source for the pattern:** `raw/articles/karpathy-llm-wiki-2026.md` (already ingested 2026-04-18)

**Why:** This is a persistent, compounding knowledge base. The LLM (Claude Code) is the wiki maintainer — it writes, updates, and cross-links pages. The human curates sources and asks questions.

**How to apply:** Read order: `schema/AGENTS.md` → `wiki/index.md` → `wiki/log.md` → target pages. The four-layer architecture (`raw/` inbox, `raw/processed/` archive, `wiki/` graph, `schema/` rules) is non-negotiable. New pages go to `wiki/index.md`; curator actions go to `wiki/log.md`. Vault-root `schema/` holds master rules; `wiki/schema/` holds wiki-local config.

## Status now

_Section added 2026-06-11 (resume-point rollout, spec M2)._ Wiki healthy after kiro's 2026-06-10 full compile (93 raw → 20 entities, 13 concepts, 19 sources; 71 pages, 356 links per the 2026-06-11 graph snapshot). Two hygiene items open: 42 archived raw files missing their `processed: true` stamp (re-digestion landmine — T-0007), and 8 orphan sources + 5 dead template links from the lint/graph (T-0008). The janitor now surfaces raw backlog + stamp gaps in NOW.md.

## Next steps

- T-0007 (hyperagent): stamp the 42 archived raw files
- T-0008 (claude-code): curator pass — orphan sources, dead template links, backlinks
- Next compile: regenerate the wiki graph snapshot on request

## Where things live

- Wiki: `wiki/` in this vault (rules: `schema/AGENTS.md`, modes: `schema/curate-modes.md`, skill: `.claude/skills/curate/`)
- Intake: `raw/` → archive `raw/processed/<category>/` · curator log: `wiki/log.md`

## Open tasks

- [[Plan/tasks/T-0007-stamp-archived-raw-files|T-0007]] · [[Plan/tasks/T-0008-wiki-orphans-dead-links|T-0008]]
