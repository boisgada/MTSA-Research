# Numbered Queueing System Guide

## Purpose

The numbered queueing system provides a structured way to track and prioritize work items across five categories:

- **Research**: Research questions, investigations, and information gathering
- **Enhancement**: Improvements, optimizations, and feature additions
- **Mitigation**: Risk mitigation strategies and actions
- **Fix**: Bug fixes, corrections, and issue resolutions
- **Deliverable**: Outputs to be shared, published, or delivered to stakeholders

---

## System Overview

### Core Components

1. **Master Queue File**: `queue/master-queue.md` - Tracks **active** items only (Pending, In Progress, Blocked)
2. **Archive Folder**: `queue/archive/` - Contains completed and cancelled items organized by category
3. **Queue Item Format**: Standardized format for each numbered item
4. **Queue Management**: Process for adding, updating, archiving, and closing items

### Scalable Structure

For projects with many queue items, the system uses a **hybrid structure**:

- **Active Items**: Kept in `master-queue.md` for easy access and AI assistant efficiency
- **Completed Items**: Archived in `queue/archive/` by category (e.g., `completed-res.md`, `completed-enh.md`)
- **Cancelled Items**: Archived in `queue/archive/cancelled-items.md`

**Benefits**:
- Master queue stays manageable (typically < 100 items)
- Full history preserved in organized archive files
- Better performance for AI assistants (smaller context windows)
- Easier navigation and Git diffs
- Still viewable in GitLab (all markdown files)

### Queue Numbering

- Format: `RES-001`, `ENH-001`, `MIT-001`, `FIX-001`, `DEL-001`, etc.
- **Standard Prefixes**: **RES** (Research), **ENH** (Enhancement), **MIT** (Mitigation), **FIX** (Fix), **DEL** (Deliverable)
- **Custom Prefixes**: Projects can define additional queue types (e.g., **CRIT** for Critical Review, **GAP** for Gap Analysis, **MAP** for Mapping)
- Sequential numbering within each category (RES-001, RES-002, RES-003, etc.)
- Each category maintains its own counter
- Numbers are never reused within a category (even if item is cancelled)
- Each queue number is unique and permanent

