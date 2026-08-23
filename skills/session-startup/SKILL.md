---
name: session-startup
description: Prepare an AI collaboration session. Use when the user asks to start, prepare, or bootstrap a session, or to review context, git, queue, and MCP policy before work.
---

# Session startup

Follow `ai-collaboration/session-startup-guidelines.md`. Minimum path:

1. Confirm git root (`git rev-parse --show-toplevel`).
2. Read `ai-collaboration/project-context.md` and `ai-collaboration/rules-of-engagement.md`.
3. Read `ai-collaboration/mcp-integration.md` if MCP will be used.
4. Read root `AGENTS.md` (including project-specific sections below the template baseline).
5. If present, read `ai-collaboration/SOUL.md` (identity only).
6. If present, run `ai-collaboration/heartbeat.md`.
7. Scan other `skills/*/SKILL.md` **descriptions only**.
8. If using a queue, list **all** pending items from `queue/master-queue.md` and check statistics.
9. Run `git status` (include untracked). Do not assume the Research folder git root is a sibling product repo.
10. Confirm session objectives. If the user only asked for standard prep, do not pick the substantive goal.

Short prompts such as “prepare for today’s session” mean this skill, not a new workstream.
