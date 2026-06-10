---
type: entity
created: 2026-06-10
sources:
  - "[[sources/agent-ready-making-websites-readable]]"
  - "[[sources/agent-ready-html-scan-cost]]"
  - "[[sources/human-good-agent-ready-back-office]]"
tags: product
aliases: ["AgentReady", "agent-ready"]
---

# Agent Ready

## Basic Information

- **Type:** product (SaaS / website layer)
- **Organization:** [[concepts/human-good-principle|Human Good AI]]
- **Status:** trial (as of 2026-06)
- **Tech:** Cloudflare Worker layer

## Description

Agent Ready is [[concepts/human-good-principle|Human Good AI]]'s first commercial product. It adds a Cloudflare Worker layer to a customer's existing website, serving content in agent-friendly formats (Markdown, JSON) alongside the standard HTML — without requiring any changes to the customer's site. As AI agents become the primary way people browse the web, websites that are hard (token-expensive) for agents to parse will receive fewer agent-driven visits. Agent Ready reduces the token cost of scanning a site, making it more accessible to personal AI agents. Currently in trial with a small number of customers, with early results showing improved token efficiency during agent scans.

## Related Entities

- [[concepts/human-good-principle|Human Good AI]] — parent org
- [[entities/dwayne-primeau|Dwayne Primeau]] — builder

## Related Concepts

- [[concepts/agentic-ai|Agentic AI]]
- [[concepts/token-efficiency|Token Efficiency]]
- [[concepts/agent-friendly-web|Agent-Friendly Web]]

## Mentions in Source

> "Agent Ready described as a service that: Searches/tests a website to assess what's in HTML vs. agent-friendly formats; Helps ensure content is accessible in formats agents prefer (Markdown/JSON; simple/digestible structures)"

> "you connect to Cloudflare, which everybody knows Cloudflare, very secure great system. And we have a worker on Cloudflare that will get to put a layer on that sets your website up to be agent ready"

> "if you can put it in an agent-ready format, it reduces the amount of tokens or the cost of searching your website. It also makes it more friendly to personal agents."

> "we've been testing it out with a couple different customers and they've found that it makes the token usages in scanning the websites more efficient"
