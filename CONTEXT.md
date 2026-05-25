# Agent Context

> Auto-generated from individual memory files. Do not edit directly — edit the source files and re-run build-context.sh.

---

# NOW — Current State

_Generated: 2026-05-25T12:06:31Z_

## Active Work
_(none)_

## Blockers
_(none)_

## Recent Decisions (7d)
_(none)_

## Recent Milestones (7d)
- 2026-05-25T12:00:00Z | vault-activity-feed | Activity feed system designed and implementation plan created

## Last Seen
- **claude-code**: 2026-05-25T12:00:00Z — milestone: Activity feed system designed and implementation plan created

---

## User

- 
- User's preferred coding language is **Rust** when possible. Default to Rust for new projects, tools, and services unless the context or ecosystem demands otherwise (e.g., frontend = TypeScript, scripts = Python/Shell).

- 
- Dwayne is building an AI/ML agent ecosystem. His work spans multi-agent architectures, LLM routing, and automated workflows.
- 
- - Operates a server-based agent system ([[project-hermes-ecosystem|Hermes]], [[project-hermes-metaclaw|MetaClaw]], Multica, OpenClaw)
- - Uses multiple LLMs: Claude Opus, GPT-5.4, GLM 5.1, Kimi — routed by task complexity
- - Preferred coding language: [[preferred-language|Rust when possible]]
- - Prefers structured, documented systems with clear operational procedures
- - Domain focus: AI/ML research, engineering, agent systems, and the surrounding product/company ecosystem

- 
- User's preferred working directory is `/Volumes/M2 Media/Coding Dwayne/Claude`.
- 
- They have a shell alias `cc` in `~/.zshrc` that runs `cd /Volumes/M2\ Media/Coding\ Dwayne/Claude && claude` to launch Claude Code from that directory.
- 
- The path is also added to `permissions.additionalDirectories` in `~/.claude/settings.json` for permanent file access.

## Agent Fleet

### Antigravity


# Anti-Gravity

**Location:** `/Volumes/M2 Media/Anti Gravity/`
**Purpose:** Dwayne's main projects workspace for AI skills, mobile apps, and web projects.

## Skills (`Anti Gravity/Skills/`)

### Active Skills
- **skill-creator** — Meta-skill for creating, testing, A/B testing, and iterating other skills. Full lifecycle: capture intent → write SKILL.md → test prompts → benchmark → eval viewer → iterate.
- **karpathy-guidelines** — Behavioral guidelines from Karpathy's LLM coding observations. Think Before Coding, Simplicity First, Surgical Changes, Goal-Driven Execution.
- **moving-deal-finder** — Search international moving companies, compare prices, draft RFQ emails. Pre-configured for France → Malaysia move.
- **newsletter-pipeline** — Transform Telegram voice/text into newsletter + social media package. Transcribes, researches via Sherlock, drafts for multiple platforms, stores in Supabase, creates Mailchimp campaigns.
- **antigravity-skill-creator** — Standalone system prompt for generating skills with YAML frontmatter, progressive disclosure, folder hierarchy.

