# Cursor Communication Guide

**Purpose**: Quick reference for communicating what you see in Cursor IDE to help AI assistant take correct actions

**Last Updated**: 2026-01-27

---

## Quick Checklist

When you see something unexpected in Cursor, include:

- [ ] **What panel/view** you're looking at (Source Control, Problems, Terminal, etc.)
- [ ] **Exact text** of any error messages or warnings
- [ ] **Which files** are showing changes (full paths if possible)
- [ ] **Visual indicators** (colors, icons, symbols like `M`, `+`, `-`, `?`)
- [ ] **What you tried** to do
- [ ] **What happened** vs. what you expected

---

## Common Scenarios

### 1. Git Status Issues

**What to report:**
- Panel: Source Control panel or Terminal
- Files: Which files show as modified/added/deleted
- Indicators: `M` (modified), `+` (added), `-` (deleted), `?` (untracked)
- Status: "ahead", "behind", "diverged", etc.

**Example:**
> "In Source Control, I see `reference-projects/awesome-copilot` with a red `M` indicator. When I expand it, I see it says 'new commits' or 'modified content'."

---

### 2. Uncommitted Changes

**What to report:**
- Panel: Source Control panel
- Files: Which files show changes
- Diff view: What the diff shows (additions/deletions)
- Line numbers: If specific lines are relevant

**Example:**
> "In Source Control, `documentation/README.md` shows as modified. The diff view shows red deletions on lines 10-11 - it's removing trailing spaces."

---

### 3. Push/Pull Errors

**What to report:**
- Exact error message: Copy/paste the full error
- What you were trying to do: "I tried to push to origin/master"
- Context: What branch, what files were involved

**Example:**
> "When I try to sync/push, I get this error: 'You don't have permissions to push to "github/awesome-copilot" on GitHub. Would you like to create a fork and push to it instead?' I was trying to push all changes."

---

### 4. Submodule Issues

**What to report:**
- Panel: Source Control panel
- Submodule name: Which submodule (e.g., `reference-projects/awesome-copilot`)
- Indicator: What symbol shows (`M`, `+`, etc.)
- What it says: "new commits", "modified content", "ahead of origin", etc.

**Example:**
> "I see `reference-projects/awesome-copilot` showing as modified in Source Control. It shows `M` and when I click it, it says 'new commits' or shows a commit message 'cleanup'."

---

### 5. File Diff View

**What to report:**
- Panel: Diff view (when clicking a file in Source Control)
- Changes: What lines show as added (green) or deleted (red)
- Context: A few lines before/after if relevant
- Line numbers: Specific line numbers if important

**Example:**
> "The diff for `README.md` shows:
> - Line 10: Red deletion of `**Last Updated**: 2026-01-13  ` (with trailing space)
> - Line 11: Red deletion of `**Queue Item**: RES-001  ` (with trailing space)
> - Lines 10-11: Green additions of the same text without trailing spaces"

---

### 6. Problems/Diagnostics

**What to report:**
- Panel: Problems panel or Diagnostics
- Error type: Error, Warning, Info
- File and line: Which file, which line number
- Message: Exact error/warning message

**Example:**
> "In Problems panel, I see a warning on `queue/master-queue.md` line 32: 'Next available queue number may be incorrect'."

---

## Visual Indicators Reference

### Source Control Panel Indicators

- **`M`** (red): Modified file
- **`A`** (green): Added file
- **`D`** (red): Deleted file
- **`?`** (yellow): Untracked file
- **`U`**: Unmerged (merge conflict)
- **`+`** (on submodule): Submodule has new commits
- **`-`** (on submodule): Submodule is behind tracked commit

### Git Status Indicators

- **`*`**: Uncommitted changes
- **`+`**: Staged changes
- **`?`**: Untracked files
- **`M`**: Modified
- **`A`**: Added
- **`D`**: Deleted

### Branch Status

- **"ahead of origin/master by X commits"**: Local commits not pushed
- **"behind origin/master by X commits"**: Remote has commits you don't
- **"diverged"**: Local and remote have different commits
- **"up to date"**: Everything synced

---

## Template for Reporting Issues

```
**Panel/View**: [Source Control / Terminal / Problems / etc.]

**What I see**:
- File(s): [list files]
- Indicator(s): [M, +, -, ?, etc.]
- Message(s): [exact text]

**What I tried**:
- Action: [what you did]
- Expected: [what you expected]
- Actual: [what happened]

**Additional context**:
- [any other relevant information]
```

---

## Example Reports

### Good Report (Detailed)

> "In Source Control panel, I see `reference-projects/awesome-copilot` with a red `M` indicator. When I expand it, it shows 'new commits' and I can see a commit message 'cleanup'. When I try to sync/push, I get: 'You don't have permissions to push to "github/awesome-copilot" on GitHub. Would you like to create a fork and push to it instead?' I haven't made any changes to awesome-copilot myself - this appeared after the last commit."

### Less Helpful Report (Vague)

> "There's an issue with awesome-copilot and I can't push."

---

## Special Cases

### Submodules

**Key information to report:**
- Submodule path: `reference-projects/awesome-copilot`
- What indicator shows: `M`, `+`, or specific message
- Whether you made changes: "I didn't change anything" or "I edited X file"
- Commit message: If you see one, what it says

**Why this matters:**
- Submodules shouldn't have local commits
- If they do, they need to be reset
- I need to know if it's a legitimate update or accidental change

### Merge Conflicts

**What to report:**
- Files with conflicts: Which files show `U` or conflict markers
- Conflict markers: `<<<<<<<`, `=======`, `>>>>>>>`
- Context: What you were doing (merge, rebase, pull)

### Staged vs. Unstaged

**What to report:**
- Staged changes: Files in "Staged Changes" section
- Unstaged changes: Files in "Changes" section
- What you want: "I want to commit everything" or "I only want to commit X"

---

## Quick Commands to Share

If you're comfortable with terminal, you can also share:

```bash
# Git status
git status

# Git status (short format)
git status --short

# Submodule status
git submodule status

# What changed in a file
git diff [filename]

# Recent commits
git log --oneline -5
```

---

## When to Use This Guide

Use this guide when:
- ✅ You see something unexpected in Cursor
- ✅ Git status doesn't match what I said
- ✅ You get an error message
- ✅ Files show as modified but you didn't change them
- ✅ You're not sure if something is normal or a problem

**Remember**: It's better to over-communicate than to leave me guessing!

---

## Tips for Effective Communication

1. **Be specific**: "File X shows Y" is better than "something's wrong"
2. **Include context**: What were you doing when you saw it?
3. **Copy exact messages**: Error messages are most helpful when verbatim
4. **Describe visuals**: Colors, icons, and symbols help me understand
5. **Share what you tried**: Helps me understand the sequence of events

---

**Last Updated**: 2026-01-27  
**Location**: `ai-collaboration/cursor-communication-guide.md`

