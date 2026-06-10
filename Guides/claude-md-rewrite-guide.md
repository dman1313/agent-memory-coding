# Agent CLAUDE.md Rewrite Guide

Any agent in the fleet can follow this process cold to rewrite their own or another agent's core CLAUDE.md / system instruction file for token efficiency and modern agentic capabilities.

---

## What This Process Does

1. Strips token waste — deduplicates content already covered by referenced files, compresses prose to imperative bullets, cuts anything the runtime does by default.
2. Adds three canonical capability sections: **Self-Annealing Skills**, **Auto Research**, **Leverage**.
3. Produces a reusable meta-prompt so the process can be applied again by any agent.

---

## Step-by-Step

1. **Read the target file.** Note every imperative instruction (things the agent *must* do).
2. **Count tokens.** `wc -w <file> | awk '{printf "~%d tokens\n", $1 * 1.3}'`
3. **Identify duplicates.** Cross-reference every instruction against files the CLAUDE.md mandates reading (e.g. STANDING-ORDERS.md, NOW.md). If an instruction is fully covered there, remove it from CLAUDE.md — the mandate to *read* that file is sufficient.
4. **Compress guidelines.** Rewrite multi-paragraph sections as numbered or bulleted imperatives. Keep thresholds and conditions; drop framing paragraphs, examples, and motivational text.
5. **Cut runtime defaults.** Remove anything Claude Code already does without instruction (syntax highlighting, git awareness, reading visible files, etc.).
6. **Add the three canonical sections** (copy-paste templates below).
7. **Count tokens again.** Report before/after delta to the user.
8. **Checklist before finishing:**
   - [ ] Every removed instruction is either present in compressed form or covered by a referenced file.
   - [ ] No load-bearing rule was silently dropped.
   - [ ] Token count is lower.
   - [ ] No other project-level CLAUDE.md files were touched.

---

## Canonical Section Templates

Copy these verbatim into the target CLAUDE.md, adjusting skill paths if needed.

### Self-Annealing Skills

```markdown
## Self-Annealing Skills

When a skill or script errors or produces a suboptimal result:
- Identify the root cause in the skill file or execution script.
- Patch the file permanently (`~/.claude/skills/<name>/SKILL.md` or the script) so the same failure cannot recur.
- Log a `blocker-resolve` entry in `ACTIVITY.md` naming the file changed and the fix applied.
- Never surface the same error twice — if it recurs after a patch, escalate to the user immediately.
```

### Auto Research (Karpathy-style)

```markdown
## Auto Research (Karpathy-style)

When asked to plan or optimize anything, structure work as an autonomous iterative research loop:
- Define a concrete measurable KPI before starting (e.g. load time ms, test pass %, token count).
- Identify the tool or endpoint that can change the variable (code, API, prompt, config).
- Iterate: generate variation → measure KPI → analyze delta → adjust → repeat.
- Run autonomously without waiting for human prompting between iterations.
- Stop when: KPI target is hit, iteration cap is reached, or gains are negligible. Report results with evidence.
```

### Leverage Claude Code

```markdown
## Leverage Claude Code

- Non-trivial work (multi-file, architectural, >~30 min): use plan mode; follow vault SDD protocol — spec before code.
- Batch independent tool calls in one message; parallelize searches, reads, and checks.
- Broad exploration ("where/how does X work"): delegate to an Explore subagent; keep your own context for the actual change.
- Use matching skills instead of reinventing their workflow.
- Verify end-to-end before reporting done: run the app/tests, capture proof. Never ask the user to check what you can check yourself.
```

---

## The Reusable Meta-Prompt

Paste this (filling in `[path-to-agent-md]`) to trigger this process in any new session:

```
Audit [path-to-agent-md]. Rewrite it to minimize tokens without losing any binding instruction:
deduplicate anything already covered by files it mandates reading; compress prose into imperative
bullets; cut anything the runtime already does by default. Then add or update these sections:

**Self-Annealing Skills** — After any execution error or skill run that produces a suboptimal
result, the agent must: (1) identify the root cause in its own script or skill file, (2) patch
the file permanently so the mistake cannot recur, (3) log a `blocker-resolve` entry in
ACTIVITY.md naming the file changed and why. Never surface the same error twice.

**Auto Research (Karpathy-style)** — When asked to plan or optimize anything, automatically
structure the work as an iterative research loop: define a concrete measurable KPI, identify the
tool/endpoint that can change the variable, set up an iteration cycle (test → measure → adjust →
repeat), and run it autonomously until the KPI improves or a stop condition is hit. Do not wait
for human prompting between iterations.

**Leverage** — when to use plan mode, parallel tool calls, Explore subagents, and matching skills.

Also produce an agent instruction manual saved to the vault at Guides/claude-md-rewrite-guide.md
so other agents can repeat this process.

Show a before/after token estimate (wc -w × 1.3) and list anything removed that might need
to be restored.
```

---

*Written by claude-code — 2026-06-10. Update this file whenever the canonical section templates change.*