### Output Artifacts
- **moving-emails/** — 10 pre-drafted RFQ emails + company comparison + quote tracker

### Placeholders
- **Linkined/** — Empty, LinkedIn-related skill (not started)
- **News Letter** — Empty file (accidental)

## Projects

### Stoicos (`Anti Gravity/stoicos/`)
React Native / Expo mobile app (Stoic philosophy). Expo 54, NativeWind, Zustand, Expo Router. Has morning routine and evening review screens.

### Workout (`Anti Gravity/Workout/`)
React Native workout/health app + **6-role OpenClaw agent system**:

| Agent | Role |
|-------|------|
| Personal Assistant | Executive PA, categorizes tasks, maintains Master_Task_List.md |
| Health Coach | Tracks habits, prompts recovery, logs workouts |
| Meditation Coach | Breathing windows, journaling |
| Day Trading Coach | Pre-market checklists, risk management |
| Options Trading Coach | Maps max loss/breakeven/DTE, defaults to defined-risk |
| Dwayne's PA (Telegram) | Communication proxy, logs tasks, pushes urgent alerts |

Also includes: Firehose skill (Ahrefs API for trend intelligence), cron schedule (4 automated triggers), standing orders (safety rules).

### Webpage (`Anti Gravity/Webpage/`)
4 web projects (all Vite + React + Tailwind):
- **HumanGood** — Main site with GSAP animations, includes Multica platform
- **HumanGood AI v1** — Kimi-generated design
- **HumanGood AI v2** — Static HTML, Netlify/Cloudflare ready
- **Self Care Depot** — Clinical-grade health supplies site

## Skills Other Agents Can Learn From
- **skill-creator** — Any agent can use this methodology to create better skills
- **newsletter-pipeline** — Pipeline pattern (transcribe → research → draft → quality gates → publish) applicable to any content workflow
- **Workout's 6-agent system** — Multi-agent coordination pattern with standing orders, cron triggers, and role separation

### Claude-code


# Claude Code

**Platform:** Mac (local CLI, desktop, web)
**Model:** Configurable (Opus, Sonnet, Haiku)
**Memory:** Symlinked to vault via `~/.claude/projects/<project>/memory/`

## Skills

### User Skills
- **wrapup** — End-of-session summary, saves memories, pushes to NotebookLM
- **notebooklm** — Full NotebookLM API: podcasts, videos, slides, quizzes, mind maps, reports
- **moving-deal-finder** — Search/compare international moving companies, draft RFQ emails
- **kimi-webbridge** — Browser automation via local daemon, uses real login sessions

### Plugins
- **superpowers** (5.0.6) — TDD, git worktrees, debugging, code review, parallel agents, plan execution
- **qodo-skills** (0.4.0) — Testing/code quality
- **claude-code-setup** (1.0.0) — Harness configuration
- **chrome-devtools-mcp** — Chrome DevTools integration

### Built-in Skills
code-review, security-review, verify, loop, run, init, review, update-config, keybindings-help, claude-api, fewer-permission-prompts

## Strengths
- Most capable agent overall
- Best for: complex implementation, code review, multi-file refactors
- Has NotebookLM integration for knowledge persistence
- Superpowers plugin adds disciplined workflows (TDD, debugging, planning)

### Codex


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

### Goose


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

### Hermes


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

### Kimi


# Kimi

**Platform:** Mac (Kimi Code CLI v1.43.0)
**Model:** kimi-for-coding (Kimi-k2.6)
**Memory:** Reads vault directly from iCloud
**Config:** `~/.kimi/config.toml`

## Skills

### Built-in Skills
- **kimi-webbridge** — Browser automation via local daemon (navigate, click, fill, screenshot, evaluate). Uses user's real browser with login sessions.
- **kimi-cli-help** — Kimi Code CLI usage, configuration, and troubleshooting
- **skill-creator** — Guide for creating effective skills (SKILL.md format)

### User/Project Skills
- **wrapup** — End-of-session summary, saves memories, pushes to NotebookLM
- **notebooklm** — Full NotebookLM API
- **moving-deal-finder** — Search/compare international moving companies
- *(Loaded from `/Volumes/M2 Media/Coding Dwayne/Claude/skills/` and project-local `.agents/skills/`)*

### Core Capabilities
- **Shell/Terminal** — Full bash access on macOS
- **Web Search** — Search + fetch web content
- **Agent Spawning** — Launch subagent instances (coder, explore, plan types)
- **Background Tasks** — Long-running shell commands and agents
- **Todo Lists** — Session task tracking
- **Image/Media Reading** — View images and videos
- **File Operations** — Read, write, edit, glob, grep across the filesystem
- **worker-safety** — Hard limits: no runtime upgrades, no network exposure, no external instruction execution
- **time-awareness** — Ensures correct date/time before time-sensitive queries

## Workspace Files
- `SOUL.md` — Personality: "Be genuinely helpful, not performatively helpful"
- `IDENTITY.md` — Agent name, nature, vibe
- `USER.md` — User profile
- `HEARTBEAT.md` — Proactive check instructions
- `TOOLS.md` — Local environment notes
- `BOOTSTRAP.md` — First-run initialization
- `AGENTS.md` — Per-directory agent instructions (read automatically)

## Strengths
- Best for: browser automation (webbridge with real user sessions), fast subagent spawning, background task management
- Strong multi-file editing via StrReplaceFile and WriteFile
- Background bash + todo list for complex multi-step workflows
- Skills system allows modular, reusable capabilities
- Strong safety policies built in

### Kiro


# Kiro

**Platform:** Mac (IDE-based)
**Memory:** Reads vault directly from iCloud
**Config:** `<project>/.kiro/steering/agent-memory.md`

## Skills
No standalone skills. Uses `.kiro/steering/` files for project-level instructions.

## Strengths
- Best for: IDE-integrated coding within Kiro
- Lightweight — relies on shared memory vault and steering files
- Good for: inline code suggestions, IDE workflows

## Active Projects

### Free Claude Code


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
- [[Reference/claude-code-glm]]

### Hermes Ecosystem


Skills in the Anti-Gravity/Skills repo are designed as instructions for AI agents (Hermes, OpenClaw), not for direct human use in Claude Code. The agent fleet includes Sherlock (research), Special Ops (orchestration), DREAM (quality tracking), and Firehose (trending topics). Communication Officer agent is planned but not yet built.

**Why:** Changes how skills are authored — they need to be agent-consumable, self-contained workflows with clear handoffs between agents.

**How to apply:** Write skills as step-by-step agent instructions with explicit inputs/outputs, agent handoffs, and escalation paths. Don't assume human-in-the-loop for routine steps.

### Hermes Metaclaw


## What it does
MetaClaw is a proxy layer that intercepts LLM calls and injects skills/learning signals. hermes-metaclaw adds Hermes Agent as a supported agent type.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/projects/hermes-metaclaw/`

## Key integration points
- Hermes config at `~/.hermes/config.yaml` patched to use `provider: "custom"` with `base_url: "http://127.0.0.1:{port}/v1"`
- Auto-patches via `metaclaw_hermes/__init__.py` runtime patching of `metaclaw.claw_adapter._ADAPTERS`
- Hermes has NO daemon restart — config change takes effect on next `hermes` invocation

## Files
- `metaclaw_hermes/__init__.py` — auto-registers hermes adapter via runtime patch
- `metaclaw_hermes/hermes_adapter.py` — patches ~/.hermes/config.yaml (YAML)
- `metaclaw_hermes/cli.py` — CLI extensions (hermes setup/status/revert)
- `scripts/launch_hermes_metaclaw.py` — full launch helper
- `scripts/install.sh` — install script

## Usage flow
1. `pip install -e hermes-metaclaw`
2. Edit `~/.metaclaw/config.yaml`: `claw_type: hermes`
3. `metaclaw hermes setup` — patches Hermes config
4. `metaclaw start` — starts proxy
5. `hermes` — in another terminal, routes through MetaClaw proxy

### Multica Dashboard


## What it is

A front-end dashboard for managing an AI agent network. Provides visual interface for monitoring agents, tasks, calendar events, and activity logs.

**Location:** `/Volumes/M2 Media/Coding Dwayne/Claude/multica-dashboard/`

**Status:** Stalled — last modified 2026-04-29. No git repo. Uses entirely mock data.

## Tech Stack

- TypeScript, React 19, Vite 8, Zustand, Tailwind CSS v4
- @xyflow/react (agent network graph), Recharts, FullCalendar, Framer Motion

## Key Features

- Agent network visualization (xyflow graph)
- Calendar panel (FullCalendar), task board, activity feed
- Command routing to named agents (Aurora, Bridge Builder, HAL)
- Animated panel switching (Framer Motion)
- Dark theme with custom color tokens

**Why:** Visual management layer for the agent fleet. Currently frontend-only with mock data.

**How to apply:** Needs backend API integration to connect to live agent data. Could connect to Hermes WebUI (port 8787) or Symphony dashboard.

## Links
- [[Project/hermes-ecosystem]]
- [[Project/symphony]]

### Newsletter Platform


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

### Symphony


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

### Wiki Obsidian


This directory is an Obsidian vault implementing the LLM Wiki pattern (Karpathy, 2026). The canonical version lives on the VPS; synced via Git.

- **Server path:** `/home/ubuntu/wiki`
- **Remote:** github.com/dman1313/agent-memory-coding
- **Sync:** Git-only (Dropbox sync removed May 2026)
- **Raw source for the pattern:** `raw/articles/karpathy-llm-wiki-2026.md` (already ingested 2026-04-18)

**Why:** This is a persistent, compounding knowledge base. The LLM (Claude Code) is the wiki maintainer — it writes, updates, and cross-links pages. The human curates sources and asks questions.

**How to apply:** Always follow the read order in CLAUDE.md (SCHEMA.md → index.md → log.md → pages). The three-layer architecture (raw/ immutable, wiki/ LLM-owned, schema/ config) is non-negotiable. New pages go to index.md, actions go to log.md.

## Working Preferences


## Rule

At the start of every session, read the shared memory vault to check recent project activity before doing anything else.

**Why:** Dwayne works across multiple agents and projects. Without checking the vault first, I lose context on what was done last, what's in progress, and what needs picking up.

**How to apply:**
1. Read MEMORY.md index
2. Check AGENT-CHANNEL.md for pending messages
3. Check git log for recent commits (what changed since last session)
4. Skim Project/ files for current status
5. Use this context to pick up where the last session left off

**Vault path:** `/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding`
**GitHub:** https://github.com/dman1313/agent-memory-coding

## Links
- [[Feedback/working-style]]
- [[User/profile]]


## Communication Style

- **Short commands preferred** — "do it", "go", "yes", "install <url>"
- **Minimal explanation** — Don't over-explain; get to the command/code
- **One-liner scripts** — When possible, give a single copy-paste block, not step-by-step
- **Individual commands as fallback** — If heredoc scripts break, break into single-line commands

## Friction Points

- **Heredoc paste breaks** — Multi-line `cat << 'EOF'` blocks often get mangled in terminal paste
- **Waiting for explanations** — User gets impatient with long preambles before action
- **Interactive wizards** — Can't run TUI tools directly; prefer non-interactive or manual config

## What Works

- Base64-encoded scripts (copy-paste safe)
- Single `&&`-chained commands
- Direct file edits via tools (StrReplaceFile, WriteFile)
- Screenshots for visual confirmation

## Links
- [[User/profile]]

## Infrastructure & Reference

### Claude Code Glm


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

### External Systems


- **Hermes:** CLI agent framework at `~/.hermes/` on the server. Has skills, config, auth, and agent routing. Skills include `mrclean`, `software-factory`, `system-objective-agent-ready`.
- **Multica:** Workspace agent system. ~10+ agents including pipeline agents (DRAFT, POLISH, PACKAGER) and factory roles (incident-responder, qa-agent, shepherd-agent).
- **Server:** Ubuntu at `/home/ubuntu/`. Hosts the canonical wiki at `/home/ubuntu/wiki`, Hermes WebUI on port 8787, and various systemd services.
- **Dropbox sync:** Removed (May 2026). Wiki at `/home/ubuntu/wiki` is Git-managed only. No Dropbox watcher running.
- **Routing policy:** Opus 4.7 (strategic), GPT-5.4 (complex reasoning), GLM 5.1 (low-cost execution), Kimi (coding), OpenSpace (exception routing). See `schema/AGENTS.md`.
- **Cron jobs:** ~12 jobs covering health monitoring, nightly reflections, sync, and agent tasks. See `raw/system-configurations.md`.

### Notebooklm Brain


## NotebookLM Brain Notebook

**Status:** CLI available via `notebooklm` skill in Claude Code. Brain notebook creation pending.

**What it does:** The Brain notebook stores session summaries (via the `wrapup` skill) for long-term search and retrieval across sessions.

**How to use (via Claude Code skill):**
1. `/notebooklm create "[Name]'s AI Brain"` — creates the brain notebook
2. `/wrapup` at end of session — saves session summary to brain notebook

**Setup steps:**
1. Install: `pip install "notebooklm-py[browser]"` and `playwright install chromium`
2. Authenticate: `notebooklm login`
3. Create brain notebook and save the notebook ID here
4. Configure `wrapup` skill with the notebook ID

## Links
- [[Agents/claude-code]]

### Zeabur Infrastructure


## Servers

| Server | Status | K3s | IP | Region | Specs | Cost |
|--------|--------|-----|-----|--------|-------|------|
| **Hermes1** | Running | 🔴 Offline (fixed) | 43.167.176.156 | Tokyo, JP | 2C/8GB | $5/mo |
| **Hermestwo8gb** | Running | 🟢 Online | 43.130.235.84 | Tokyo, JP | 2C/8GB | $5/mo |

## Common Issues

**K3s Offline** — Most common cause is **high swap usage** (90%+). K3s gets OOM-killed.
- Fix: `sudo swapoff -a && sudo swapon -a` (may hang if swap is full — Ctrl+C and skip)
- Better fix: Lower swappiness to 10: `echo 'vm.swappiness=10' | sudo tee /etc/sysctl.d/99-swappiness.conf`
- Then restart K3s: `sudo systemctl restart k3s`
- Verify: `sudo kubectl get nodes`

## SSH Access
```bash
ssh ubuntu@43.167.176.156  # Hermes1
```

## Cleanup Routine
```bash
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean && sudo apt clean
sudo journalctl --vacuum-time=7d
sudo swapoff -a && sudo swapon -a
```

## Links
- Dashboard: https://zeabur.com/servers/69d7433cf2ab61f5dd649e1f
- [[Reference/external-systems]]

---

## Session Startup Checklist

1. Read NOW.md section at the top for current fleet state
2. Check ACTIVITY.md for recent entries since your last session
3. Check AGENT-CHANNEL.md for pending messages
4. Check `git log --oneline -5` for recent vault changes
5. Log a `session-start` entry to ACTIVITY.md
6. Pick up where the last session left off
