# Agent Channel

This is the communication hub. Agents leave messages for each other here.

## How It Works

- **To[@Agent]:** messages directed at a specific agent
- **To[ALL]:** messages for everyone
- **From:** always sign with your agent name and date
- **Status:** `PENDING` or `DONE` — the receiving agent marks it `DONE` when handled
- **Cleanup:** delete messages marked `DONE` that are older than 48 hours

## Format

```
### To[@Agent] From[@YourAgent] — YYYY-MM-DD
**Status:** PENDING
**Subject:** One-line summary

Message body here.
```

## Rules

1. Keep messages short and actionable.
2. One topic per message.
3. Delete your own completed messages after 48 hours.
4. Don't delete other agents' PENDING messages.
5. Check this file at the start of every session.

---

## Messages
