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

**Time**: 5-10 minutes

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
- [ ] Check submodule status (if using submodules): `git submodule status`
- [ ] Refresh submodules only when needed (for example after template/reference updates)
- [ ] **Check Git Status** (enhanced):
  - [ ] Run `git status` to check repository state
  - [ ] **Explicitly check for untracked files** - these may need to be committed or added
  - [ ] Note any uncommitted changes that might affect work
  - [ ] Identify files that should be committed before starting new work
- [ ] **Remote parity** (optional — use when you maintain **more than one clone** of this repository, or before work that must match **`origin`**):
  - [ ] Run **`git fetch`** for the default remote before comparing to **`origin/<branch>`**.
  - [ ] Compare **`HEAD`** to the remote tracking branch (for example **`git branch -vv`**, **`git status -sb`**, or **`git log -1`** vs **`origin/...`**).
  - [ ] If **submodules** are in play and the session depends on their commits: confirm **`git submodule status`** matches expectations (see submodule bullets above).

**Repository parity principle:** **`origin`** is the shared checkpoint between machines; avoid long-lived unpushed commits that exist only on one host unless that is deliberate.

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
   - Read `ai-collaboration/mcp-integration.md` and follow it for MCP usage when MCP servers are enabled (including continuity via memory and lightweight token stats when useful)
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
- `ai-collaboration/mcp-integration.md`: MCP usage, canonical template access, and token discipline for this workspace
- `session-notes-template.md`: Session documentation template
- Root `AGENTS.md` (when present): Cursor/Windsurf default agent baseline; often summarizes startup pointers and project-specific agent rules

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
- [ ] Read and apply `ai-collaboration/mcp-integration.md` (MCP selection, token discipline, session bootstrap when the user only asks for standard prep)
- [ ] Read root `AGENTS.md` when present (Cursor/Windsurf; may restate startup pointers—still load for project-specific agent rules)
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
- [ ] **Submodule Status Check** (if using submodules):
  - [ ] Run `git submodule status`
  - [ ] Refresh only if updates are required for the current session
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

## Quick Start Templates

### Template 1: Feature Development

```
I'm working on [feature name] for [project name].

Context:
- Project is at [development phase]
- Recent work: [brief summary]
- Current blocker: [if any]

Session objective:
Implement [specific feature/functionality]

Files to review:
- [file path 1]
- [file path 2]

Questions:
- [Question 1]
- [Question 2]
```

### Template 2: Bug Fix

```
I'm working on fixing [bug description] in [project name].

Issue:
- [Bug description]
- Error message: [if applicable]
- Steps to reproduce: [if applicable]

Context:
- [Relevant context]

Session objective:
Fix [specific bug] and verify solution

Files involved:
- [file path 1]
- [file path 2]
```

### Template 3: Setup/Configuration

```
I'm setting up [component/environment] for [project name].

Current state:
- [What's already done]
- [What needs to be set up]

Session objective:
Set up [specific component] with [requirements]

Constraints:
- [Constraint 1]
- [Constraint 2]
```

### Template 4: Testing

```
I'm writing tests for [component/feature] in [project name].

Component to test:
- [Component description]
- Location: [file path]

Session objective:
Create comprehensive tests for [component]

Test types needed:
- [Unit/Integration/System tests]

Coverage goals:
- [Coverage target if applicable]
```

---

## Best Practices

### 1. Be Specific

- Provide specific objectives, not vague goals
- Share relevant file paths and code sections
- Include error messages verbatim if troubleshooting
- Reference specific requirements or constraints

### 2. Provide Context

- Share relevant background information
- Reference previous related work
- Explain why you're working on this
- Provide any relevant constraints

### 3. Set Priorities

- Identify primary vs. secondary objectives
- Clarify what must be done vs. nice-to-have
- Set realistic expectations for session scope

### 4. Share Relevant Files

- Open or reference relevant files
- Share error messages or logs
- Provide code snippets if asking about specific code
- Reference documentation if relevant

### 5. Ask Questions

- Don't hesitate to ask for clarification
- Request explanations when needed
- Ask for alternatives or recommendations
- Seek best practices guidance

---

## Common Session Types

### Development Session

**Focus**: Building new features or functionality

**Startup**:
1. Review feature requirements
2. Check relevant codebase sections
3. Review related workflow documents
4. Define implementation approach

### Debugging Session

**Focus**: Fixing bugs or issues

**Startup**:
1. Gather error messages and logs
2. Identify files involved
3. Reproduce the issue
4. Define debugging approach

### Refactoring Session

**Focus**: Improving code structure

**Startup**:
1. Identify code to refactor
2. Review current implementation
3. Define refactoring goals
4. Plan refactoring approach

### Testing Session

**Focus**: Writing or improving tests

**Startup**:
1. Identify code to test
2. Review testing requirements
3. Check testing workflow documents
4. Define test coverage goals

### Setup/Configuration Session

**Focus**: Setting up environments or tools

**Startup**:
1. Review setup requirements
2. Check relevant guides (Docker, submodules, etc.)
3. Identify dependencies
4. Plan setup steps

---

## AI Assistant Response Pattern

AI assistants should follow this pattern at session start:

1. **Acknowledge Context**
   ```
   I've reviewed the project context. I understand you're working on [summary].
   ```

2. **Confirm Objectives**
   ```
   Your session objectives are:
   1. [Objective 1]
   2. [Objective 2]

   Is this correct?
   ```

3. **Clarify Scope**
   ```
   To accomplish this, I'll help you with:
   - [Activity 1]
   - [Activity 2]

   Does this align with your expectations?
   ```

4. **Ask for Missing Information** (if needed)
   ```
   To proceed effectively, I need:
   - [Missing information 1]
   - [Missing information 2]
   ```

5. **Propose Approach**
   ```
   I suggest we start by [first step], then [second step].
   Does this approach work for you?
   ```

6. **Provide Comprehensive Summary** (if checking queue/git status)
   ```
   Summary of current state:
   - Pending queue items: [list all pending items]
   - Queue statistics: [verify accuracy]
   - Git status: [untracked files, uncommitted changes]
   - Discrepancies found: [any issues discovered]
   ```

---

## Session Transition

### Ending a Session

When ending a session:

- [ ] Follow `session-closeout-guidelines.md` for complete closeout and handoff
- [ ] Document key outcomes using session notes template
- [ ] Update project context if significant changes
- [ ] Update queue items if applicable
- [ ] Note any follow-up items for next session
- [ ] Commit changes if ready

### Starting Next Session

When starting the next session:

- [ ] If resuming **the same calendar day** as an earlier session, open today’s session notes file(s): either add a **new session block** in the same file or continue in **`session_notes_YYYYMMDD-02.md`** if that is the project convention — see **`session-notes-template.md` → Same calendar day, multiple sessions**
- [ ] Review previous session notes, especially "Next Session Preparation" section
- [ ] Check for follow-up items from previous session
- [ ] Review "Repository Status for Next Session" from previous session notes
- [ ] Verify queue status matches what was documented in previous session
- [ ] Check `git submodule status` and refresh only if needed for the planned work
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
