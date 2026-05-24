---
name: project-newsletter-platform
description: Agent-first newsletter production system — Telegram voice to polished HTML email
metadata:
  type: project
---

## What it is

Agent-first newsletter production system. Turns Telegram voice notes and photos into polished, accessible HTML email newsletters.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/newsletter-platform/`

**Status:** Stalled — last modified 2026-04-13. No git repo. Several roadmap items unchecked.

## Tech Stack

- TypeScript, Next.js 14 (App Router), Tailwind CSS, Zod
- OpenAI Whisper (transcription), OpenAI-compatible LLM (content generation)
- File-based JSON storage (MVP, no database yet)

## Pipeline

1. Receive from Telegram → 2. Transcribe → 3. Extract topic → 4. Research → 5. Rewrite for audience → 6. Structure blocks → 7. Render HTML → 8. Export → 9. Human review

## Key Features

- SSE-based real-time pipeline progress
- Multiple export formats (HTML, plaintext, EML, social summary, WhatsApp broadcast, PDF flyer)
- A/B subject line testing, audience targeting commands
- WCAG AA accessibility compliance
- Three agent providers (stub, openclaw, hermes)

**Why:** Automates newsletter production from voice input. Uses the Hermes/OpenClaw agent system for content generation.

**How to apply:** Needs database integration, email distribution, and cron scheduling to complete. Connected to [[Project/hermes-ecosystem]].

## Links
- [[Project/hermes-ecosystem]]
