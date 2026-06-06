---
type: concept
created: 2026-06-05
sources: ["[[sources/jeff-company-brain-vault-explainer]]"]
tags: [principle]
aliases: ["Knowledge Vault Best Practices", "Second Brain Best Practices"]
---

# knowledge-vault best practices

## Definition
A set of guiding principles for building and sustaining an [[concepts/llm-curated-wiki|LLM-curated wiki]], distilled from real-world experience running a company knowledge vault. They govern how sources are ingested, how history is preserved, and how to tell whether the vault is earning its keep.

## Key Characteristics
- **Start with one source, not five** — build ingestion for the single most valuable source first, stabilize, then add more.
- **Raw files are sacred** — never edit them; mark processed and nothing else, preserving the audit trail for re-compiles.
- **Append, never overwrite** — dated sections show how understanding evolved (the "mindset" growing over time).
- **Cross-link aggressively** — "a person article without company links, topic links, and meeting source links is an island."
- **Explicit rules in writing** — agents skip implicit rules; write them down once (this vault: `schema/AGENTS.md` + `schema/curate-modes.md`).
- **Set a 6-week forcing function** — if outputs aren't clearly better after six weeks, kill it and learn from the postmortem.

## Applications
- Operating guidance for this vault's curator and any fleet agent.
- A `principle`-tagged page that grows append-only as practice evolves.

## Related Concepts
- [[concepts/llm-curated-wiki|LLM-curated wiki]]
- [[concepts/compile-raw|compile-raw]]

## Related Entities
- [[entities/andrej-karpathy|Andrej Karpathy]]

## Mentions in Source
- "Raw files are sacred. Never edit them. Mark them processed, nothing else."
- "Cross-link aggressively. A person article without company links, topic links, and meeting source links is an island."
