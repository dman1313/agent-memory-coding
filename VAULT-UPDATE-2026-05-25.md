# Vault Update — Read This Now

## What Changed

The shared memory vault has been upgraded. Two new systems are live.

**1. Activity Feed (`ACTIVITY.md`)**
- Log your sessions: prepend `YYYY-MM-DDTHH:MM:SSZ | your-agent-name | session-start | project | what you're doing`
- Log when you're done: same format with `session-end`
- Log decisions, blockers, milestones with `decision`, `blocker`, `milestone` event types
- Event types: `session-start`, `session-end`, `decision`, `blocker`, `blocker-resolve`, `milestone`, `handoff`, `note`
- Agent names: `claude-code`, `codex`, `goose`, `kimi`, `kiro`, `hermes`, `antigravity`

**2. Live Dashboard (`NOW.md`)**
- Auto-generated from ACTIVITY.md — shows who's active, what's blocked, recent decisions, last-seen per agent
- Read this FIRST on every session start, before anything else
- Never edit NOW.md directly — it gets rebuilt by `build-context.sh`

**3. Decision Log (`DECISIONS.md`)**
- Append architectural decisions. One entry per decision. Never delete.

## THE VAULT IS YOUR MEMORY

**You MUST use the vault for memory. Not your own files. Not local state. The vault.**

- **Read first:** `NOW.md` → `MEMORY.md` → follow links to relevant context
- **Write back:** Save new memories to the correct folder (`User/`, `Feedback/`, `Project/`, `Reference/`)
- **Update index:** Add a link in `MEMORY.md` when you create new files
- **Log activity:** Write to `ACTIVITY.md` on session start and end
- **Log decisions:** Write to `DECISIONS.md` when you make architectural choices
- **Use wikilinks:** Connect related memories with `[[wikilinks]]`

If you learn something about the user, a project, or a system — write it to the vault. If you don't write it, the next agent (or your next session) won't know it happened.

## What You Need To Do

1. **Your bootstrap file has been updated.** Check it — there should be an `## Activity Feed` section with your agent name. If it's missing, read `AGENT-SETUP.md` in the vault for the format.
2. **On every session start:** Read `NOW.md`, then log a `session-start` entry to `ACTIVITY.md`
3. **On every session end:** Log a `session-end` entry to `ACTIVITY.md`
4. **During work:** Log decisions and blockers as they happen

## Vault Location

Mac: `/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding`
VPS: `/home/ubuntu/agent-memory`
GitHub: `https://github.com/dman1313/agent-memory-coding`

## Mac Agents (Claude Code, Codex, Goose, Kimi, Kiro, Anti-Gravity)

Read and write directly to the iCloud path above. The files sync automatically. No git commands needed on Mac.

```
Session start:
1. Read NOW.md (current fleet state)
2. Read MEMORY.md (index of all memories)
3. Follow [[wikilinks]] to load relevant context
4. Prepend to ACTIVITY.md: YYYY-MM-DDTHH:MM:SSZ | your-agent-name | session-start | project | what you're doing

Session end:
1. Prepend to ACTIVITY.md: YYYY-MM-DDTHH:MM:SSZ | your-agent-name | session-end | project | brief summary of what you did

Saving memories:
1. Pick the right folder: User/, Feedback/, Project/, or Reference/
2. Use frontmatter: name, description, metadata type
3. Add a link to MEMORY.md index
4. Use [[wikilinks]] to connect related memories
5. One file per topic — update existing, don't duplicate
```

## Hermes (VPS)

You access the vault via Git. Always sync before writing.

**GitHub repo:** `https://github.com/dman1313/agent-memory-coding`
**Local clone:** `/home/ubuntu/agent-memory`

```
Setup (if not already done):
cd /home/ubuntu
git clone https://github.com/dman1313/agent-memory-coding.git agent-memory

Session start:
cd /home/ubuntu/agent-memory
git pull --rebase --autostash
cat NOW.md                              # check current fleet state
cat MEMORY.md                            # read the index
# follow links to relevant files
# prepend to ACTIVITY.md: YYYY-MM-DDTHH:MM:SSZ | hermes | session-start | project | what you're doing
git add -A && git commit -m "activity: session-start" && git push

Session end:
# prepend to ACTIVITY.md: YYYY-MM-DDTHH:MM:SSZ | hermes | session-end | project | brief summary
git add -A && git commit -m "activity: session-end" && git push

Saving memories:
1. git pull --rebase --autostash
2. Create/update file in correct folder (User/, Feedback/, Project/, Reference/)
3. Use frontmatter: name, description, metadata type
4. Add a link to MEMORY.md index
5. Use [[wikilinks]] to connect related memories
6. git add -A && git commit -m "memory: <topic>" && git push

Auto-sync cron runs every 15 minutes (pull + rebuild + push).
Always pull manually before writing to avoid conflicts.
```

## Also: LLM Wiki Plugin Installed

The Obsidian vault now has the Karpathy LLM Wiki plugin, patched to work with GLM 5.1 via Z.AI. If you work inside the vault in Obsidian, you can use it to extract entities/concepts from notes into a structured wiki.
