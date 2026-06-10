---
name: project-free-claude-code
description: Middleware proxy routing Anthropic API traffic to alternative AI providers
metadata:
  type: project
---

## What it is

Free Claude Code (FCC) is a middleware proxy that routes Anthropic Messages API traffic from Claude Code CLI (and other clients) to alternative AI providers. Keeps the client-side protocol stable while allowing free, paid, or local models.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/free-claude-code/`

**Status:** Active — 506+ commits, last commit 2026-05-22. Published at `github.com/Alishahryar1/free-claude-code`. Version 2.0.0.

## Tech Stack

- Python 3.14, FastAPI, Uvicorn, httpx
- Testing: pytest + pytest-asyncio + pytest-xdist
- Linting: ruff, type checking: ty
- Package manager: uv (hatchling)

## Key Structure

- `api/` — FastAPI routes and admin UI
- `providers/` — 12+ provider backends (nvidia_nim, deepseek, kimi, ollama, llamacpp, open_router, fireworks, zai, opencode, etc.)
- `core/` — shared Anthropic protocol logic
- `messaging/` — event pipeline, rendering, transcription, platforms
- `cli/` — CLI entrypoints

## Key Features

- 11+ provider backends with per-model routing
- Native Claude Code `/model` picker support
- Streaming, tool use, reasoning/thinking block handling
- Admin UI at `/admin`
- Voice transcription (Whisper local or NVIDIA RIVA)
- CI enforced: ruff format, ruff check, ty, pytest

**Why:** Core infrastructure for routing LLM calls — connects to Dwayne's GLM/Z.ai setup and multi-provider strategy.

**How to apply:** When adding new providers or fixing API routing issues, this is the proxy layer.

## Links
- [[claude-code-glm]]
