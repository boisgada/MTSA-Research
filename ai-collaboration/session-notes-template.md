# AI Session Notes Template

## Session Information

- **Date**: [Date]
- **Session Duration**: [Duration]
- **Primary Focus**: [Main topic or objective]
- **AI Assistant**: [If relevant]
- **Chat Mode Used**: [If using awesome-copilot, note which chat mode was used]

---

## Same calendar day, multiple sessions

If a **later** Cursor session runs on the **same calendar day** as one that already produced `ai-collaboration/session_notes_YYYYMMDD.md`, **do not** silently replace Session 1’s narrative, objectives, or closeout with Session 2’s — that conflates two sessions.

**Choose one convention per project** (optional: note it in `project-context.md`):

1. **Session blocks (same file)** — Append `## Session N — YYYY-MM-DD` for each session that day; keep a single **Next Session Preparation** at the end reflecting the latest handoff.
2. **Separate files** — Use `session_notes_YYYYMMDD-02.md`, then `-03`, etc., for additional same-day sessions.

Example (session blocks):

```markdown
## Session 1 — YYYY-MM-DD

### Session Information
- **Primary Focus**: …

## Session 2 — YYYY-MM-DD

### Session Information
- **Primary Focus**: …

---

## Next Session Preparation
…
```

---

## Session Objectives

- [ ] Objective 1
- [ ] Objective 2
- [ ] Objective 3

---

## Key Discussions

### Topic 1: [Topic Name]
- **Discussion Points**:
  - Point 1
  - Point 2
- **Decisions Made**:
  - Decision 1
  - Decision 2
- **Action Items**:
  - [ ] Action 1
  - [ ] Action 2

### Topic 2: [Topic Name]
- **Discussion Points**:
  - Point 1
  - Point 2
- **Decisions Made**:
  - Decision 1
  - Decision 2
- **Action Items**:
  - [ ] Action 1
  - [ ] Action 2

---

## Documents Created/Updated

### Created
- `path/to/new-document.md`: Description

### Updated
- `path/to/updated-document.md`: Changes made

---

## Key Insights

1. Insight 1
2. Insight 2
3. Insight 3

---

## Questions Raised

- Question 1: [Answer or status]
- Question 2: [Answer or status]
- Question 3: [Answer or status]

---

## Follow-Up Items

- [ ] Follow-up item 1
- [ ] Follow-up item 2
- [ ] Follow-up item 3

---

## Next Steps

1. Next step 1
2. Next step 2
3. Next step 3

---

## Session Outcomes

- ✅ Outcome 1
- ✅ Outcome 2
- ⏳ Pending outcome 1
- ⏳ Pending outcome 2

---

## Notes

[Additional notes, observations, or important information]

---

## Session Reflection

### What Went Well
- [What worked well in this session]

### What Could Be Improved
- [What could be improved next time]

### Key Learnings
- [Key learnings from this session]

---

## Next Session Preparation

**Note**: This section should be comprehensive and accurate. It provides critical handoff information for the next session.

### Queue Items for Next Session

**Important**: Verify against `queue/master-queue.md` directly. Don't rely on memory or assumptions.

- [ ] **Check "Currently Pending Items" section** in `queue/master-queue.md` (if using queue system)
- [ ] **List ALL pending items** (High/Medium/Low priority):
  - **High Priority**:
    - [ ] [Item ID]: [Item description]
  - **Medium Priority**:
    - [ ] [Item ID]: [Item description]
  - **Low Priority**:
    - [ ] [Item ID]: [Item description]
- [ ] **If no items pending**, explicitly state: "No pending queue items"
- [ ] **Verify queue statistics** in master-queue.md match actual pending items
- [ ] **Note any discrepancies** if statistics don't match actual items

### Repository Status for Next Session

- [ ] **Untracked Files**:
  - [ ] List any untracked files that need attention:
    - `[file path]`: [Action needed - commit, add to .gitignore, or remove]
  - [ ] If no untracked files, explicitly state: "No untracked files"
- [ ] **Uncommitted Changes**:
  - [ ] List any uncommitted changes:
    - `[file path]`: [Description of changes]
  - [ ] If no uncommitted changes, explicitly state: "No uncommitted changes"
- [ ] **Git Status Summary**:
  - [ ] Current branch: [branch name]
  - [ ] Status: [clean / has changes / has untracked files]

### Blockers or Dependencies

- [ ] **Current Blockers**:
  - [ ] [Blocker description] - [Impact]
  - [ ] If no blockers, explicitly state: "No current blockers"
- [ ] **Dependencies for Next Session**:
  - [ ] [Dependency description] - [Action needed]
  - [ ] If no dependencies, explicitly state: "No dependencies"

### Recommended Focus for Next Session

- [ ] Primary focus: [Main objective for next session]
- [ ] Secondary focus: [Additional objectives if time permits]
- [ ] Context needed: [Any specific context or files to review]

---

*Session notes completed: [Date]*

**Note**: This is a template. Customize sections as needed for your project.
