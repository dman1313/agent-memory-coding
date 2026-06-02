---
agent: MacH
type: local-cli
machine: Dwaynes-Mac-mini.local
user: dwayne-primeau
status: new
created: 2026-06-02
---

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
