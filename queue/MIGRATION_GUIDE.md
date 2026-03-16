# Queue System Migration Guide

## Overview

The queue system has been updated to support large projects with many queue items. The new structure separates active items from completed/cancelled items to keep the master queue manageable.

---

## What Changed

### Before (Single File Structure)
- All items (active and completed) in `master-queue.md`
- File grows indefinitely as items are completed
- Can become unwieldy with 100+ completed items

### After (Hybrid Structure)
- **Active items only** in `master-queue.md` (Pending, In Progress, Blocked)
- **Completed items** archived in `queue/archive/` by category
- **Cancelled items** archived in `queue/archive/cancelled-items.md`
- Master queue stays manageable (< 100 items typically)

---

## Key Benefits

1. **Better AI Assistant Performance**: Smaller files mean faster processing and better context management
2. **Easier Navigation**: Find active work quickly, completed work by category
3. **Cleaner Git Diffs**: Only active items change in master-queue.md
4. **Scalable**: Works well with 10 items or 10,000 items
5. **Git-Friendly**: All files remain markdown, fully viewable in Git hosting platforms

---

## What Stays the Same

✅ **Queue numbers never change** - RES-001 is still RES-001  
✅ **Commit messages work** - References to queue numbers in commits remain valid  
✅ **Queue item format** - Same structure and fields  
✅ **Numbering system** - Sequential numbering within categories continues  
✅ **Optional** - Archive structure is optional for small projects

---

## Migration Steps

### Step 1: Create Archive Structure

```bash
cd queue
mkdir -p archive
```

The template already includes archive files, so if you're using the template, they should already exist.

### Step 2: Review Current Master Queue

Open `master-queue.md` and identify:
- Items with status "Completed" (or variations like "COMPLETE", "✅ Completed", "✅ **COMPLETE**")
- Items with status "Cancelled"
- Items with status "Pending", "In Progress", or "Blocked" (keep these)

**Note**: Only archive items that are **fully completed**. Do NOT archive items with intermediate statuses like:
- "substantially complete"
- "mostly complete"
- "in review"
- Any status other than explicitly "Completed" or "Cancelled"

### Step 3: Move Completed Items

For each completed item, move it to the appropriate archive file:

**Standard Types**:
- **RES-###** → `archive/completed-res.md`
- **ENH-###** → `archive/completed-enh.md`
- **MIT-###** → `archive/completed-mit.md`
- **FIX-###** → `archive/completed-fix.md`
- **DEL-###** → `archive/completed-del.md`

**Custom Types** (if your project uses them):
- **CRIT-###** → `archive/completed-crit.md` (create if needed)
- **GAP-###** → `archive/completed-gap.md` (create if needed)
- **MAP-###** → `archive/completed-map.md` (create if needed)
- Or any other prefix: `archive/completed-[prefix].md`

**Format in archive file**:
```markdown
### RES-001 - [Title] ✅

- **Status**: Completed
- **Priority**: [High | Medium | Low]
- **Created**: [YYYY-MM-DD]
- **Completed**: [YYYY-MM-DD]
- **Description**: [Original description]
- **Outcome**: [What was accomplished]
- **Notes**: [Final notes]
```

### Step 4: Move Cancelled Items

Move all cancelled items to `archive/cancelled-items.md`:

```markdown
### RES-005 - [Title] ❌

- **Status**: Cancelled
- **Priority**: [High | Medium | Low]
- **Category**: Research
- **Created**: [YYYY-MM-DD]
- **Cancelled**: [YYYY-MM-DD]
- **Reason**: [Why cancelled]
- **Description**: [Original description]
```

### Step 5: Update Master Queue

1. Remove all completed/cancelled items from `master-queue.md`
2. Keep only items with status: Pending, In Progress, Blocked
3. Update statistics:
   - Total Items (All Time) - includes archived items
   - Active Items - only items in master-queue.md
   - Archived Items - count of items in archive/
4. Add reference to archive locations in "Quick Reference" section

### Step 6: Update Archive File Statistics

Update the "Total Items" count in each archive file header.

---

## Example Migration

### Before Migration

`master-queue.md` contains:
- RES-001: Completed ✅
- RES-002: Pending
- ENH-001: Completed ✅
- ENH-002: In Progress
- FIX-001: Completed ✅

### After Migration

`master-queue.md` contains:
- RES-002: Pending
- ENH-002: In Progress

`archive/completed-res.md` contains:
- RES-001: Completed ✅

`archive/completed-enh.md` contains:
- ENH-001: Completed ✅

`archive/completed-fix.md` contains:
- FIX-001: Completed ✅

---

## Ongoing Workflow

### When Completing an Item

1. Update item status to "Completed" in master-queue.md
2. Add completion date and outcome
3. Copy item to appropriate archive file
4. Remove from master-queue.md
5. Update statistics in both files

### When Cancelling an Item

1. Update item status to "Cancelled" in master-queue.md
2. Add cancellation date and reason
3. Copy item to `archive/cancelled-items.md`
4. Remove from master-queue.md
5. Update statistics

### When Adding a New Item

1. Add to master-queue.md (same as before)
2. No change to archive files
3. Update statistics

---

## Verification Checklist

After migration:

- [ ] All completed items moved to archive files
- [ ] All cancelled items moved to cancelled-items.md
- [ ] Master queue contains only active items (Pending, In Progress, Blocked)
- [ ] Statistics updated in master-queue.md
- [ ] Statistics updated in archive files
- [ ] Archive file headers show correct item counts
- [ ] All queue numbers unchanged
- [ ] Git commit history still references correct queue numbers

---

## Troubleshooting

### "I can't find a completed item"

Check the appropriate archive file by category:
- Research → `archive/completed-res.md`
- Enhancement → `archive/completed-enh.md`
- etc.

### "Master queue is still too large"

Consider:
- Are there many blocked items? Review if they should be cancelled
- Are there many low-priority pending items? Consider archiving very old low-priority items
- Split archive files by year if individual archive files get too large

### "I want to keep everything in one file"

That's fine for small projects! The archive structure is optional. Use it when the master queue becomes unwieldy (> 50 completed items or > 1000 lines).

---

## Questions?

See `ai-collaboration/queue-system-guide.md` for detailed queue system documentation.

---

*Migration Guide - Updated January 2025*

