---
name: project-symphony
description: Multi-agent coding orchestrator — Rust daemon that dispatches AI agents to resolve issues
metadata:
  type: project
---

## What it is

Symphony is a multi-agent coding orchestrator written in Rust. It polls issue trackers (Linear, GitHub, or local JSON), creates per-issue workspaces, and dispatches AI coding agents (Claude Code, Codex, Hermes) to resolve issues automatically.

**Location:** `/Volumes/M2 Media/Coding Dwayne/symphony/`

**Status:** Active — last commit 2026-05-25

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

## Current Dashboard State (2026-05-25)

- Local dashboard runs at `http://127.0.0.1:18119/` from `/Volumes/M2 Media/Coding Dwayne/symphony/`.
- Linear API token is stored in macOS Keychain service `symphony-linear-api-key`; do not print it.
- `WORKFLOW.md` is configured locally for Linear project slug `5ab40fc3fbf2` (`Hermes Dashboard`).
- Dashboard Tasks now reads Linear issues and can create or update Linear issues in the configured project; destructive deletes still happen in Linear.
- Scheduler dispatches Linear issues in active states `Todo` and `In Progress`; moving issues out of those states pauses dispatch.
- HUM-25 was moved to `Backlog` to pause a failing Claude worker loop. Current stable dashboard state: active count 0, no running agents, no retries.
- Scheduler releases retry claims immediately when a retried issue is moved out of active states, so paused issues stop appearing as stuck retries.
- Linear API hit its hourly rate limit on 2026-05-25. Local `WORKFLOW.md` polling was slowed to `600000` ms to avoid hammering Linear during school beta testing. Tasks endpoint now maps Linear rate limits to HTTP 429 with a clear message.

**Why:** Central orchestrator for the agent fleet — routes issues to the right agent automatically.

**How to apply:** When working on agent integrations or multi-agent workflows, Symphony is the coordination layer. New agent backends go in `symphony-agent/`.

## Links
- [[Project/hermes-ecosystem]]
- [[Project/hermes-metaclaw]]
