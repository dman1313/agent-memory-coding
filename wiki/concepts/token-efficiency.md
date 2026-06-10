---
type: concept
created: 2026-06-10
sources:
  - "[[sources/agent-ready-making-websites-readable]]"
  - "[[sources/agent-ready-html-scan-cost]]"
tags: technology
aliases: ["token efficiency", "token cost"]
---

# Token Efficiency

## Definition

Minimizing LLM tokens consumed when an agent browses or scans content. Tokens are the unit of compute cost; agents preferentially visit lower-cost sites as usage scales.

## Key Characteristics

- HTML-heavy pages cost more tokens than clean Markdown/JSON
- Agents will favour token-efficient sites over expensive ones
- Directly impacts operator cost and agent response speed

## Applications

- [[entities/agent-ready|Agent Ready]]: serves Markdown/JSON layer via Cloudflare Worker alongside HTML
- Agent-friendly content formatting (structured data, clear headings)

## Related Concepts

- [[concepts/agent-friendly-web|Agent-Friendly Web]]
- [[concepts/agentic-ai|Agentic AI]]

## Related Entities

- [[entities/agent-ready|Agent Ready]]
- [[concepts/human-good-principle|Human Good AI]]

## Mentions in Source

> "if you can put it in an agent-ready format, it reduces the amount of tokens or the cost of searching your website"

> "they're going to go to the sites that are easier to read. Means reducing your amount of cost to scan your webpage, meaning there's a larger chance that you're going to get more visitors."
