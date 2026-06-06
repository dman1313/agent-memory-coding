---
type: concept
created: 2026-06-05
sources: ["[[sources/jeff-company-brain-compile-raw-skill]]", "[[sources/jeff-company-brain-vault-explainer]]"]
tags: [sop]
aliases: ["compile raw", "raw-to-wiki ingestion"]
---

# compile-raw

## Definition
compile-raw is the standard operating procedure for turning unprocessed `raw/` files into curated `wiki/` pages: find unprocessed files, extract entities/concepts/decisions selectively, create or append dated sections, cross-link aggressively, then mark the raw file processed and archive it. In this vault it is implemented as the `compile` mode in `schema/curate-modes.md`.

## Key Characteristics
- **Find → extract → append → link → archive** — a linear, append-only pipeline.
- **Selective extraction** — passing mentions don't earn pages.
- **Direct quotes for strong claims** — minimize interpretation; flag uncertainty.
- **Flag, don't merge** — overlaps are surfaced for human decision.
- **Raw is immutable** — only the `processed` flag changes; files move to `raw/processed/<category>/`.

## Applications
- The core ingest step of the [[concepts/llm-curated-wiki|LLM-curated wiki]].
- Run via the `curate compile` mode (or `scribe` for transcripts).

## Related Concepts
- [[concepts/llm-curated-wiki|LLM-curated wiki]]
- [[concepts/knowledge-vault-best-practices|knowledge-vault best practices]]
- [[concepts/Classification-Rules|Classification Rules]]

## Related Entities
- [[entities/grain|Grain]]

## Mentions in Source
- "Your job is to turn raw inputs into a well-linked wiki."
- "An article with zero outbound links is a failure."
