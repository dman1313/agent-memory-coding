---
name: agent-goose
description: Block's Goose — platform-style extensions, subagent delegation, app creation
metadata:
  type: agents
---

# Goose

**Platform:** Mac
**Model:** claude-haiku-4.5 (copilot-acp), also kimi-for-coding, xiaomi-mimo
**Memory:** Reads vault directly from iCloud
**Config:** `~/.config/goose/goosehints`

## Extensions (Enabled)

- **analyze** — Code structure analysis with tree-sitter
- **tom** (Top Of Mind) — Inject context via environment variables
- **summon** — Load knowledge and delegate to subagents
- **skills** — Discover/provide skill instructions
- **todo** — Task tracking
- **apps** — Create HTML/CSS/JS apps in sandboxed windows
- **developer** — Write/edit files, execute shell commands
- **extensionmanager** — Discover/enable/disable extensions

## Extensions (Disabled)
- code_execution, orchestrator, chatrecall, summarize

## Providers
- copilot-acp (active): claude-haiku-4.5
- kimi: kimi-for-coding
- xiaomi-mimo

## Strengths
- Best for: quick tasks (runs Haiku by default), app prototyping, code analysis
- Summon extension enables subagent delegation
- Multiple providers for routing by task complexity
