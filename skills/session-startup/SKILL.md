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
5. Read `ai-collaboration/SOUL.md` (identity; default Chase Hughes-inspired voice).
6. If present, run `ai-collaboration/heartbeat.md`.
7. Scan other `skills/*/SKILL.md` **descriptions only**.
8. If using a queue, list **all** pending items from `queue/master-queue.md` and check statistics.
9. If this folder is a git work tree: confirm git root, `git status -sb` (untracked included), and **fetch** the default remote if one exists. Tell the user if the clone is dirty, ahead, behind, or diverged. **Do not** commit, pull, or push unless they asked. Do not assume a parent workspace folder is this repo’s git root.
10. Confirm session objectives. If the user only asked for standard prep, do not pick the substantive goal.
11. If `canvases/` exists and live boards are missing, load `canvas-restore` (do not run restore unless boards are actually missing).

Short prompts such as “prepare for today’s session” mean this skill, not a new workstream.
