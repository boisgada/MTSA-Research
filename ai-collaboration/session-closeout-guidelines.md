# Session Closeout Guidelines

## Purpose

This document provides guidelines for properly closing AI collaboration sessions: documenting outcomes, updating the queue and project context, handling git state, and preparing handoff for the next session. Effective closeout maintains continuity and helps the next session start quickly.

---

## Pre-Closeout Checklist

Before starting closeout:

- [ ] Primary objectives completed or clearly documented as incomplete
- [ ] Code changes tested (if applicable)
- [ ] Files saved
- [ ] Errors resolved or documented
- [ ] Questions answered or documented for follow-up

---

## Session Closeout Protocol

### 1. Document Session Outcomes

Use **`session-notes-template.md`** (or your project’s session notes format):

- [ ] Session information (date, duration, focus)
- [ ] Session objectives (mark completed/pending)
- [ ] Key discussions and decisions
- [ ] Documents created/updated
- [ ] Key insights and follow-up items
- [ ] **Next Session Preparation** (see below)

**Critical: Next Session Preparation section**

This section is the main handoff. Include:

- **Queue items for next session**: List ALL pending items (verify against `queue/master-queue.md`); note any mismatch with queue statistics.
- **Repository status**: Untracked files, uncommitted changes, current branch. Use explicit statements (e.g. “No untracked files”) when none.
- **Blockers or dependencies**: List any, or state “No current blockers.”
- **Recommended focus**: Primary and secondary focus for next session; context or files to review.

---

### 2. Update Queue System (If Using)

- [ ] Mark completed items as Completed; update In Progress items
- [ ] Update queue statistics and “Last Updated” in `queue/master-queue.md`
- [ ] Move completed items to archive if your project uses the archive structure (see `queue-system-guide.md`)
- [ ] Reflect queue status in session notes (“Next Session Preparation”)

---

### 3. Update Project Context (If Needed)

If there were significant decisions or changes:

- [ ] Update `project-context.md` (decisions, status, key findings)
- [ ] If using memory-bank, update `activeContext.md`, `progress.md`, or other relevant files

---

### 4. Handle Git Repository State

- [ ] Run `git status` and note untracked files and uncommitted changes
- [ ] For untracked files: commit, add to `.gitignore`, or remove
- [ ] Review changes (`git diff`), stage, and commit with clear messages (reference queue item IDs when relevant)
- [ ] Push to remote when ready, or document in session notes that push is pending

**Best practice**: Commit work and queue updates together when completing a queue item (see `documentation/queue-item-workflow.md` if using the queue).

---

### 5. Clean Up and Finalize

- [ ] Remove or archive temporary files as needed
- [ ] Ensure “Next Session Preparation” and closeout summary are complete
- [ ] Save all session notes and documentation

---

## Closeout Summary Template

At the end of each session, a short summary helps the next session:

```markdown
## Session Closeout Summary

### Accomplished
- ✅ [Completed objective 1]
- ✅ [Completed objective 2]

### Pending for Next Session
- [ ] [Pending item 1] - [Priority]
- [ ] [Pending item 2] - [Priority]

### Repository Status
- **Branch**: [branch name]
- **Untracked Files**: [list or "None"]
- **Uncommitted Changes**: [list or "None"]

### Blockers/Dependencies
- [List or "None"]

### Recommended Next Steps
1. [Next step 1]
2. [Next step 2]
```

---

## Integration with Session Startup

Closeout feeds directly into the next session:

1. **Closeout**: Complete “Next Session Preparation” in session notes
2. **Next session**: Review that section and `queue/master-queue.md` (if using queue) at startup
3. **Continuity**: Same structure and explicit statements (“No untracked files”, “No pending items”) reduce ambiguity

See **`session-startup-guidelines.md`** for startup protocol.

---

## Integration Points

- **Session notes template**: Use for outcomes and Next Session Preparation
- **Queue system**: Update items and statistics; see `queue-system-guide.md` and `documentation/queue-item-workflow.md`
- **Rules of engagement**: Follow end-of-session steps in `rules-of-engagement.md` (e.g. accept file edits, verify generic content if applicable)
- **Cursor file edits**: Accept all file edits before committing; see `documentation/cursor-file-edits-guide.md`

---

*Session Closeout Guidelines – template v1.0*
