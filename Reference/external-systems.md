---
name: external-systems
description: External systems — Hermes, Multica, server, Dropbox sync, LLM routing
metadata:
  type: reference
---

- **Hermes:** CLI agent framework at `~/.hermes/` on the server. Has skills, config, auth, and agent routing. Skills include `mrclean`, `software-factory`, `system-objective-agent-ready`.
- **Multica:** Workspace agent system. ~10+ agents including pipeline agents (DRAFT, POLISH, PACKAGER) and factory roles (incident-responder, qa-agent, shepherd-agent).
- **Server:** Ubuntu at `/home/ubuntu/`. Hosts the canonical wiki at `/home/ubuntu/wiki`, Hermes WebUI on port 8787, and various systemd services.
- **Dropbox sync:** `wiki-dropbox-sync` cron job syncs `/home/ubuntu/wiki` → Dropbox `/Obsidian-Wiki` → local `/Volumes/M2 Media/DROPBOX/Dropbox/Obsidian-Wiki`.
- **Routing policy:** Opus 4.7 (strategic), GPT-5.4 (complex reasoning), GLM 5.1 (low-cost execution), Kimi (coding), OpenSpace (exception routing). See `schema/AGENTS.md`.
- **Cron jobs:** ~12 jobs covering health monitoring, nightly reflections, sync, and agent tasks. See `raw/system-configurations.md`.
