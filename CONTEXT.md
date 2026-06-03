# Agent Context

> Auto-generated from individual memory files. Do not edit directly — edit the source files and re-run build-context.sh.

---

# NOW — Current State

_Generated: 2026-06-03T12:03:14Z_

## Active Work
- **MacH** (agent-memory): Initial fleet connection — cloned agent-memory vault, read NOW.md/AGENT-CHANNEL.md/MEMORY.md, registered as fleet agent
- **hermes** (general): Dashboard re-started, agent memory daily routine, model routing check

## Blockers
- **hermes** (hermes-dashboard): Dashboard port 9999 DOWN — process not listening (detected in daily brief)

## Recent Decisions (7d)
- 2026-05-31T06:45:00Z | hermes/study-pipeline | Switched from nlm report create to nlm notebook query for focused study guides (reports too generic)
- 2026-05-31T06:30:00Z | hermes/ai-trader | Bypassed weekend market hours for simulated trades (price=0)

## Recent Milestones (7d)
- 2026-06-02T19:15:00Z | hermes-dashboard | Dashboard exposed at hermesdash.humangood.ai via Cloudflare tunnel + auth proxy (port 9119)
- 2026-05-31T08:35:00Z | atomicmemory | Installed AtomicMemory: Docker core (DeepSeek LLM + MiniLM embeddings), CLI, Hermes plugin. Semantic memory operational.
- 2026-05-31T07:30:00Z | second-brain | Wired second-brain vault to Hermes: cloned, set vault path, created sync script, updated agent memory
- 2026-05-31T07:15:00Z | ai-trader | Expanded AI-Trader client: strategy, discussion, feed, rebalance commands + Wolf bridge script. Portfolio value fix (was $49K, now $98K)
- 2026-05-31T07:00:00Z | study-pipeline | IGCSE Biology pipeline v2 rebuilt — query-based study guides, proper validation, short focus strings, flashcard fix

## Last Seen
- **hermes**: 2026-06-03T14:10:00Z — blocker: Dashboard port 9999 DOWN — process not listening (detected in daily brief)
- **MacH**: 2026-06-02T22:42:00Z — session-start: Initial fleet connection — cloned agent-memory vault, read NOW.md/AGENT-CHANNEL.md/MEMORY.md, registered as fleet agent
- **claude-code**: 2026-05-25T12:45:00Z — milestone: Karpathy LLM Wiki plugin patched for GLM 5.1 (Z.AI Anthropic endpoint), installed in vault. All agents notified via AGENT-CHANNEL.

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

**Platform:** VPS (Ubuntu, kernel 6.8.0-117-generic)
**Host:** /home/ubuntu
**Memory:** Git clone at `~/agent-memory/`
**Config:** `~/.hermes/config.yaml` (default profile)
**Gateway:** systemd user service (`hermes-gateway.service`)
**Telegram:** @betaclawv1_bot ("openclaw"), thread 723 (health), thread 725 (wellness)

## Model Routing

| Tier       | Model              | Provider |
|------------|--------------------|----------|
| Light      | MiMo v2.5-pro     | Xiaomi   |
| Medium     | DeepSeek v4-flash  | DeepSeek |
| Heavy      | DeepSeek v4-pro    | DeepSeek |
| Code       | Kimi K2.6          | Moonshot |
| GLM 5.1    | coding plan only   | Z.AI     |
| Fallback   | DeepSeek PAYG      | DeepSeek |

## Skills (300+)

