---
name: session-closeout
description: Close an AI collaboration session. Use when the user says close session, session closeout, wrap up, or asks for handoff notes, git status, and next-session preparation.
---

# Session closeout

Do **not** only reply in chat. Follow `ai-collaboration/session-closeout-guidelines.md`.

1. Write or update dated session notes from `ai-collaboration/session-notes-template.md`. If today’s file already holds a completed session, append a new session block or use `session_notes_YYYYMMDD-02.md`.
2. Include **Next Session Preparation** (queue, git, next task, blockers).
3. Load `promote-durable-memory` and apply it.
4. Update `queue/master-queue.md` if this repo uses the queue.
5. Record `git status` (untracked included). Commit/push when the user asked to commit/sync or when project rules require it.
6. If the same procedure was performed three or more times and is still only in chat, propose a new `skills/<name>/SKILL.md` (do not silently invent canonical template skills in a consumer repo).

Pair with `ai-collaboration/rules-of-engagement.md` (End of Session).
