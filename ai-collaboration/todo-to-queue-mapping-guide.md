# Todo-to-Queue Mapping Guide

**Purpose**: Optional best practice guide for mapping todo items to queue entries to ensure no work items are lost and maintain traceability.

**Last Updated**: 2026-01-27

---

## Overview

This guide explains how to map todo items (from various sources) to queue entries in the master queue system. This practice ensures:

- **No work items are lost**: All todos are tracked in the queue system
- **Traceability**: Clear mapping between todos and queue entries
- **Accountability**: All incomplete work has a queue entry for tracking
- **Organization**: Centralized work tracking in the queue system

---

## When to Use This Practice

**Use this practice when**:
- You have todo items from multiple sources (session notes, documents, discussions)
- You want to ensure all work is tracked in the queue system
- You need to verify that incomplete todos have corresponding queue entries
- You want to maintain clear traceability between todos and queue items

**This is optional** - not all projects need this level of tracking, but it's useful for:
- Large projects with many work items
- Projects with multiple contributors
- Projects where work items come from various sources
- Projects requiring comprehensive work tracking

---

## How It Works

### Step 1: Identify All Todo Items

Collect todo items from various sources:
- Session notes
- Project documents
- Meeting notes
- Email threads
- Discussion threads
- Any other sources

### Step 2: Create Queue Entries

For each incomplete todo item:
1. Create a corresponding queue entry in `queue/master-queue.md`
2. Use appropriate category (RES, ENH, MIT, FIX, DEL)
3. Set appropriate priority and status
4. Link the queue entry to the original todo

### Step 3: Document the Mapping

Create a mapping document (e.g., `ai-collaboration/todo-to-queue-mapping.md`) that:
- Lists all todo items
- Maps each to its queue entry
- Shows status and coverage
- Notes any gaps or issues

### Step 4: Maintain the Mapping

- Update the mapping as todos are completed
- Add new todos and their queue entries
- Remove completed items periodically
- Verify all incomplete todos have queue entries

---

## Mapping Template

Use this template for documenting todo-to-queue mappings:

```markdown
# Todo Items to Queue Entries Mapping

**Created**: [YYYY-MM-DD]
**Purpose**: Verify that all incomplete todo items have associated queue entries for future completion

---

## Todo Items Status

**Total Todo Items**: [Number]
**Completed**: [Number]
**Incomplete**: [Number]

---

## Mapping: Incomplete Todo Items → Queue Entries

### 1. [Todo Item Name] ([status])

**Queue Entry**: [PREFIX]-[NUMBER] - [Title]
**Status**: [Pending | In Progress | Completed | Blocked]
**Coverage**: [Description of how queue entry covers the todo]
**Location**: `queue/master-queue.md` (lines [X-Y] or section name)

**Specific Tasks**:
- [Task 1]
- [Task 2]
- [Task 3]

---

## Summary

### ✅ All Incomplete Todo Items Have Queue Entries

| Todo Item | Queue Entry | Status | Notes |
|-----------|-------------|--------|-------|
| [Item 1] | [PREFIX]-[NUMBER] | ✅ Tracked | [Notes] |
| [Item 2] | [PREFIX]-[NUMBER] | ✅ Tracked | [Notes] |

### Recommendations

[Any recommendations for improving the mapping or creating additional queue entries]

---

**Verification Date**: [YYYY-MM-DD]
**Status**: ✅ All incomplete todo items have associated queue entries
```

---

## Example Mapping

Here's an example from a real project:

```markdown
### 1. ✅ blind-spot-investigation (in_progress)

**Queue Entry**: RES-1693 - Investigate Regulatory Blind Spots - Identify Missing Regulations Globally
**Status**: Pending (In Progress)
**Coverage**: Comprehensive investigation covering all phases
**Location**: `queue/master-queue.md` (lines 713-817)

**Phases Covered**:
- Phase 1: US Regulations Review ✅
- Phase 2: EU Regulations Review ✅
- Phase 3: Other Major Jurisdictions ⏳
- Phase 4: Regulation Type Analysis ⏳
- Phase 5: Temporal Analysis ⏳
```

---

## Best Practices

### 1. Regular Verification

- Review todo items periodically (weekly or monthly)
- Verify all incomplete todos have queue entries
- Update mapping document as work progresses

### 2. Clear Mapping

- Use descriptive queue entry titles
- Document how queue entry covers the todo
- Include specific tasks or phases if applicable

### 3. Status Tracking

- Update todo status as work progresses
- Mark todos as completed when queue items are completed
- Note any blockers or dependencies

### 4. Consolidation

- Group related todos under a single queue entry when appropriate
- Use queue entry phases or sub-tasks for complex todos
- Avoid creating duplicate queue entries for the same work

### 5. Documentation

- Keep mapping document up to date
- Include location references (file paths, line numbers)
- Document any gaps or recommendations

---

## Integration with Queue System

This practice works with the standard queue system:

1. **Queue Entry Creation**: Create queue entries for all incomplete todos
2. **Mapping Documentation**: Document the mapping in a separate file
3. **Regular Updates**: Update both queue and mapping as work progresses
4. **Verification**: Periodically verify mapping is complete and accurate

---

## When Not to Use

**You may not need this practice if**:
- Your project has few todo items
- All work is already tracked in the queue system
- Todos are simple and don't require complex tracking
- You prefer a simpler workflow

**Alternative**: Just use the queue system directly without maintaining a separate mapping document.

---

## Maintenance

### Regular Tasks

- **Weekly/Monthly**: Review todos and verify queue entries exist
- **As Work Progresses**: Update mapping document
- **When Completing Work**: Mark todos and queue entries as completed
- **Periodically**: Clean up completed items from mapping document

### Verification Checklist

- [ ] All incomplete todos have queue entries
- [ ] Queue entries accurately reflect todo scope
- [ ] Mapping document is up to date
- [ ] No duplicate queue entries for same work
- [ ] Status matches between todos and queue entries

---

## Related Documentation

- **Queue System Guide**: `queue-system-guide.md` - How to use the queue system
- **Master Queue**: `../queue/master-queue.md` - Central queue tracking file
- **Session Notes**: `session-notes-template.md` - May contain todo items

---

## Tips

1. **Start Simple**: Begin with just tracking incomplete todos, add complexity as needed
2. **Use Queue Categories**: Leverage RES, ENH, MIT, FIX, DEL categories appropriately
3. **Group Related Work**: Don't create a queue entry for every tiny todo - group related items
4. **Keep It Updated**: Outdated mapping documents are worse than no mapping
5. **Make It Useful**: Only maintain this if it adds value to your workflow

---

**Last Updated**: 2026-01-27  
**Location**: `ai-collaboration/todo-to-queue-mapping-guide.md`  
**Based on**: Best practices from GRC and Local Regulations Research project

