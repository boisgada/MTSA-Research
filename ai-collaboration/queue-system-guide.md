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

1. **Master Queue File**: `queue/master-queue.md` - Central tracking file for all queue items
2. **Queue Item Format**: Standardized format for each numbered item
3. **Queue Management**: Process for adding, updating, and closing items

### Queue Numbering

- Format: `RES-001`, `ENH-001`, `MIT-001`, `FIX-001`, `DEL-001`, etc.
- Prefix indicates category: **RES** (Research), **ENH** (Enhancement), **MIT** (Mitigation), **FIX** (Fix), **DEL** (Deliverable)
- Sequential numbering within each category (RES-001, RES-002, RES-003, etc.)
- Each category maintains its own counter
- Numbers are never reused within a category (even if item is cancelled)
- Each queue number is unique and permanent

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

### Research

- Questions to investigate
- Information gathering tasks
- Literature reviews
- Source verification
- Data collection

### Enhancement

- Process improvements
- Documentation improvements
- Feature additions
- Optimization opportunities
- Quality improvements

### Mitigation

- Risk mitigation strategies
- Preventive actions
- Contingency planning
- Security measures
- Compliance actions

### Fix

- Bug fixes
- Corrections to errors
- Documentation corrections
- Data corrections
- System repairs

### Deliverable

- Documents to be shared with stakeholders
- Research summaries for distribution
- Presentations or materials for external audiences
- Reports or findings to be published
- Communication packages for partners or collaborators

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

1. Update status to "Completed"
2. Add completion date
3. Document outcomes or deliverables
4. Update any related items that were blocked
5. Move to completed section (optional, or keep in chronological order)

### Blocking an Item

1. Update status to "Blocked"
2. Document the blocker in notes
3. Reference blocking item if applicable
4. Update priority if needed

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

- Review queue for pending high-priority items
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

The master queue can be organized by:

1. **Chronological**: All items in order by number (recommended for small projects)
2. **By Category**: Grouped by Research/Enhancement/Mitigation/Fix/Deliverable
3. **By Status**: Grouped by Pending/In Progress/Completed
4. **By Priority**: Grouped by High/Medium/Low

For this template, we recommend **chronological by number** (all items together) with optional category filters in the index. Alternatively, items can be grouped by category prefix (all RES items together, all ENH items together, etc.).

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

## Revision History

- **Initial Version**: January 2025
- **Purpose**: Standardized queueing system for AI-assisted projects

---

_This guide should be reviewed and customized for each project's specific needs._
