# AGENTS.md

This file defines default agent behavior for this repository in **Cursor** and **Windsurf**.

<!-- TEMPLATE-SECTION:START name=agents-template-baseline -->
## Session startup baseline

At the start of a new session, read and align with:

1. `ai-collaboration/project-context.md`
2. `ai-collaboration/rules-of-engagement.md`
3. `ai-collaboration/session-startup-guidelines.md`
4. `ai-collaboration/mcp-integration.md` (MCP usage, token discipline, how to reach the **canonical** AI Assistance Template)

If queue-driven work is expected, also review `queue/master-queue.md` and `ai-collaboration/queue-system-guide.md`.

## Session closeout baseline

When the user ends a session (for example: “close session,” “session closeout,” “wrap up”), do **not** only reply in chat.

1. Follow **`ai-collaboration/session-closeout-guidelines.md`**.
2. Write dated session notes (for example `ai-collaboration/session_notes_YYYYMMDD.md`) using **`ai-collaboration/session-notes-template.md`** as a guide. Include **Next Session Preparation** (queue, git state, next task, blockers) when applicable. If that file **already** holds a completed session from **today**, append a new labeled session section or use `session_notes_YYYYMMDD-02.md` (see **session-notes-template.md → Same calendar day, multiple sessions**) instead of overwriting the earlier session.
3. Align with **`ai-collaboration/rules-of-engagement.md`** (End of Session): queue state, git notes, commit/push when appropriate.

## MCP integration (default)

- Use MCP servers per **`ai-collaboration/mcp-integration.md`**: prefer targeted retrieval, read tool schemas before calling tools, and avoid dumping large files into chat when a tool can subset or summarize.
- For **files in the canonical AI Assistance Template tree** (alignment, governed docs, “what ships?”), follow **mcp-integration.md**: use the **filesystem** MCP mounted at that path, or **editor `Read`** on the known absolute path — not the standards server’s **`list_directory`** unless you have verified its root behavior.
- Short prompts such as “prepare for today’s session” mean **standard startup only** (context, rules, optional queue, MCP policy)—not choosing the session’s substantive goal unless the user states one.

## Agent skills, identity, and patrol (default)

- **Progressive disclosure:** At session start, read only the YAML `name` / `description` in each `skills/*/SKILL.md`. Load the full skill body only when the current task matches that description.
- **Identity vs procedure:** Optional `ai-collaboration/SOUL.md` is tone and boundaries for this repo. Keep operating procedure in this file and in `rules-of-engagement.md`.
- **Heartbeat:** If `ai-collaboration/heartbeat.md` exists, run that short patrol during standard session startup. It is a checklist, not a background daemon.
- **High-risk actions:** If `ai-collaboration/high-risk-actions.md` exists, follow it before deploys, privileged commands, or live-system changes. If it is absent, ask before those classes of action.
- **Durable memory:** At closeout, promote lasting facts into `project-context.md` or `memory-bank/` rather than leaving them only in chat or dated session notes. If the same procedure was needed three or more times, propose a new `skills/<name>/SKILL.md` instead of growing always-on rules.
- **Out of scope for this template:** messaging-gateway personal assistants, always-on host agents, and unattended cron. Those are optional separate runtimes, not default project layout.

See `skills/README.md` and `ai-collaboration/agent-runtime-patterns.md`.
<!-- TEMPLATE-SECTION:END name=agents-template-baseline -->

## Project-specific agent rules (customize)

Add sections here for **your** repo (e.g. queue execution modes, domain guardrails, backup workflows). Keep **pointers** to long docs instead of duplicating full protocols.

---

*Template default — extend this file for project-specific behavior.*