Organized under `~/.hermes/skills/`. Key categories:
- **trading/** — ai-trader, wolf-trading-agent, quant-stock-scanner, alpaca-volume-scanner
- **research/** — sherlock, deep-research, academic-pipeline, perplexity-research
- **agents/** — hal, dream, coding-officer, qa-agent, shepherd-agent, special-ops
- **devops/** — kanban-orchestrator, ci-cd-and-automation, cloudflare-tunnel-setup
- **creative/** — claude-design, popular-web-designs, excalidraw, manim-video
- **productivity/** — google-workspace, notion, obsidian, powerpoint

## Services Running

| Service | Port | Purpose |
|---------|------|---------|
| 9Router  | 20128 | LLM routing |
| WeKnora  | 8089  | Knowledge base |
| FreeLLMAPI | 3002 | Free LLM API |
| Hermes Office | 3001 | 3D workspace |
| Agent Ready | 8766 | Middleware |
| Caddy | 80/443 | Reverse proxy |

## Cron Jobs (16 active)

- DREAM nightly reflection (3am)
- Wolf daily scan (8am M-F)
- CFTC COT scanner (Fri 21:45)
- IGCSE Biology pipeline (hourly)
- HAL daily brief (2pm)
- Morning/evening Zen reflections
- System health monitor (every 6h)
- Shared memory sync (every 6h)
- GDrive + brain backups

## Current Capabilities (as of 2026-05-31)

### AI-Trader (ai4trade.ai)
- Agent ID: 7729, portfolio ~$98K
- CLI: status, positions, trade, strategy, discussion, feed, rebalance, heartbeat
- Wolf→AI-Trader bridge for auto-publishing signals
- Safety: rate limiting, duplicate detection, circuit breaker, position limits

### Study Pipeline
- IGCSE Biology via NotebookLM (nlm CLI)
- Per-concept: study guide (query-based), flashcards, slides, video
- Pipeline script: `~/.hermes/scripts/concept-pipeline.sh`
- Skill: sherlock-study-boy

### Second Brain Vault
- Path: `~/Documents/Obsidian Vault/second-brain/`
- Git: dman1313/second-brain
- Structure: wiki/, journal/, crm/, raw/
- Sync: `~/.hermes/scripts/sync-second-brain.sh`

## Shared Memory

- `~/agent-memory/` — shared with Mac agents via Git
- Always read NOW.md at session start
- Update ACTIVITY.md with milestones/decisions
- Commit and push after changes

## Dwayne Preferences (operational)

- **Wiki-system-first:** Operate within Dwayne's existing wiki system on all knowledge-bearing tasks. Use wiki as primary durable knowledge store. Orient with SCHEMA.md, index.md, log.md before wiki work.
- **Consult wiki proactively:** Not only for explicit wiki tasks — check wiki for context on any knowledge question.
- **Model routing:** Light=MiMo v2.5-pro. Med=DeepSeek v4-flash. Heavy=DeepSeek v4-pro. Code=Kimi K2.6 (paid). GLM 5.1=coding plan only. DeepSeek=PAYG fallback.
- **LLM roster:** When asked, show actually configured/usable models, not cached catalog.
- **Quant finance:** ML trading signals, LSTM pipelines, Marcos Lopez de Prado. Prototype at ~/quant-nn/. Interested in AI supply chain: copper (FCX), rare earths (MP), specialty gases (APD), materials (ENTG).
- **Mistral API:** mistral-small-latest, mistral-medium-latest, codestral-latest, mistral-ocr-latest, voxtral-small, voxtral-mini-tts, mistral-embed.
- **Wellness:** Daily morning + evening reflections in Telegram thread 725.

## Strengths
- Best for: orchestration, scheduling, research, trading, knowledge management
- Has 300+ skills covering most domains
- Cron-based automation (16 active jobs)
- Multi-platform messaging (Telegram, Discord)

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

### Mach


# MacH

Mac-based Hermes agent. Runs locally on Dwayne's Mac Mini.

## Role
- Coding and local dev
- Quick tasks and research
- Interactive work

## Connection
- Shares agent memory vault with VPS Hermes via GitHub
- Agent name: MacH
- Vault: ~/agent-memory (GitHub: dman1313/agent-memory-coding)

## Protocol
- Pull vault at session start: `cd ~/agent-memory && git pull`
- Push before ending: `git add -A && git commit -m "session: summary" && git push`
- Read NOW.md, AGENT-CHANNEL.md at session start
- Update ACTIVITY.md, NOW.md during work

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

## Current Dashboard State (2026-05-25)

- Local dashboard runs at `http://127.0.0.1:18119/` from `/Volumes/M2 Media/Coding Dwayne/symphony/`.
- Linear API token is stored in macOS Keychain service `symphony-linear-api-key`; do not print it.
- `WORKFLOW.md` is configured locally for Linear project slug `5ab40fc3fbf2` (`Hermes Dashboard`).
- Dashboard Tasks now reads Linear issues in read-only mode; task edits should be made in Linear.
- Scheduler is idle when all Linear issues are in `Backlog` or terminal states because active states are `Todo` and `In Progress`.

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
