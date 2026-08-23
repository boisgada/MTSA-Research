# Heartbeat — session patrol checklist

**Optional.** Run this during **standard session startup** (not as a background daemon). Keep it short. Sync copies this file when missing and does **not overwrite** a customized copy.

Skip items that do not apply to this repository.

## Patrol

1. **Git:** `git status` (untracked included) and `git rev-parse --show-toplevel` so the active repo is the intended one.
2. **Queue (if used):** Read `queue/master-queue.md` **Currently Pending Items**. List High/Medium/Low. Note statistic mismatches.
3. **Handoff:** If today’s or the latest `session_notes_*.md` has **Next Session Preparation**, use it.
4. **Durable context:** If `project-context.md` or `memory-bank/activeContext.md` disagrees with the queue or git state, say so.
5. **Template feedback (if the folder exists):** Note any *open* dated files under `documentation/template-feedback/` (not `integrated/`).
6. **Multi-remote / multi-clone (if the project uses them):** If project docs require fetch-and-compare, do that; otherwise skip.
7. **Skills:** Scan `skills/*/SKILL.md` descriptions only; do not load full skill bodies unless the session task matches.

## Not a heartbeat

- Installing or running personal-assistant gateways
- Unattended cron or messaging bots
- Full template alignment (`sync-all-projects.sh`) unless the user asked
