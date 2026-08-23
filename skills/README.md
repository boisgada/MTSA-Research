# Agent skills

Optional **progressive-disclosure** procedures for AI assistants. Compatible in spirit with the [Agent Skills](https://agentskills.io) `SKILL.md` layout used by Cursor, Claude Code, OpenClaw, and Hermes.

## Layout

```
skills/
  README.md                 # this file
  session-startup/SKILL.md
  session-closeout/SKILL.md
  queue-hygiene/SKILL.md
  promote-durable-memory/SKILL.md
```

Each skill is a folder with a `SKILL.md` whose YAML frontmatter has `name` and `description`. Keep the body short; point to existing docs instead of duplicating them.

## How agents should load skills

1. At session start, read **only** `name` and `description` from each `skills/*/SKILL.md`.
2. If the user task matches a description, **then** read that skill’s full body.
3. Do not paste every skill into the prompt.

Awesome Copilot (`reference-projects/awesome-copilot/skills/`) is a **catalog**. Copy or adapt a skill here when this project will actually use it.

## Adding a project skill

1. Create `skills/<kebab-name>/SKILL.md`.
2. Write a description that states **when to use** the skill (agents match on that text).
3. Keep always-on rules in `AGENTS.md` / `.cursor/rules`; keep situational procedures here.

## Starter skills

| Skill | When to load |
|-------|----------------|
| `session-startup` | User asks to prepare/start a session |
| `session-closeout` | User asks to close/wrap the session |
| `queue-hygiene` | Queue stats, pending lists, or archive moves |
| `promote-durable-memory` | Closeout or after a decision that should survive chat |
