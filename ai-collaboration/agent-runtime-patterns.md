# Agent runtime patterns (template adaptation)

This repository is an **IDE collaboration kit** (Cursor, Windsurf, and similar), not an always-on personal-assistant runtime.

Patterns below were adapted from public agent stacks such as [OpenClaw](https://github.com/openclaw/openclaw), [Hermes Agent](https://github.com/NousResearch/hermes-agent), [Agent Skills](https://agentskills.io), Claude Code, and Cursor skills. **We did not vendor those runtimes.**

| Pattern | Upstream idea | In this template |
|---------|----------------|------------------|
| Progressive skills | `SKILL.md` + load on match | `skills/<name>/SKILL.md`; scan descriptions at startup |
| Identity ≠ procedure | `SOUL.md` vs `AGENTS.md` | `ai-collaboration/SOUL.md` vs root `AGENTS.md` |
| Daily log vs curated memory | daily memory files vs `MEMORY.md` | dated `session_notes_*.md` vs `project-context.md` / `memory-bank/` |
| Heartbeat | periodic patrol | `ai-collaboration/heartbeat.md` at session start only |
| Exec approvals | tool policy / ask gates | `ai-collaboration/high-risk-actions.md` |
| Learning loop | auto-write skills | closeout: propose a skill after repeated procedures (human review) |
| Skill catalogs | ClawHub, skills.sh, Awesome Copilot | `reference-projects/awesome-copilot/` for discovery; project `skills/` for what this repo actually uses |

## What this template does not ship

- Messaging gateways (Telegram, Slack, WhatsApp, …)
- A long-running Gateway / daemon on a Mac mini or VPS
- Unattended cron with delivery to chat
- Isolated multi-agent OS processes (Cursor subagents remain optional in the IDE)

If a project needs an always-on assistant, install that runtime **beside** the repo and keep secrets out of git. Do not add it via `sync-all-projects.sh`.

## Customization and sync

| File | Sync behavior |
|------|----------------|
| `skills/*/SKILL.md` (starter skills) | Template-controlled: missing copies; later drift replaced unless the project marks the path project-controlled |
| `ai-collaboration/SOUL.md` | Copied if missing; **not** overwritten after customization |
| `ai-collaboration/heartbeat.md` | Copied if missing; **not** overwritten after customization |
| `ai-collaboration/high-risk-actions.md` | Copied if missing; **not** overwritten after customization |
| `AGENTS.md` baseline | Merge-controlled `TEMPLATE-SECTION` block |

Add **project** skills as extra directories under `skills/`. Prefer a new skill over a longer always-on `AGENTS.md` when the procedure is situational.

## References (external)

- Agent Skills spec: https://agentskills.io
- OpenClaw: https://github.com/openclaw/openclaw
- Hermes Agent: https://github.com/NousResearch/hermes-agent
