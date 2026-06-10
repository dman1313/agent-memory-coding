# Coding Factory Routing — MacH → Cursor

MacH orchestrates. Cursor implements. This doc is the handoff protocol.

## Roles

| Agent | Role in coding factory |
|---|---|
| **MacH** | Receives requests (Dashboard, Telegram via Hermes, Slack, Dwayne). Triages, scopes, dispatches implementation work to Cursor. |
| **cursor** | Picks up dispatches from inbox, implements in the target repo, verifies, reports back. |
| **hermes** (VPS) | 24/7 gateway; can relay user intent to MacH or post dispatches when MacH is offline. |

## Dispatch flow (MacH → Cursor)

When MacH has a coding task for Cursor:

### 1. Write to Cursor inbox

Prepend to `Agent Inbox/cursor.md`:

```markdown
## YYYY-MM-DDTHH:MM:SSZ MacH Dispatch

**Status:** PENDING
**From:** MacH
**Project:** {project-slug}
**Workspace:** {absolute path to repo}
**Priority:** normal | urgent

### Task
{One clear imperative — what to build, fix, or verify}

### Acceptance
- {criterion 1}
- {criterion 2}

### Context
{Links, file paths, prior decisions, constraints. Keep short.}

### Notify (optional)
Slack: #all-humangoodai | none
```

### 2. Post on AGENT-CHANNEL

```markdown
### To[@Cursor] From[@MacH] — YYYY-MM-DD
**Status:** PENDING
**Subject:** Coding factory dispatch — {project-slug}

New PENDING dispatch in Agent Inbox/cursor.md — {one-line task summary}.
Workspace: {path}
```

### 3. Log handoff

```
YYYY-MM-DDTHH:MM:SSZ | MacH | handoff | {project-slug} | Dispatched to cursor: {one-line summary}
```

### 4. Optional Slack ping

Post to `#all-humangoodai`: `🛠 MacH → Cursor: {task summary}. Inbox pending.`

---

## Pickup flow (Cursor)

On **every session start** (after vault read):

1. Open `Agent Inbox/cursor.md`
2. Find the **newest `Status: PENDING`** dispatch from MacH (or Dashboard)
3. If found:
   - Log `session-start` with intent to execute that dispatch
   - `cd` to the **Workspace** path; confirm repo matches project
   - Execute the **Task**; verify **Acceptance** criteria
   - Mark dispatch **DONE** in inbox; add **Response** block with summary + evidence
   - Mark AGENT-CHANNEL message **DONE**; reply with outcome
   - Log `milestone` or `handoff` back to MacH if follow-up needed
4. If multiple PENDING: do **urgent** first, else oldest first

### Response block (Cursor adds to inbox entry)

```markdown
**Response:** {YYYY-MM-DDTHH:MM:SSZ by cursor}
- Done: {summary}
- Verify: {cargo test / command run / screenshot}
- Branch/commits: {if any}
- Handoff: {blockers or next steps for MacH}
```

---

## Project slugs (coding factory)

| Slug | Repo / workspace |
|---|---|
| `agentready-v1` | `/Volumes/M2 Media/Coding Dwayne/agentready Mark down-v1-sdd-v2style-package` |
| `agent-memory-coding` | Vault path (iCloud) |
| `humangood-ai-webpage` | HumanGood / webpage repos (see Project/) |
| `general` | MacH specifies workspace in dispatch |

MacH: always include **Workspace** as absolute path. Cursor: never guess — use the path in the dispatch.

---

## MacH dispatch examples

**Fix + verify**
```
Task: Fix EPUB converter panic on empty spine; add test.
Acceptance: cargo test passes; no unwrap on user path.
Workspace: .../agentready Mark down-v1-sdd-v2style-package
```

**Implement feature**
```
Task: Add text quality score to validation report JSON.
Acceptance: serve UI shows score; existing tests green.
```

**Review only**
```
Task: Review uncommitted diff in agentready-core; list risks before merge.
Acceptance: Written review in inbox Response; no commits unless asked.
```

---

## Phase 2 (optional): auto-run without opening Cursor IDE

For fire-and-forget from MacH CLI, use **Cursor SDK** on the Mac Mini:

```bash
# Requires CURSOR_API_KEY in env — see ~/.cursor/skills-cursor/sdk/SKILL.md
cursor-sdk prompt "Execute MacH dispatch in Agent Inbox/cursor.md (newest PENDING)" \
  --cwd "/Volumes/M2 Media/Coding Dwayne/agentready Mark down-v1-sdd-v2style-package"
```

Vault inbox remains source of truth; SDK is an optional trigger. Prefer inbox + IDE until API key and scripts are configured.

---

## Links

- [[Agents/mach]]
- [[Agents/cursor]]
- [[AGENT-BOOTSTRAP]]
- [[STANDING-ORDERS]]
