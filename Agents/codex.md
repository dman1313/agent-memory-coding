---
name: agent-codex
description: OpenAI Codex CLI — skill/plugin creation specialist, image generation
metadata:
  type: agents
---

# Codex

**Platform:** Mac
**Model:** kimi-for-coding (via Kimi API)
**Memory:** Reads vault directly from iCloud
**Config:** `~/.codex/AGENTS.md`

## Skills

### User Skills
- **kimi-webbridge** — Browser automation, same as Claude's version

### System Skills
- **skill-creator** — Guide for creating effective Codex skills
- **plugin-creator** — Scaffold plugin directories with manifests
- **skill-installer** — Install skills from GitHub repos or curated list
- **openai-docs** — Authoritative OpenAI developer documentation lookup
- **imagegen** — Generate/edit images with `gpt-image-2`, chroma-key removal, batch workflows

## Strengths
- Best for: creating new skills/plugins, image generation
- Has OpenAI docs access for model/API questions
- Can teach other agents how to build skills (skill-creator is a meta-skill worth sharing)
