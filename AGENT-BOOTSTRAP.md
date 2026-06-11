# Agent Bootstrap — Share With Every Agent

Copy the block below into each agent's config (`AGENTS.md`, `.cursor/rules`, Goose hints, Kiro steering, etc.). Replace `{agent-name}` with the agent's roster name.

---

## Copy-paste block (give this to each agent)

```
You are a member of Dwayne Primeau's shared agent fleet. This vault is your memory and operating system.

VAULT (Mac): /Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding/
VAULT (VPS/Hermes): /home/ubuntu/agent-memory/
GITHUB: https://github.com/dman1313/agent-memory-coding (private, syncs every ~15 min)

YOUR AGENT NAME (use exactly in ACTIVITY.md): {agent-name}
Valid names: claude-code, codex, goose, kimi, kiro, hermes, MacH, antigravity, cursor, hyperagent

── SESSION START (mandatory, every time) ──
1. Read STANDING-ORDERS.md
2. Read NOW.md (fleet state)
3. Read Agents/{agent-name}.md (your profile)
4. Skim last 10 lines of ACTIVITY.md
5. Check Agent Inbox/{agent-name}.md and AGENT-CHANNEL.md for pending messages
6. Log session-start to ACTIVITY.md BELOW the <!-- ENTRIES BELOW THIS LINE --> marker:
   YYYY-MM-DDTHH:MM:SSZ | {agent-name} | session-start | project-slug | Starting: what you plan to do

── DURING WORK ──
- Log as you go: decision, blocker, blocker-resolve, milestone, handoff, note
- One file per topic — update existing files, don't duplicate
- Use [[wikilinks]] to connect related memories
- Update Agents/{agent-name}.md (Current Work, Handoff Notes, Recent Decisions)
- Never delete another agent's memories without Dwayne's approval
- Hermes only: git pull --rebase before write; commit + push when done

── BUILDING SOMETHING? USE SDD ──
For non-trivial work (new feature, multi-file, architectural, >~30 min) follow sdd/README.md:
write spec.md → plan.md → tasks.md, execute task-by-task with verification, and record
big/irreversible choices as ADRs in sdd/decisions/. Spec before code. Templates in sdd/templates/.
Skip SDD only for trivial fixes (typos, one-liners, config).

── SESSION END (mandatory) ──
1. Log session-end to ACTIVITY.md with a summary
2. Update Agents/{agent-name}.md
3. If you wrote 5+ activity entries: bash build-context.sh

── CODING FACTORY (MacH → cursor) ──
MacH orchestrates; cursor implements. Protocol: Reference/coding-factory-routing.md
MacH: prepend PENDING to Agent Inbox/cursor.md + AGENT-CHANNEL To[@Cursor] + ACTIVITY handoff
cursor: on session start, execute newest PENDING dispatch before other work; mark DONE with Response

── WHERE THINGS LIVE ──
NOW.md          → current fleet state (auto-generated, don't edit)
CONTEXT.md      → consolidated context (auto-generated)
MEMORY.md       → index of all memory files
ACTIVITY.md     → append-only activity log (source of truth)
STANDING-ORDERS.md → fleet rules
AGENT-CHANNEL.md   → inter-agent messages
User/           → Dwayne's preferences
Feedback/       → how Dwayne wants work done
Project/        → active project context
Agents/         → per-agent profiles (maintain your own)
Reference/      → infrastructure pointers
sdd/            → Spec-Driven Development: specs, plans, templates, decisions

── LLM WIKI (only when working on raw/ or wiki/) ──
Read order: schema/AGENTS.md → wiki/index.md → wiki/log.md → target pages
- raw/ = inbox (unprocessed)
- raw/processed/ = archived raw (immutable, never delete)
- wiki/ = knowledge graph (append only, cross-link aggressively)
- schema/ = rules (read-only). Drive it with the curate skill: /curate compile | ask | capture | lint

── RULES ──
No ghost sessions. If you worked, it must be in ACTIVITY.md.
Verify old memories before acting — they are point-in-time snapshots.
Dwayne prefers: short commands, minimal preamble, action over explanation.
Preferred language: Rust when possible. Working dir: /Volumes/M2 Media/Coding Dwayne/Claude
```

---

## Per-agent name mapping

| Platform | Config location | Agent name |
|---|---|---|
| Claude Code | `~/.claude/projects/.../memory` (symlink) | `claude-code` |
| Cursor | `.cursor/rules` or workspace rules | `cursor` |
| Codex | `~/.codex/AGENTS.md` | `codex` |
| Goose | `~/.config/goose/goosehints` | `goose` |
| Kimi | session / workspace config | `kimi` |
| Kiro | `.kiro/steering/agent-memory.md` | `kiro` |
| Hermes (VPS) | Hermes workspace | `hermes` |
| Hermes (Mac Mini) | local CLI on Mac Mini | `MacH` |
| Anti-Gravity | project workspace | `antigravity` |
| Hyperagent (cloud) | Hyperagent platform — project "wiki" threads | `hyperagent` |

## Inbox file names

Dashboard inboxes use short names. Map your agent name to the inbox file:

| Agent name | Inbox file |
|---|---|
| `claude-code` | `Agent Inbox/claude.md` |
| `cursor` | `Agent Inbox/cursor.md` |
| `codex` | `Agent Inbox/codex.md` |
| `goose` | `Agent Inbox/goose.md` |
| `MacH` (Hermes on Mac) | `Agent Inbox/hermes-mac.md` |
| `hermes` (vps) | `Agent Inbox/hermes-vps.md` |
| `antigravity` | `Agent Inbox/antigravity.md` |
| `hyperagent` | `Agent Inbox/hyperagent.md` |

## Hermes VPS quick reference

```bash
cd /home/ubuntu/agent-memory && git pull --rebase --autostash
# ... do work ...
git add -A && git commit -m "memory: {topic}" && git push
```

## First-time agent setup checklist

1. Paste the copy-paste block above into the agent's config (replace `{agent-name}`)
2. Create or update `Agents/{agent-name}.md` with skills, strengths, current work
3. Log first `session-start` to `ACTIVITY.md`
4. Acknowledge any pending message in `Agent Inbox/{name}.md` (mark DONE, reply on AGENT-CHANNEL)
5. Tell Dwayne you're on the roster

## Links

- [[STANDING-ORDERS]]
- [[AGENT-SETUP]]
- [[AGENTS]]
- [[MEMORY]]
