# AGENTS.md

This file defines default agent behavior for this repository in **Cursor** and **Windsurf**.

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
2. Write dated session notes (for example `ai-collaboration/session_notes_YYYYMMDD.md`) using **`ai-collaboration/session-notes-template.md`** as a guide. Include **Next Session Preparation** (queue, git state, next task, blockers) when applicable.
3. Align with **`ai-collaboration/rules-of-engagement.md`** (End of Session): queue state, git notes, commit/push when appropriate.

## MCP integration (default)

- Use MCP servers per **`ai-collaboration/mcp-integration.md`**: prefer targeted retrieval, read tool schemas before calling tools, and avoid dumping large files into chat when a tool can subset or summarize.
- For **files in the canonical AI Assistance Template tree** (alignment, governed docs, “what ships?”), follow **mcp-integration.md**: use the **filesystem** MCP mounted at that path, or **editor `Read`** on the known absolute path — not the standards server’s **`list_directory`** unless you have verified its root behavior.
- Short prompts such as “prepare for today’s session” mean **standard startup only** (context, rules, optional queue, MCP policy)—not choosing the session’s substantive goal unless the user states one.

## Project-specific agent rules (customize)

Add sections here for **your** repo (e.g. queue execution modes, domain guardrails, backup workflows). Keep **pointers** to long docs instead of duplicating full protocols.

---

*Template default — extend this file for project-specific behavior.*
