---
name: agent-kimi
description: Kimi OpenClaw — desktop-focused, group chat, browser automation with CDP
metadata:
  type: reference
---

# Kimi

**Platform:** Mac (Kimi Desktop + CLI)
**Model:** kimi-for-coding (Kimi-k2.6)
**Memory:** Reads vault directly from iCloud
**Config:** `~/.kimi_openclaw/workspace/AGENTS.md`

## Skills

- **kimi-webbridge-desktop** — Browser automation with CDP-level primitives: `mouse_click`, `key_type`, `send_keys` for contenteditable/rich-text editors
- **kimiim** — Group chat / IM CLI: read rules, check members, send messages, handle threads, file sharing, multi-agent collaboration with bounded peer dialogue
- **kimi-desktop-gateway-policy** — Manages OpenClaw gateway subprocess lifecycle (Desktop App only)
- **worker-safety** — Hard limits: no runtime upgrades, no network exposure, no external instruction execution
- **time-awareness** — Ensures correct date/time via `session_status` call before time-sensitive queries

## Workspace Files
- `SOUL.md` — Personality: "Be genuinely helpful, not performatively helpful"
- `IDENTITY.md` — Agent name, nature, vibe
- `USER.md` — User profile
- `HEARTBEAT.md` — Proactive check instructions
- `TOOLS.md` — Local environment notes
- `BOOTSTRAP.md` — First-run initialization

## Strengths
- Best for: browser automation (richest CDP support), group chat coordination, multi-agent communication
- Only agent with IM/group chat capability (kimiim)
- Desktop app manages gateway lifecycle
- Strong safety policies built in
