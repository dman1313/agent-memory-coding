---
name: project-hermes-ecosystem
description: Hermes/OpenClaw agent ecosystem — Sherlock, Special Ops, DREAM, Firehose fleet
metadata:
  type: project
---

Skills in the Anti-Gravity/Skills repo are designed as instructions for AI agents (Hermes, OpenClaw), not for direct human use in Claude Code. The agent fleet includes Sherlock (research), Special Ops (orchestration), DREAM (quality tracking), and Firehose (trending topics). Communication Officer agent is planned but not yet built.

**Why:** Changes how skills are authored — they need to be agent-consumable, self-contained workflows with clear handoffs between agents.

**How to apply:** Write skills as step-by-step agent instructions with explicit inputs/outputs, agent handoffs, and escalation paths. Don't assume human-in-the-loop for routine steps.
