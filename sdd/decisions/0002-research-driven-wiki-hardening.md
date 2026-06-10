# ADR 0002: Research-driven wiki hardening

- **Status:** Accepted
- **Date:** 2026-06-10 · **Deciders:** Dwayne Primeau, claude-code

## Context
Dwayne's NotebookLM research notebook ("LLM Wiki: A Compounding Personal Knowledge Base Architecture") was queried with seven architecture questions (answers archived at `raw/notebooklm-wiki-research-2026-06-10.md`, ingested into the wiki thereafter). It flagged five challenges to the vault's Knowledge-Curator architecture. The same week, an accidental relocation of `schema/`, `sdd/`, `Reference/`, and `skills-for-mac/` into `raw/` demonstrated the multi-agent write risk concretely, and the documented 15-minute auto-sync launchd job was found to not exist.

## Decision
Adopt four of the five recommendations now:
1. **Multi-agent write contract** in `schema/AGENTS.md` — pull-before-write; curator owns `wiki/`; other agents contribute via `raw/`; infrastructure folders never enter `raw/`; Tier-1 (`schema/*`, `STANDING-ORDERS.md`) read-only for agents.
2. **Schema alignment at ingestion** in `curate-modes.md › compile` — mandatory alias/index check before creating any new page.
3. **Pre-write self-lint** in `curate-modes.md › compile` — link/quote/tag/index checks must pass before a raw file is marked processed.
4. **Page lifecycle** in `wiki/schema/config.md` — optional `status: active|stale|contradicted|archived` frontmatter, maintained by lint; `ask` skips archived pages; append-only body preserved.

Also: install `~/Library/LaunchAgents/com.dwayne.vault-sync.plist` (900s interval) so the documented auto-sync actually runs.

**Deferred:** hybrid search (BM25 + vector). Link-based retrieval is adequate at ~70 pages; revisit when the wiki approaches ~300 pages (the research's degradation threshold).

## Consequences
- Ingestion gets slightly slower (alias check + self-lint per compile) in exchange for a cleaner graph and no duplicate nodes.
- Lifecycle states give retrieval a freshness signal without breaking append-only history.
- The write contract constrains non-curator agents to `raw/` — less flexible, far safer.
- Auto-sync reduces drift windows to ≤15 min; `sync.sh`'s blind `git add -A` remains a known limitation (acceptable for now; harden later if it bites).

## Alternatives considered
- **Per-file locking / OCC daemon** — heavier machinery than a fleet this size needs; git rebase + the write contract covers the realistic conflict surface.
- **Adopt hybrid search now** — premature at current scale; recorded as a trigger instead.
