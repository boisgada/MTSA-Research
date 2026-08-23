---
name: promote-durable-memory
description: Promote lasting facts out of chat and daily notes into project context. Use at session closeout, after architectural or process decisions, or when the user says the assistant forgot something that was already decided.
---

# Promote durable memory

Dated session notes are a **log**. They are not the long-term store.

## Promote (examples)

- Decisions, constraints, and “how we work here” → `ai-collaboration/project-context.md`
- Current focus / next steps on complex projects → `ai-collaboration/memory-bank/activeContext.md` and `progress.md` if that tree is in use
- Recurring how-to → a new `skills/<name>/SKILL.md` (description must say when to load it)
- Standing tone/limits → `ai-collaboration/SOUL.md` (keep it short)

## Do not promote

- Transient debug traces, one-off URLs, or secrets
- Consumer queue items or chat exports into the **canonical** AI Assistance Template
- Organization-specific names if the target file must stay generic

If `project-context.md` and the queue disagree, fix or flag the mismatch instead of writing a third copy.
