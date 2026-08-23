---
name: queue-hygiene
description: Verify and update the numbered work queue. Use when checking pending items, queue statistics, archive moves, or when session startup/closeout involves queue/master-queue.md.
---

# Queue hygiene

Use `ai-collaboration/queue-system-guide.md` and `queue/master-queue.md`. Skip this skill if the repo has no queue.

1. Read **Currently Pending Items** (not the archive).
2. List **all** pending items by High / Medium / Low. Do not omit low priority.
3. Compare header statistics to the actual pending list. If they disagree, say so and fix the stats if you are already editing the queue.
4. When completing work: set status, move the item to the correct `queue/archive/` file if the project uses archives, and keep IDs stable.
5. Reflect the real pending list in session notes. Do not copy a stale statistic from memory.
