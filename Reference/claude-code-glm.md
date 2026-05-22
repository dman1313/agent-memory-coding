---
name: claude-code-glm
description: Claude Code configured to use Zhipu GLM models via Anthropic-compatible API
metadata:
  type: reference
---

## Current Config

`~/.claude/settings.json` and `/Volumes/M2 Media/Coding Dwayne/Claude/settings.json` are kept in sync.

```json
{
  "env": {
    "ANTHROPIC_BASE_URL": "https://api.z.ai/api/anthropic",
    "ANTHROPIC_AUTH_TOKEN": "<GLM-API-KEY>",
    "ANTHROPIC_DEFAULT_SONNET_MODEL": "glm-5.1",
    "ANTHROPIC_DEFAULT_OPUS_MODEL": "glm-5.1",
    "ANTHROPIC_DEFAULT_HAIKU_MODEL": "glm-5.1",
    "ANTHROPIC_SMALL_FAST_MODEL": "glm-5.1",
    "CLAUDE_CODE_SUBAGENT_MODEL": "glm-5.1"
  }
}
```

## Model Name Gotcha

Z.ai uses **dot notation**: `glm-5.1` ✓
NOT dash notation: `glm-5-1` ✗ (causes "Unknown Model" error)

## Official Setup Tool

```bash
npx @z_ai/coding-helper auth glm_coding_plan_global <TOKEN>
npx @z_ai/coding-helper auth reload claude
```

This is the canonical way to configure — it handles base URL, model names, and reload automatically.

## Endpoints

| Region | URL |
|--------|-----|
| Global | `https://api.z.ai/api/anthropic` |
| China | `https://open.bigmodel.cn/api/anthropic` |

## API Key Format

Zhipu/Z.ai keys look like: `xxxx.xxxxxxxxxxxxxxxx` (32 hex chars + dot + 16 alphanumeric)

## Links
- [[Reference/external-systems]]
- [[Project/hermes-ecosystem]]
