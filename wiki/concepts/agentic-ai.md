---
type: concept
created: 2026-06-10
sources:
  - "[[sources/agent-ready-making-websites-readable]]"
  - "[[sources/agentic-ai-drip-feed]]"
  - "[[sources/human-good-agent-ready-back-office]]"
  - "[[sources/building-effective-ai-agents]]"
  - "[[sources/symposium-rust-agents]]"
tags: technology
aliases: ["Agentic AI", "agentic frameworks", "agents", "AI agents"]
---

# Agentic AI

## Definition

AI systems that go beyond responding to prompts and instead act autonomously — executing tasks, using tools, browsing the web, running code, and making sequential decisions on a user's behalf. Distinguished from simple chatbots by their capacity for initiative and multi-step action. Anthropic distinguishes **workflows** (LLM orchestrated by predefined code) from **agents** (LLM dynamically directing its own process).

## Key Characteristics

- Agents can be given personas and delegated specific roles (travel agent, email triage agent, etc.)
- They consume tokens (LLM compute cost) proportional to complexity of tasks
- Operate within "agentic frameworks" — environments hosting multiple virtual workers
- Can take real-world actions: purchasing, emailing, browsing, coding
- Best practice (Anthropic): start simple, only add agent complexity when workflow patterns are insufficient

## Applications

- **Email triage:** surface priority parent emails for school leaders
- **Back office automation:** volunteer rosters, scheduling, marketing for nonprofits
- **Web scraping/browsing:** personal agents scanning websites on behalf of users — driving the need for [[concepts/agent-friendly-web|Agent-Friendly Web]]
- **Curriculum planning support:** wiki-based teacher assistant (see [[concepts/teacher-ai-assistant|Teacher AI Assistant]])
- **Development toolchains:** Symposium project (Rust community) — agents using up-to-date crate guidance

## Related Concepts

- [[concepts/agent-friendly-web|Agent-Friendly Web]]
- [[concepts/token-efficiency|Token Efficiency]]
- [[concepts/ai-back-office|AI Back Office]]
- [[concepts/drip-feed-ai-adoption|Drip-feed AI Adoption]]
- [[concepts/teacher-ai-assistant|Teacher AI Assistant]]

## Related Entities

- [[concepts/human-good-principle|Human Good AI]] — builds agentic solutions for nonprofits/schools
- [[entities/agent-ready|Agent Ready]] — product for agent-friendly websites
- [[entities/dwayne-primeau|Dwayne Primeau]] — self-described "agentic engineer"

## Mentions in Source

> "agentic frameworks. And what an agentic framework is, is it's a place where you hold multiple virtual workers. So an agent is basically one virtual chatbot. However, the word agentic means to be able to create and run and do stuff."

> "Agents are systems where LLMs dynamically direct their own processes and tool usage, maintaining control over how they accomplish tasks."

> "it's about building an office of agents with different skill sets that will be able to do and take down some of the workload"
