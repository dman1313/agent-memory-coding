---
type: source
created: 2026-06-10
source_file: "[[raw/Building Effective AI Agents.md]]"
tags: document
aliases: ["Anthropic building effective agents"]
---

# Building Effective AI Agents (Anthropic)

## Source

- **File:** `Building Effective AI Agents.md`
- **URL:** https://www.anthropic.com/engineering/building-effective-agents
- **Created:** 2026-06-08

## Core Content

Anthropic's engineering guide on building reliable agentic systems. Key distinction: **workflows** (predefined code paths) vs **agents** (LLM dynamically directs its own process). Recommends starting simple — augmented LLM calls before adding agentic complexity. Covers: building blocks (augmented LLM), workflow patterns, autonomous agents, MCP, and frameworks (Claude Agent SDK, Strands, Rivet, Vellum).

## Key Concepts

- [[concepts/agentic-ai|Agentic AI]]

## Main Points

- Most successful implementations use simple, composable patterns — not complex frameworks
- Start with direct LLM API calls; add frameworks only when needed
- Workflows = predictable; agents = flexible but costly in latency/compute
- MCP: standard way to integrate third-party tools
