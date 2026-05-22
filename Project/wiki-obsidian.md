---
name: project-wiki-obsidian
description: Obsidian vault implementing Karpathy's LLM Wiki pattern, synced via Dropbox from remote server
metadata:
  type: project
---

This directory is an Obsidian vault implementing the LLM Wiki pattern (Karpathy, 2026). The vault is the local Dropbox-synced copy; the canonical live version lives on a remote server.

- **Local path:** `/Volumes/M2 Media/DROPBOX/Dropbox/Obsidian-Wiki`
- **Server path:** `/home/ubuntu/wiki`
- **Dropbox sync:** Server wiki syncs to Dropbox `/Obsidian-Wiki` via `wiki-dropbox-sync` cron job (every 15 min)
- **Raw source for the pattern:** `raw/articles/karpathy-llm-wiki-2026.md` (already ingested 2026-04-18)

**Why:** This is a persistent, compounding knowledge base. The LLM (Claude Code) is the wiki maintainer — it writes, updates, and cross-links pages. The human curates sources and asks questions.

**How to apply:** Always follow the read order in CLAUDE.md (SCHEMA.md → index.md → log.md → pages). The three-layer architecture (raw/ immutable, wiki/ LLM-owned, schema/ config) is non-negotiable. New pages go to index.md, actions go to log.md.