**Note**: When using custom queue types, create corresponding archive files (e.g., `completed-crit.md` for CRIT-### items).

---

## Queue Item Structure

Each queue item includes:

```markdown
### RES-001 - [Title]

- **Status**: [Pending | In Progress | Completed | Blocked | Cancelled]
- **Priority**: [High | Medium | Low]
- **Category**: [Research | Enhancement | Mitigation | Fix | Deliverable]
- **Created**: [YYYY-MM-DD]
- **Assigned**: [Name or "Unassigned"]
- **Related Items**: [ENH-002, FIX-005] (optional)
- **Description**: [Detailed description]
- **Acceptance Criteria**: [What defines completion]
- **Notes**: [Additional notes, updates, blockers]
```

**Note**: The prefix (RES, ENH, MIT, FIX, DEL) indicates the category, so the category field is technically redundant but included for clarity and filtering.

---

## Status Definitions

- **Pending**: Item is queued but not yet started
- **In Progress**: Active work is being done on this item
- **Completed**: Item is finished and verified
- **Blocked**: Item cannot proceed due to dependencies or blockers
- **Cancelled**: Item is no longer needed or relevant

---

## Priority Guidelines

- **High**: Critical for project success, blocking other work, or time-sensitive
- **Medium**: Important but not blocking, can be scheduled normally
- **Low**: Nice to have, can be deferred if needed

---

## Category Guidelines

### Standard Categories

#### Research (RES)

- Questions to investigate
- Information gathering tasks
- Literature reviews
- Source verification
- Data collection

#### Enhancement (ENH)

- Process improvements
- Documentation improvements
- Feature additions
- Optimization opportunities
- Quality improvements

#### Mitigation (MIT)

- Risk mitigation strategies
- Preventive actions
- Contingency planning
- Security measures
- Compliance actions

#### Fix (FIX)

- Bug fixes
- Corrections to errors
- Documentation corrections
- Data corrections
- System repairs

#### Deliverable (DEL)

- Documents to be shared with stakeholders
- Research summaries for distribution
- Presentations or materials for external audiences
- Reports or findings to be published
- Communication packages for partners or collaborators

### Custom Queue Types

**Projects can define additional queue types** beyond the standard five. Common examples:

- **CRIT** (Critical Review): Critical review items, validation tasks, quality assurance
- **GAP** (Gap Analysis): Gap analysis tasks, assessment items
- **MAP** (Mapping): Mapping tasks, cross-referencing work

**To add a custom queue type**:

1. **Define the prefix** (e.g., CRIT, GAP, MAP)
2. **Document the purpose** in your project's queue system guide
3. **Create archive file** when needed: `queue/archive/completed-[prefix].md`
4. **Update master-queue.md**:
   - Add to category counters section
   - Add to "Next Available Queue Numbers" section
   - Add to archive locations reference
5. **Use consistently** throughout the project

**Example**: If using CRIT-### items:
- Create `queue/archive/completed-crit.md` when first CRIT item is completed
- Add "**Critical Review (CRIT)**: X items (next: CRIT-###)" to category counters
- Add "**CRIT (Critical Review)**: Next available: **CRIT-###**" to next available numbers
- Reference `queue/archive/completed-crit.md` in archive locations

**Note**: Custom types work seamlessly with the archive system - just create the appropriate `completed-[prefix].md` file when needed.

---

## Queue Management Workflow

### Adding a New Item

1. Review existing queue to avoid duplicates
2. Determine appropriate category (Research, Enhancement, Mitigation, Fix, or Deliverable)
3. Find the last number used in that category (e.g., if last Research item is RES-015, next is RES-016)
4. Assign priority based on impact and urgency
5. Create new item with appropriate prefix and next sequential number for that category
6. Add to appropriate section in master queue
7. Update queue statistics and index

### Updating an Item

1. Find item by number in master queue
2. Update status, notes, or other fields as needed
3. Add date-stamped notes for significant changes
4. Update related items if dependencies change

### Completing an Item

1. Update status to "Completed" in master-queue.md
2. Add completion date
3. Document outcomes or deliverables in notes
4. Update any related items that were blocked
5. **Move item to appropriate archive file**:
   - Research items (RES-###) → `queue/archive/completed-res.md`
   - Enhancement items (ENH-###) → `queue/archive/completed-enh.md`
   - Mitigation items (MIT-###) → `queue/archive/completed-mit.md`
   - Fix items (FIX-###) → `queue/archive/completed-fix.md`
   - Deliverable items (DEL-###) → `queue/archive/completed-del.md`
   - **Custom types** (e.g., CRIT-###) → `queue/archive/completed-[prefix].md` (create if needed)
6. Remove from master-queue.md (keep only active items)
7. Update queue statistics in master-queue.md

### Blocking an Item

1. Update status to "Blocked" in master-queue.md
2. Document the blocker in notes
3. Reference blocking item if applicable
4. Update priority if needed
5. Keep in master-queue.md (blocked items are still active)

### Cancelling an Item

1. Update status to "Cancelled" in master-queue.md
2. Add cancellation date
3. Document reason for cancellation in notes
4. **Move item to** `queue/archive/cancelled-items.md`
5. Remove from master-queue.md
6. Update queue statistics in master-queue.md

---

## Best Practices

1. **Be Specific**: Clear descriptions and acceptance criteria
2. **Link Related Items**: Use "Related Items" to show dependencies
3. **Regular Updates**: Update status and notes regularly
4. **Priority Review**: Periodically review and adjust priorities
5. **Cleanup**: Archive or remove cancelled items periodically
6. **Reference in Sessions**: Reference queue items in session notes

---

## Integration with Project Workflow

### Session Start

- **Check "Currently Pending Items" section** (if using this structure) for quick overview
- Review queue for pending items (all priorities: High/Medium/Low)
- Verify queue statistics match actual pending items
- Check for blocked items that may be unblocked
- Identify items to work on in this session

### During Session

- Reference queue items when working on them
- Update queue items as work progresses
- Add new items as they are identified

### Session End

- Update queue items worked on
- Add new items discovered during session
- Document in session notes which queue items were addressed

---

## Queue Organization

### Master Queue Structure

The `master-queue.md` file contains **only active items** organized by:

1. **By Status**: Pending / In Progress / Blocked
2. **By Priority**: Within each status, items are grouped by High/Medium/Low priority

This keeps the master queue focused on actionable work and manageable in size.

### Archive Structure

Completed and cancelled items are organized in `queue/archive/`:

1. **By Category**: Completed items are split by category (RES, ENH, MIT, FIX, DEL)
2. **By Status**: Cancelled items are in a single file (all categories together)
3. **Chronological**: Within each archive file, items are typically listed in chronological order

### When to Use Archive Structure

**Use archive structure when**:
- You have more than ~50 completed items
- Master queue file is becoming difficult to navigate
- AI assistants are having trouble with file size
- Git diffs are becoming unwieldy

**For small projects** (< 50 total items), you can keep everything in master-queue.md if preferred. The archive structure is optional but recommended for scalability.

### Recommended: "Currently Pending Items" Section

The master queue template includes a "Currently Pending Items" section that lists only active items (Pending, In Progress, Blocked). This is the default structure.

**Benefits**:
- AI assistants can quickly find pending items without searching through archived items
- Clear separation between active work and historical items
- Easier to verify queue statistics match actual pending items
- Master queue stays manageable even with hundreds of completed items
- Better performance for AI assistants (smaller context windows)

**Maintenance**: When items are completed or cancelled, move them to the appropriate archive file and remove from master-queue.md. This keeps the master queue focused on actionable work.

---

## Queue Index (Optional)

For large queues, maintain an index:

```markdown
## Queue Index

### By Category

- Research: RES-001, RES-002, RES-003
- Enhancement: ENH-001, ENH-002
- Mitigation: MIT-001, MIT-002
- Fix: FIX-001, FIX-002
- Deliverable: DEL-001, DEL-002

### By Status

- Pending: RES-003, ENH-001, MIT-002
- In Progress: RES-001, RES-002
- Completed: ENH-001, FIX-001
- Blocked: MIT-001

### By Priority

- High: RES-001, RES-002, MIT-001
- Medium: RES-003, ENH-001, ENH-002
- Low: FIX-001, FIX-002
```

**Note**: With prefix-based numbering, category is immediately visible from the queue number, making filtering by category easier.

---

## Migration from Single-File Structure

If you have an existing `master-queue.md` with many completed items:

### Migration Steps

1. **Create archive folder structure**:
   ```bash
   mkdir -p queue/archive
   ```

2. **Review your master-queue.md** and identify:
   - All completed items
   - All cancelled items
   - Active items (Pending, In Progress, Blocked)

3. **Move completed items** to appropriate archive files:
   - Research items → `queue/archive/completed-res.md`
   - Enhancement items → `queue/archive/completed-enh.md`
   - Mitigation items → `queue/archive/completed-mit.md`
   - Fix items → `queue/archive/completed-fix.md`
   - Deliverable items → `queue/archive/completed-del.md`

4. **Move cancelled items** to `queue/archive/cancelled-items.md`

5. **Update master-queue.md**:
   - Remove all completed/cancelled items
   - Keep only active items (Pending, In Progress, Blocked)
   - Update statistics to reflect the split
   - Add reference to archive locations

6. **Verify queue numbers unchanged** - All queue numbers remain the same, only file organization changes

### Backward Compatibility

- **Queue numbers never change** - Commit messages referencing "RES-001" continue to work
- **Archive is optional** - Small projects can keep everything in master-queue.md
- **Gradual migration** - You can migrate gradually, moving items as they complete

---

## Revision History

- **Initial Version**: January 2025
- **Scalable Structure Added**: January 2025 - Added archive system for large projects
- **Purpose**: Standardized queueing system for AI-assisted projects

---

_This guide should be reviewed and customized for each project's specific needs._
