---
type: concept
created: 2026-06-05
sources: ["[[sources/jeff-company-brain-vault-explainer]]", "[[sources/jeff-company-brain-compile-raw-skill]]"]
tags: [method]
aliases: ["LLM Wiki Pattern", "Structured wiki over embeddings", "Karpathy LLM Wiki"]
---

# LLM-curated wiki

## Definition
An LLM-curated wiki is a knowledge-management pattern in which a language model maintains a graph of human-readable, cross-linked markdown articles — entities, concepts, and sources — instead of storing knowledge as vector embeddings. Credited to [[entities/andrej-karpathy|Andrej Karpathy]], its value lives in explicit `[[wikilinks]]` rather than similarity search.

## Key Characteristics
- **Structured articles over embeddings** — knowledge is curated prose, not vectors.
- **Explicit graph** — relationships are written links, so related context is found by following links, not guessing.
- **Append-only history** — articles accrue dated sections so the arc of understanding is preserved (see [[concepts/knowledge-vault-best-practices|knowledge-vault best practices]]).
- **Human-readable** — the graph opens directly in Obsidian.

## Applications
- Personal or company "second brain" knowledge graphs maintained by an agent (this vault).
- An alternative to RAG where the corpus structure is known and stable.
- Feeding curated context to agents via the [[concepts/compile-raw|compile-raw]] procedure.

## Related Concepts
- [[concepts/compile-raw|compile-raw]]
- [[concepts/knowledge-vault-best-practices|knowledge-vault best practices]]
- [[concepts/Wiki-Structure|Wiki Structure]]
- [[concepts/Wiki-Schema|Wiki Schema]]

## Related Entities
- [[entities/andrej-karpathy|Andrej Karpathy]]

## Mentions in Source
- "The key design principle, borrowed from Andrej Karpathy's approach: structured wiki articles instead of vector embeddings."
- "this works better than RAG for a knowledge graph because the structure is explicit"
