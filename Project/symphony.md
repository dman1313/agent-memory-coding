---
name: project-symphony
description: Multi-agent coding orchestrator — Rust daemon that dispatches AI agents to resolve issues
metadata:
  type: project
---

## What it is

Symphony is a multi-agent coding orchestrator written in Rust. It polls issue trackers (Linear, GitHub, or local JSON), creates per-issue workspaces, and dispatches AI coding agents (Claude Code, Codex, Hermes) to resolve issues automatically.

**Location:** `/Volumes/M2 Media/Coding Dwayne/symphony/`

**Status:** Active — last commit 2026-05-23

**Plans:** 3 detailed plans in `/Volumes/M2 Media/Coding Dwayne/Claude/plans/`
- `resilient-launching-patterson.md` — Multi-backend agent runner (fork Symphony crates)
- `stateful-sprouting-bonbon.md` — Standalone mode (LocalTracker, no Linear required)
- `sunny-painting-moler.md` — Backends management page for dashboard

## Tech Stack

- Rust (edition 2024, MSRV 1.85), Tokio, Axum, SQLx (Postgres), Clap
- 8 crates: symphony-core, symphony-config, symphony-tracker, symphony-workspace, symphony-agent, symphony-orchestrator, symphony-observability, symphony-cli

## Key Features

- 3 backend types: command-based (`claude -p`), HTTP/OpenAI-compatible, Codex app-server protocol
- Label-based backend selection per issue
- Built-in web dashboard (chat, swarms, tasks, backends, reports tabs)
- PostgreSQL persistence, workspace scoping

**Why:** Central orchestrator for the agent fleet — routes issues to the right agent automatically.

**How to apply:** When working on agent integrations or multi-agent workflows, Symphony is the coordination layer. New agent backends go in `symphony-agent/`.

## Links
- [[Project/hermes-ecosystem]]
- [[Project/hermes-metaclaw]]
