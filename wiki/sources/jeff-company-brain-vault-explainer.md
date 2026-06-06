---
type: source
created: 2026-06-05
updated: 2026-06-05
source_file: "[[raw/processed/docs/jeff-company-brain_vault-explainer.md]]"
tags: [document]
aliases: ["Building a Company Knowledge Vault", "Company Brain Explainer"]
---

# Building a Company Knowledge Vault - Summary

## Source
- Original file: [[raw/processed/docs/jeff-company-brain_vault-explainer.md]]
- Ingested: 2026-06-05

## Core Content
This source explains how a company knowledge vault built on the [[concepts/llm-curated-wiki|LLM-curated wiki]] pattern works and how to build one. It describes a three-layer flow — raw intake, an LLM-maintained `wiki/` graph, and `projects/` outputs — drawing from five source types (meeting transcripts via [[entities/grain|Grain]], customer feedback, web clippings, backfilled history, and manual drops). The central design principle, credited to [[entities/andrej-karpathy|Andrej Karpathy]], is to use structured wiki articles instead of vector embeddings, so the graph value lives in the `[[wikilinks]]` connecting everything. It closes with the operating advice captured in [[concepts/knowledge-vault-best-practices|knowledge-vault best practices]] and the [[concepts/compile-raw|compile-raw]] procedure.

## Key Entities
- [[entities/andrej-karpathy|Andrej Karpathy]]
- [[entities/grain|Grain]]

## Key Concepts
- [[concepts/llm-curated-wiki|LLM-curated wiki]]
- [[concepts/compile-raw|compile-raw]]
- [[concepts/knowledge-vault-best-practices|knowledge-vault best practices]]

## Main Points
- **Structured wiki over embeddings**: "structured wiki articles instead of vector embeddings."
- **One direction of flow**: raw → wiki → projects; raw files are never edited, only processed.
- **Better than RAG**: "this works better than RAG for a knowledge graph because the structure is explicit."
- **Compounding value**: "By week two it starts feeling like talking to someone who was in all your meetings."
