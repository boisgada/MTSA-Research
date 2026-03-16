# Queue Archive

## Purpose

This folder contains archived queue items (completed and cancelled) to keep the master queue manageable. The master queue (`../master-queue.md`) contains only active items (Pending, In Progress, Blocked).

---

## Archive Structure

### Completed Items (by Category)

The archive structure supports **any queue type prefix**. Standard template types include:

- **`completed-res.md`**: Completed Research items (RES-###)
- **`completed-enh.md`**: Completed Enhancement items (ENH-###)
- **`completed-mit.md`**: Completed Mitigation items (MIT-###)
- **`completed-fix.md`**: Completed Fix items (FIX-###)
- **`completed-del.md`**: Completed Deliverable items (DEL-###)

### Custom Queue Types

**Projects can define custom queue types** beyond the standard five. For example:
- **`completed-crit.md`**: Completed Critical Review items (CRIT-###)
- **`completed-gap.md`**: Completed Gap Analysis items (GAP-###)
- **`completed-map.md`**: Completed Mapping items (MAP-###)
- Or any other prefix your project uses

**To add a custom queue type**:
1. Create `completed-[prefix].md` file (e.g., `completed-crit.md`)
2. Use the same format as other archive files
3. Update `master-queue.md` to reference the new archive file
4. Document the custom type in your project's queue system guide

### Cancelled Items

- **`cancelled-items.md`**: All cancelled items (all categories and prefixes)

---

## When to Archive

Move items to archive when:
- Status changes to "Completed"
- Status changes to "Cancelled"

**Keep in master-queue.md**:
- Status is "Pending"
- Status is "In Progress"
- Status is "Blocked"

---

## Archive File Format

Each archive file follows this structure:

```markdown
# Completed [Category] Items

## Purpose

This file contains all completed [Category] queue items for historical reference.

**Total Items**: [Number]
**Last Updated**: [YYYY-MM-DD]

---

## Items

### RES-001 - [Title] ✅

- **Status**: Completed
- **Priority**: [High | Medium | Low]
- **Created**: [YYYY-MM-DD]
- **Completed**: [YYYY-MM-DD]
- **Description**: [Description]
- **Outcome**: [What was accomplished]
- **Notes**: [Any final notes]

---

[Additional completed items...]
```

---

## Benefits

1. **Master Queue Stays Manageable**: Only active items in main file
2. **Full History Preserved**: All completed work remains accessible
3. **Better Performance**: AI assistants can work efficiently with smaller files
4. **Easier Navigation**: Find items by category in dedicated files
5. **Git-Friendly**: Smaller files mean cleaner diffs and faster operations

---

## Maintenance

- Archive items immediately upon completion
- Update archive file statistics periodically
- Consider splitting very large archive files by year if needed (e.g., `completed-res-2025.md`)

---

*Queue Archive - Part of AI Assistance Template*

