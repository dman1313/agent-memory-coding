---
type: entity
created: 2026-06-05
sources: ["[[sources/jeff-company-brain-vault-explainer]]"]
tags: [product]
aliases: ["Grain.com"]
---

# Grain

## Basic Information
- Type: product
- Source: [[sources/jeff-company-brain-vault-explainer|Building a Company Knowledge Vault]]

## Description
Grain is a meeting-recording and transcription tool that served as the primary source pipeline for the company knowledge vault described in the explainer. Transcripts were ingested automatically from Grain via a local webhook server, and a backfill routine pulled historical meetings from Grain's API — together accounting for 98 meetings in the vault's `raw/meetings/`. It is the canonical example of the "start with one source" advice in [[concepts/knowledge-vault-best-practices|knowledge-vault best practices]].

## Related Entities
- No related entities

## Related Concepts
- [[concepts/compile-raw|compile-raw]]
- [[concepts/llm-curated-wiki|LLM-curated wiki]]

## Mentions in Source
- "98 meetings in raw/meetings/, ingested automatically from Grain via a local webhook server."
