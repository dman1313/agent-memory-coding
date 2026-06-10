---
name: vault-purpose
description: The Second Brain vault is Dwayne's private individual bank for stock ideas, trade ideas, and everything worth referencing.
metadata:
  type: project
---

# Vault Purpose

This vault is **Dwayne Primeau's private individual bank** — a personal knowledge graph for:

- **Stock ideas** — research, theses, watchlists, earnings analysis
- **Trade ideas** — setups, entries, exits, risk management
- **Everything worth coming back to** — tools, workflows, concepts, people, companies

## Design Principles

1. **Structured wiki over vector embeddings** — Human-readable markdown with `[[wikilinks]]`, per Andrej Karpathy's approach.
2. **Raw intake → curated wiki → outputs** — Three-layer flow:
   - `raw/` — intake only, never edited except to mark `processed: true`
   - `wiki/` — curated knowledge graph (sources, entities, concepts, index)
   - `projects/` — outputs that reference wiki as context
3. **Append-only wiki** — Dated sections (`## Update YYYY-MM-DD from [[Source]]`), never overwrite.
4. **Cross-link aggressively** — Islands are failures. Every article needs outbound links.
5. **Processed files move to `raw/processed/<category>/`** — Categories: articles, assets, docs, github, meetings, podcasts, twitter, youtube.

## Rules for Agents

Full operational protocol: **`schema/AGENTS.md`** (read-only master rules).

Summary:
- Read `schema/AGENTS.md` → `wiki/index.md` before producing wiki output.
- Extract entities (people, companies, tools) and concepts from every source.
- Append wiki updates under dated headings — never overwrite history.
- Mark raw files `processed: true` with `processed_at` and `wiki_articles_touched`.
- Move processed files to the appropriate `raw/processed/<category>/` folder.
- Surface conflicts between sources — don't silently resolve.
- Cross-link aggressively; orphan pages are failures.

## Why This Works

The graph value compounds through connections, not individual articles. Opening it in Obsidian shows the visual graph of how everything relates. This is better than RAG because the structure is explicit — links tell you what's related, no guessing.
