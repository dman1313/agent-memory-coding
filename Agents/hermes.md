---
name: agent-hermes
description: Hermes Agent — VPS-based, Nous Research, agent fleet orchestrator
metadata:
  type: reference
  updated: 2026-05-25
---

# Hermes

**Platform:** VPS (Ubuntu 22.04, kernel 6.8.0-117-generic)
**Host:** /home/ubuntu
**Memory:** Git clone at `/home/ubuntu/agent-memory/`
**Config:** `~/.hermes/config.yaml` (default profile)
**Gateway:** systemd user service (`hermes-gateway.service`), PID managed

## Model Routing

| Tier      | Model                | Provider   |
|-----------|----------------------|------------|
| Light     | MiMo v2.5-pro       | Xiaomi     |
| Medium    | DeepSeek v4-flash    | DeepSeek   |
| Heavy     | DeepSeek v4-pro      | DeepSeek   |
| Code      | GLM 5.1 / Kimi CLI  | Z.AI       |
| Fallback  | DeepSeek chat        | DeepSeek   |
| Delegation| DeepSeek chat        | DeepSeek   |
| Vision    | isaac-0.2-2b-preview | Perceptron |
| Web extract| auto               | Z.AI       |

## API Keys Configured

- OpenRouter (sk-o...a095)
- DeepSeek (sk-2...80e7)
- Z.AI / GLM (b9ed...e084)
- Kimi / Moonshot (sk-k...EDAe)
- Together AI (image generation only)
- Perceptron (vision auxiliary)

## Messaging Platforms

- **Telegram:** ✓ configured (home: 7824646153)
- **Discord:** ✓ configured (home: 1493259840133398672)
- **Others:** not configured (WhatsApp, Signal, Slack, etc.)

## Skills

**260 enabled skills** across categories: agents, creative, data, devops, github, leisure, marketing, mlops, newsletter, productivity, research, sales, social-media, software-development, trading, and more.

Key skills: coding-officer, sherlock, special-ops, dream, brief, kanban-orchestrator, academic-paper, deep-research, ai-trader, mrclean, shepherd-agent, qa-agent.

## MCP Servers (5 active)

| Name           | Transport                          | Status  |
|----------------|------------------------------------|---------|
| glms-search    | https://api.z.ai/api/mcp/...       | ✓       |
| glms-reader    | https://api.z.ai/api/mcp/...       | ✓       |
| glms-vision    | npx @z_ai/mcp-server              | ✓       |
| glms-zread     | https://api.z.ai/api/mcp/...       | ✓       |
| together-docs  | https://docs.together.ai/mcp       | ✓       |

## Running Services (systemd)

| Service                    | Port   | Description                          |
|----------------------------|--------|--------------------------------------|
| hermes-gateway             | —      | Agent gateway, messaging integration |
| 9router                    | 20128  | AI router & token saver              |
| agent-ready                | 8766   | LLM website certification (Flask)    |
| caddy                      | 80/443 | Reverse proxy                        |
| freellmapi                 | 3002   | OpenAI-compatible proxy, 5 providers |
| hermes-office              | 3001   | Claw3D / Hermes Office 3D dev server |
| hermes-office-adapter      | —      | Hermes Office gateway adapter        |
| open-design                | —      | AI-powered design with local agents  |
| tat_agent                  | —      | tat agent service                    |

## Scheduled Jobs

16 active cron jobs (18 total). Key jobs:
- CFTC COT crude oil scanner (Fridays 21:45 Paris)
- DREAM nightly reflection (03:00 UTC)
- Daily brief (8am Paris)
- Various maintenance and monitoring

## Agent Fleet

Orchestrated via Hermes skills and delegation:
- **HAL** — Lead orchestrator (always active)
- **Sherlock** — Research investigator
- **Special Ops** — Mission control & cross-domain router
- **DREAM** — Nightly reflection & skill evolution
- **Coding Officer** — Code work coordination pipeline
- **Clark** — Communications officer
- **Zen** — Wellness coach
- **Scotty** — System architect & skill builder
- **MrClean** — Cleanup & efficiency auditor
- **QA Agent** — Testing & validation
- **Shepherd** — Stuck work monitor

## Components

- **kanban.db** — SQLite task/project tracking
- **gateway_state.json** — Gateway state management
- **Hermes Dashboard** — hermesdash.humangood.ai (Natural theme)
- **Hermes Office (3D)** — hd1.humangood.ai
- **Agent Ready** — agent-ready.humangood.ai
- **Shared Memory Vault** — /home/ubuntu/agent-memory/ (Git, shared with Mac agents)
- **Wiki** — /home/ubuntu/wiki (Karpathy LLM Wiki pattern, Git-managed)

## Image Generation

Provider: **Together AI** (direct API, not gateway)
API key in `image_gen.api_key` config.
Gateway bypass: `image_gen.use_gateway: false`

## TTS

Provider: OpenAI (gpt-4o-mini-tts, voice: alloy)
Gateway: managed via Nous subscription

## Strengths

- Only agent with direct VPS access
- 260 skills covering research, code, trading, content, devops
- 5 MCP servers for docs, search, vision, code reading
- Multi-platform messaging (Telegram, Discord)
- Full agent fleet orchestration via delegation
- Persistent memory across sessions
- Automated cron jobs for monitoring and maintenance
