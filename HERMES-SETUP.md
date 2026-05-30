# Hermes Agent — Memory Vault Setup

Hermes runs on the VPS and accesses the shared memory vault via Git.

## Quick Setup

```bash
cd /home/ubuntu
git clone https://github.com/dman1313/agent-memory-coding.git agent-memory
```

## Memory Path

`/home/ubuntu/agent-memory`

## How to Read Memories

1. Read `NOW.md` first — current fleet state
2. Check `AGENT-CHANNEL.md` for pending messages
3. Check `ACTIVITY.md` for recent events
4. Follow links in `MEMORY.md` index for detailed context

## How to Write Memories

1. Edit files directly in `/home/ubuntu/agent-memory/`
2. Commit and push:
```bash
cd /home/ubuntu/agent-memory && git add -A && git commit -m "hermes: <what changed>" && git push
```

## Session Protocol

Every session:
1. `cd ~/agent-memory && git pull --rebase`
2. Read `NOW.md` for current state
3. Check `AGENT-CHANNEL.md` for pending messages
4. Do work
5. Update `NOW.md` with active work
6. Append to `ACTIVITY.md` with milestones/decisions
7. Record significant decisions in `DECISIONS.md`
8. `git add -A && git commit -m "hermes: <summary>" && git push`

## Sync Frequency

Manual sync (preferred for Hermes):
- Pull at session start
- Push after significant changes
- Push at session end

## Agent Names

Use these exact names in ACTIVITY.md:
- `hermes` — Hermes Agent (VPS)
- `claude-code` — Claude Code (Mac)
- `codex` — OpenAI Codex (Mac)
- `goose` — Block's Goose (Mac)
- `kimi` — Kimi CLI (Mac)
- `kiro` — Amazon Kiro (Mac)
- `antigravity` — Anti-Gravity workspace

## Related Files

- `Agents/hermes.md` — Hermes agent profile
- `Reference/external-systems.md` — Server and service details
- `Project/hermes-ecosystem.md` — Agent fleet overview
