# Session Startup Guidelines

## Purpose

This document provides guidelines and best practices for starting AI collaboration sessions effectively, ensuring proper context establishment, clear objectives, and efficient session initialization.

---

## Overview

Effective session startup sets the foundation for productive AI collaboration. These guidelines help establish context, define objectives, and prepare for efficient collaboration from the beginning of each session.

---

## Pre-Session Preparation

### 1. Review Project Context

Before starting a session:

- [ ] Review `project-context.md` for current project state
- [ ] Check recent session notes if available
- [ ] Review relevant workflow documents if needed
- [ ] Check queue system for pending items (if using) - see enhanced process below
- [ ] Review memory-bank files if using granular context structure

**Time**: 5–10 minutes

---

### 2. Gather Required Information

Prepare relevant information:

- [ ] Current task or objective
- [ ] Relevant files or code sections
- [ ] Error messages or issues (if applicable)
- [ ] Questions or specific requirements
- [ ] Constraints or considerations

---

### 3. Check Environment Status

- [ ] Verify development environment is set up
- [ ] Check if dependencies need updates
- [ ] Verify submodule status (if using submodules): `git submodule status`
- [ ] **Check Git Status** (enhanced):
  - [ ] Run `git status` to check repository state
  - [ ] **Explicitly check for untracked files** - these may need to be committed or added
  - [ ] Note any uncommitted changes that might affect work
  - [ ] Identify files that should be committed before starting new work

---

## Session Startup Protocol

### 0. Enhanced Queue Status Check (If Using Queue System)

When checking queue status, follow this enhanced process:

- [ ] **Check "Currently Pending Items" section** (not historical completed items)
  - Look for a dedicated "Currently Pending Items" section in `queue/master-queue.md`
  - This section should list ONLY items with status "Pending" or "In Progress"
  - Items should be organized by priority (High/Medium/Low)

- [ ] **Verify Queue Statistics Match Actual Items**
  - Check queue statistics at top of master-queue.md
  - Verify statistics accurately reflect the number of pending items
  - Note any discrepancies between statistics and actual pending items
  - If discrepancies found, document them in session summary

- [ ] **List ALL Pending Items** (not just high-priority)
  - Include High, Medium, and Low priority items
  - Don't rely on memory or assumptions
  - Verify against master-queue.md directly

**Note**: If the queue doesn't have a "Currently Pending Items" section, you may need to search through the active queue items to find pending items. Consider suggesting this improvement to the project.

---

### 1. Initial Context Sharing

Start the session by providing context:

```
I'm working on [project/task description].

Current status:
- [Brief status update]
- [Any relevant context]

Session objectives:
- [Objective 1]
- [Objective 2]

Context files:
- [Reference relevant files if needed]
```

**Template**:

```markdown
## Project Context
[Brief project description and current state]

## Current Task
[What you're working on now]

## Session Objectives
1. [Objective 1]
2. [Objective 2]
3. [Objective 3]

## Relevant Context
- Files: [list relevant files]
- Previous work: [reference previous sessions if relevant]
- Constraints: [any constraints or considerations]
```

---

### 2. AI Assistant Initialization

The AI assistant should:

1. **Read Project Context**
   - Read `project-context.md`
   - Review `rules-of-engagement.md`
   - Check relevant workflow documents if applicable

2. **Acknowledge Understanding**
   - Confirm understanding of project context
   - Confirm understanding of session objectives
   - Ask clarifying questions if needed

3. **Establish Session Scope**
   - Clarify what will be worked on
   - Confirm priorities
   - Set expectations for deliverables

---

### 3. Session Objective Definition

#### Clear Objectives

Define clear, actionable objectives:

**Good Objectives**:
- "Implement user authentication with JWT tokens"
- "Fix the database connection issue in the login flow"
- "Create unit tests for the payment processing module"
- "Set up Docker development environment"

**Less Effective Objectives**:
- "Work on the project" (too vague)
- "Fix everything" (too broad)
- "Improve code" (not specific)

#### Objective Template

```markdown
## Session Objectives

### Primary Objective
[Main goal for this session]

### Secondary Objectives (if time permits)
- [Objective 2]
- [Objective 3]

### Success Criteria
- [ ] [Success criterion 1]
- [ ] [Success criterion 2]
- [ ] [Success criterion 3]
```

