---
type: concept
created: 2026-06-10
sources:
  - "[[sources/agentic-wiki-teacher-assistant]]"
tags: method
aliases: ["teacher AI assistant", "wiki-based teacher support", "curriculum AI"]
---

# Teacher AI Assistant

## Definition

An AI agent backed by a wiki of curriculum documents, lesson plans, meeting notes, and school policies — acting as a personal assistant that helps teachers plan, reminds them of decisions they made, and surfaces connections across the curriculum. Proposed by [[entities/dwayne-primeau|Dwayne Primeau]] as a near-term buildable project.

## Key Characteristics

- Ingests: curriculum outcomes, program of inquiry, lesson reflections, meeting notes, school policies
- Acts as: thinking partner (advice on lessons), long-range planner (cross-unit connections), reminder system (field trip letters, permission forms)
- Stores teacher decisions in memory and recalls them at relevant moments
- Differentiates from generic chatbot: context-aware, school-specific, privacy-conscious (GDPR)
- Built on a [[concepts/llm-curated-wiki|llm-curated-wiki]] pattern

## Applications

- Grade 2 math: fractions lesson didn't go well → agent suggests revisiting in a later unit with real-world context
- Field trip reminders: "Your Farm to Table unit is coming up — here's a checklist"
- Curriculum coverage: flag cohorts struggling on specific outcomes

## Related Concepts

- [[concepts/llm-curated-wiki|llm-curated-wiki]]
- [[concepts/agentic-ai|Agentic AI]]
- [[concepts/ib-pyp|IB PYP]]

## Related Entities

- [[entities/dwayne-primeau|Dwayne Primeau]] — conceptualised and plans to build it
- [[concepts/human-good-principle|Human Good AI]]
- [[entities/ics-paris|ICS Paris]] — intended use context

## Mentions in Source

> "you could take a policy's procedures, you could take curriculum documents, teaching lessons, and put them into an agent's memory. And then this agent would work with you to come up with learning outcomes, help coach you along the way."

> "The agent can say, 'Hey, you've got a unit on sustainability, farms, markets and all that. You could put in a unit on fractions there.' Suddenly, fractions isn't an isolated skill — it's connected to real contexts."

> "it'll remind you, 'Hey, Dwayne. Here's the kind of activity you decided, and here is the information you were thinking about.'"
