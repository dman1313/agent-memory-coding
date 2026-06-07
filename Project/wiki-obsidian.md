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
