---
type: source
created: 2026-06-10
updated: 2026-06-10
source_file: "[[raw/processed/docs/notebooklm-wiki-research-2026-06-10.md]]"
tags: [document]
aliases: ["NotebookLM Wiki Research", "Wiki Architecture Research 2026-06"]
---

# NotebookLM Wiki Research (2026-06-10) - Summary

## Source
- Original file: [[raw/processed/docs/notebooklm-wiki-research-2026-06-10.md]]
- Ingested: 2026-06-10
- Origin: Dwayne's NotebookLM notebook "LLM Wiki: A Compounding Personal Knowledge Base Architecture", queried by the curator with seven architecture questions.

## Core Content
Research-grounded answers on improving this vault's [[concepts/llm-curated-wiki|LLM-curated wiki]]. Five findings explicitly challenged the architecture: link-only retrieval degrades past a few hundred pages (mitigate with hybrid BM25+vector search and hub pages); pure append-only clutters retrieval without an archival tier; and concurrent flat-file writes by multiple agents risk corruption ("Flat File Mutation Danger"). It also recommended schema alignment during ingestion (pass the running entity/alias list to the compiler), pre-write validation hooks, a five-state page lifecycle (`draft → active → stale → contradicted → archived`), Generator-Verifier loops for conversation capture, and RAGAs-style answer-quality metrics. Four recommendations were adopted into the schema the same day (see ADR 0002); hybrid search was deferred until ~300 pages. This extends [[concepts/knowledge-vault-best-practices|knowledge-vault best practices]] and refines [[concepts/compile-raw|compile-raw]].

## Key Entities
- No new standalone entities (methodological research)

## Key Concepts
- [[concepts/llm-curated-wiki|LLM-curated wiki]]
- [[concepts/knowledge-vault-best-practices|knowledge-vault best practices]]
- [[concepts/compile-raw|compile-raw]]

## Main Points
- **Retrieval ceiling**: "an index file works well for medium scales (up to about 100 materials or several hundred pages)" — hybrid search needed beyond that.
- **Multi-agent risk**: "Flat File Mutation Danger" — concurrent writes corrupt pages; fix with locking, directory ownership, or write contracts.
- **Lifecycle over pure append-only**: superseded pages move to an archive tier, out of active retrieval, with history preserved.
- **Schema alignment**: feed the compiler "a running list of active node types" to prevent duplicate/polluting categories.