---

## Context Files to Reference

### Standard Context Files

Always available:
- `project-context.md`: Essential project context
- `rules-of-engagement.md`: Collaboration guidelines
- `session-notes-template.md`: Session documentation template

### Application Development Context

If working on application development:
- `application-development-workflows/`: Relevant workflow documents
- `testing-workflows/`: Testing guidelines
- `docker-development-guide.md`: Docker setup if applicable
- `../documentation/git-submodule-workflow.md`: Submodule guidance if applicable

### Optional Context Files

If using:
- `memory-bank/`: Granular context files
- `queue/master-queue.md`: Pending work items
- Previous session notes: Recent session documentation

---

## Session Startup Checklist

### For Users

- [ ] Review project context and recent work
- [ ] Define clear session objectives
- [ ] Gather relevant files and information
- [ ] Check environment and dependencies
- [ ] Prepare questions or specific requirements
- [ ] Share context with AI assistant at session start

### For AI Assistants

- [ ] Read `project-context.md`
- [ ] Review `rules-of-engagement.md`
- [ ] Check relevant workflow documents if applicable
- [ ] **Check Queue Status** (if using queue system):
  - [ ] Check "Currently Pending Items" section in `queue/master-queue.md`
  - [ ] Verify queue statistics match actual pending items
  - [ ] List ALL pending items (High/Medium/Low priority)
  - [ ] Note any discrepancies found
- [ ] **Check Git Status**:
  - [ ] Run `git status` to check repository state
  - [ ] **Explicitly check for untracked files**
  - [ ] Note any uncommitted changes
  - [ ] Identify files that may need attention
- [ ] Acknowledge understanding of context
- [ ] Confirm session objectives
- [ ] Ask clarifying questions if needed
- [ ] Establish session scope and priorities
- [ ] **Provide Comprehensive Summary**:
  - [ ] Include all pending items found
  - [ ] Note any discrepancies or issues discovered
  - [ ] Mention untracked files or uncommitted changes
  - [ ] Note any blockers or dependencies

---

## Session Transition

### Ending a Session

When ending a session:

- [ ] Document key outcomes using session notes template
- [ ] Update project context if significant changes
- [ ] Update queue items if applicable
- [ ] Note any follow-up items for next session
- [ ] Commit changes if ready

### Starting Next Session

When starting the next session:

- [ ] Review previous session notes, especially "Next Session Preparation" section
- [ ] Check for follow-up items from previous session
- [ ] Review "Repository Status for Next Session" from previous session notes
- [ ] Verify queue status matches what was documented in previous session
- [ ] Review any changes made since last session
- [ ] Establish connection to previous work

---

## Troubleshooting Session Startup

### AI Doesn't Have Context

If AI seems to lack context:

1. Explicitly reference `project-context.md`
2. Share specific relevant sections
3. Provide brief context summary
4. Point to relevant workflow documents

### Unclear Objectives

If objectives are unclear:

1. Break down into smaller, specific objectives
2. Define success criteria
3. Prioritize objectives
4. Clarify scope and boundaries

### Missing Information

If information is missing:

1. Identify what's needed
2. Gather missing information
3. Provide what's available
4. Proceed with what's known, note assumptions

### Queue Statistics Mismatch

If queue statistics don't match actual pending items:

1. Document the discrepancy clearly
2. Note the actual number of pending items found
3. Suggest updating queue statistics in master-queue.md
4. Proceed with actual pending items (not statistics)

### Untracked Files

If untracked files are found:

1. List all untracked files
2. Determine if they should be committed, added to .gitignore, or removed
3. Ask user about handling untracked files if unclear
4. Note in session summary

---

## Integration Points

- **Rules of Engagement**: Session startup follows collaboration guidelines
- **Project Context**: Foundation for session context
- **Workflow Documents**: Reference during startup if applicable
- **Session Notes**: Document session startup and outcomes
- **Queue System**: Review and update during startup if using

---

## Deliverables Checklist

- [ ] Session objectives clearly defined
- [ ] Relevant context files reviewed
- [ ] AI assistant understands context and objectives
- [ ] Session scope established
- [ ] Approach agreed upon
- [ ] Ready to proceed with work

---

*Session Startup Guidelines - Template v1.0*

