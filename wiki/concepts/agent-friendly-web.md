---
type: concept
created: 2026-06-10
sources:
  - "[[sources/agent-ready-making-websites-readable]]"
  - "[[sources/agent-ready-html-scan-cost]]"
  - "[[sources/human-good-agent-ready-back-office]]"
tags: technology
aliases: ["agent-friendly web", "agent-ready format", "agent-readable"]
---

# Agent-Friendly Web

## Definition

The practice of serving website content in formats optimised for AI agent consumption (Markdown, JSON, structured data) alongside traditional human-facing HTML. As personal AI agents become the primary interface through which people discover and interact with websites, sites that are hard or expensive for agents to parse will be at a competitive disadvantage.

## Key Characteristics

- Humans prefer rich HTML (videos, photos, styling); agents prefer plain, structured text
- Agent-friendly formats: Markdown, JSON, well-labelled headings, minimal decoration
- Can be served via a Cloudflare Worker layer — no change required to the origin site
- Reduces [[concepts/token-efficiency|token cost]] per agent visit
- Increases likelihood of being visited by agent-driven users

## Applications

- [[entities/agent-ready|Agent Ready]] product implements this as a Cloudflare Worker
- Any website wanting to attract AI-agent traffic or reduce scan costs

## Related Concepts

- [[concepts/token-efficiency|Token Efficiency]]
- [[concepts/agentic-ai|Agentic AI]]

## Related Entities

- [[entities/agent-ready|Agent Ready]]
- [[concepts/human-good-principle|Human Good AI]]

## Mentions in Source

> "Humans like HTML, they like videos, they like photos. Agents don't. Agents like Markdown, they like simple, they want to digest that information and collate it and then move forward."

> "we have a worker on Cloudflare that will get to put a layer on that sets your website up to be agent ready so agents can read it and maximizes their token usage"
