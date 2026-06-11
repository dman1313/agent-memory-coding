# Standing Orders — All Agents

This file is mandatory reading at every session start. No exceptions.

---

## The Shared Vault

This vault is the shared memory and operating system for Dwayne Primeau's AI agent fleet. All agents read and write here so no work is lost, no agent duplicates another's effort, and every agent knows what the rest of the fleet is doing.

### Where It Lives

| Agent type | Path |
|---|---|
| Mac agents (Claude Code, Codex, Goose, Kimi, Kiro) | `/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding/` |
| VPS agent (Hermes) | `/home/ubuntu/agent-memory/` |

### GitHub Sync

The vault syncs bidirectionally with GitHub so Mac agents and the VPS agent share the same state:

**Repo:** https://github.com/dman1313/agent-memory-coding (private)

- Mac agents write directly to iCloud. A launchd job pushes to GitHub every 15 minutes via `sync.sh`.
- Hermes (VPS) reads and writes via `git pull / git push`. A cron job syncs every 15 minutes.
- What you write here will be visible to every other agent within 15 minutes.

**If you are a VPS agent reading this:**
```bash
# Clone once
git clone https://github.com/dman1313/agent-memory-coding.git /home/ubuntu/agent-memory

# Pull before reading
cd /home/ubuntu/agent-memory && git pull --rebase --autostash

# Push after writing
git add -A && git commit -m "memory: {topic}" && git push
```

**If you are a Mac agent reading this:** Write directly to the iCloud path. The sync handles GitHub automatically.

---

## You Are Part of a Fleet

You are one of several AI agents working together for [[Dwayne Primeau]]. We share this vault so no work is lost, no agent duplicates another's effort, and every agent knows what the rest of the fleet is doing.

---

## Every Session: Conditional Startup

**Quick Q&A or one-off questions** — answer directly. Skip vault reads and ACTIVITY logging.

**Project work, multi-step tasks, or code changes** — do the full startup below before touching anything.

### Step 1 — Read on arrival

1. `NOW.md` — Current fleet state. What's active, what's blocked, what was just finished.
2. `ACTIVITY.md` — Last 10 entries. Know what other agents did recently.
3. `Agents/{your-name}.md` — Your own file. Remind yourself what you were working on.

**If your task touches `raw/` or `wiki/`:** also read `schema/AGENTS.md` and `wiki/index.md` before writing.

### Step 2 — Log your arrival

Prepend to `ACTIVITY.md` **below** the `<!-- ENTRIES BELOW THIS LINE -->` marker only. Never prepend above the header.

```
YYYY-MM-DDTHH:MM:SSZ | {your-agent-name} | session-start | {project-slug} | Starting: {what you plan to do}
```

### Step 3 — Update your agent file

During and after your session, keep `Agents/{your-name}.md` current:

- Update `## Current Work` with what you're doing right now
- Add to `## Recent Decisions` any choices you made
- Add to `## Handoff Notes` anything another agent needs to know
- Update `## Projects` status if something changed

---

## During Work — Log As You Go

Add entries to `ACTIVITY.md` as things happen. Don't batch it all at the end.

| Event | When to log |
|---|---|
| `decision` | Any technical choice that affects other agents or projects |
| `blocker` | Something stopping you — name what and why |
| `blocker-resolve` | When you unblock — name how |
| `milestone` | Meaningful progress on a project |
| `handoff` | Work you're passing to another agent — include full context |
| `note` | Anything useful the fleet should know |

Format: `YYYY-MM-DDTHH:MM:SSZ | {agent-name} | {event-type} | {project-slug} | {detail}`

After 5+ new entries: run `bash build-context.sh` to regenerate `NOW.md` and `CONTEXT.md`.

---

## Building Something? Use Spec-Driven Development (SDD)

For any **non-trivial** work (new feature, multi-file change, anything architectural, > ~30 min), follow the **SDD protocol** in `sdd/README.md` *before writing code*:

1. **Spec** → `sdd/specs/YYYY-MM-DD-<slug>/spec.md` — the WHAT & WHY. Get Dwayne's 👍 before planning.
2. **Plan** → `plan.md` — the HOW (approach, file-by-file changes, how you'll verify).
3. **Tasks** → `tasks.md` — bite-sized checklist; do one at a time, commit per task, verify with evidence.
4. **Decisions** → record significant or hard-to-reverse choices as ADRs in `sdd/decisions/`.

Copy starters from `sdd/templates/`. **Spec before code.** Skip SDD only for trivial fixes (typos, one-liners, config). Worked example: `schema/specs/`.

---

## On Session End — Three Closing Steps

### Step 1 — Log your departure

Prepend to `ACTIVITY.md`:

```
YYYY-MM-DDTHH:MM:SSZ | {your-agent-name} | session-end | {project-slug} | Done: {summary of what you accomplished}
```

### Step 2 — Update your agent file

Bring `Agents/{your-name}.md` fully up to date before you leave:

- `## Current Work` — what's in progress and where you left off
- `## Handoff Notes` — what the next agent (or your next session) needs to know
- `## Recent Decisions` — decisions made this session

### Step 3 — Regenerate context if needed

If you wrote 5+ ACTIVITY.md entries: `bash build-context.sh`

---

## Rules

1. No ghost sessions. If you worked, there must be a trail in `ACTIVITY.md`.
2. One file per memory topic. Update existing files, don't create duplicates.
3. Use `[[wikilinks]]` to link people, projects, and agents by name.
4. Never delete another agent's entries or memories without Dwayne's approval.
5. Verify old memories before acting on them — they are point-in-time snapshots.
6. Hermes: always `git pull --rebase` before writing. Commit and push when done.

---

## Agent Roster

| Agent | Platform | Specialty |
|---|---|---|
| [[claude-code]] | Mac | Primary agent, complex implementation, code review |
| [[codex]] | Mac | Skill/plugin creation, image generation |
| [[goose]] | Mac | Quick tasks, app prototyping, subagent delegation |
| [[kimi]] | Mac | Browser automation, desktop tasks |
| [[kiro]] | Mac | IDE-integrated, lightweight tasks |
| [[hermes]] | VPS | Fleet orchestrator, 260 skills, multi-platform messaging |
| [[MacH]] | Mac | Hermes-Mac — lead local agent on the Mac Mini: coding, dev, quick tasks, research |
| [[antigravity]] | Mac | Projects workspace: skills, mobile, web, OpenClaw agents |
| [[cursor]] | Mac | IDE-integrated coding, MCP plugins, multi-model |
| [[hyperagent]] | Cloud | Research, audits, design specs, rich artifacts; writes via GitHub API (no local filesystem) |

---

## Vault Location

- Mac agents: `/Users/dwayne-primeau/Library/Mobile Documents/com~apple~CloudDocs/Agent Memory/Coding/`
- Hermes (VPS): `/home/ubuntu/agent-memory/`
- GitHub sync: `github.com/dman1313/agent-memory-coding` (private, syncs every 15min)
