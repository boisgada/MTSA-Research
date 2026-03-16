# AI Collaboration Folder

## Purpose

This folder contains documentation to support **persistent AI collaboration** across multiple sessions. These documents help maintain context, consistency, and continuity when working with AI assistants on the MTSA compliance project.

---

## Contents

### Core Documents

- **rules-of-engagement.md**: Guidelines for AI collaboration sessions
- **project-context.md**: Essential project context and background information
- **session-notes-template.md**: Template for documenting AI session notes
- **session-startup-guidelines.md**: Best practices for starting AI collaboration sessions
- **cursor-communication-guide.md**: Quick reference for reporting what you see in Cursor
- **queue-system-guide.md**: Guide for using the numbered queueing system (optional)
- **todo-to-queue-mapping-guide.md**: Optional guide for mapping todos to queue entries
- **docker-development-guide.md**: Optional Docker workflow guidance

### Application Development Workflows (Optional)

- **application-development-workflows/**: Reference workflows for design, implementation, deployment, and review

### Testing Workflows (Optional)

- **testing-workflows/**: Reference workflows for unit, integration, system, regression, and performance/security testing

### Optional Structures

- **memory-bank/**: Alternative granular context structure for complex projects
  - Use when a single `project-context.md` becomes too large
  - Provides focused context files (activeContext, progress, techContext, etc.)
  - See `memory-bank/README.md` for guidance

### Usage

1. **At Session Start**:
   - Review `session-startup-guidelines.md`
   - Review `rules-of-engagement.md` and `project-context.md`
   - If using queue system, review `../queue/master-queue.md`
   - If using memory-bank, review relevant memory-bank files
2. **During Session**:
   - Reference these documents as needed
   - Reference workflow guides if doing implementation or testing work
   - Update queue items as work progresses (if using queue system)
   - Update relevant context files as needed
3. **At Session End**:
   - Document key outcomes using `session-notes-template.md`
   - Update queue items worked on (if using queue system)
   - Update context files with new decisions or findings

### Recommended Agent Mode (Research + Updates)

- **Use**: `reference-projects/awesome-copilot/chatmodes/gpt-5-beast-mode.chatmode.md`
- **Why**: Tuned for decisive research with tool use, web fetch, and iterative updates while enforcing verified references.
- **How**: Start with one focused discovery pass, pull official/regulatory sources first, and stop after applying actionable document updates.

---

## Key Principles

1. **Context Preservation**: Maintain project context across sessions
2. **Consistency**: Ensure consistent approach and terminology
3. **Continuity**: Build on previous work without duplication
4. **Documentation**: Document decisions and rationale
5. **Efficiency**: Minimize re-explanation of established concepts

---

## Document Maintenance

- **Update Regularly**: Keep documents current as project evolves
- **Version Control**: Track significant changes
- **Review Periodically**: Ensure accuracy and relevance

---

## Customization Instructions

1. **Customize project-context.md**:
   - Replace all `[placeholder]` text with your project information
   - Remove sections that don't apply
   - Add project-specific sections as needed

2. **Customize rules-of-engagement.md**:
   - Remove sections that don't apply (e.g., verified references if not needed)
   - Add project-specific guidelines
   - Adjust quality standards to match your needs

3. **Customize session-notes-template.md** (optional):
   - Adjust sections to match your documentation needs
   - Add project-specific fields if needed

4. **Optional: Set Up Queue System**:
   - Review `queue-system-guide.md` to understand the queue system
   - Customize `../queue/master-queue.md` if you want structured work tracking
   - Add queue items as work is identified

5. **Optional: Use Memory Bank Structure**:
   - Review `memory-bank/README.md` to determine if it's right for your project
   - If yes, populate memory-bank files instead of or in addition to `project-context.md`
   - Keep `project-context.md` as an overview/index if using memory-bank

6. **Optional: Use Workflow Guides**:
   - Review `application-development-workflows/` when doing implementation work
   - Review `testing-workflows/` when planning or validating testing work

7. **First Session**:
   - Follow the session workflow in `rules-of-engagement.md`
   - Start documenting using `session-notes-template.md`

---

## Session Persistence Techniques

This folder implements proven session persistence techniques:

1. **Context Documentation**: Structured files preserve context across sessions
2. **Structured Workflow**: Consistent session patterns reduce friction
3. **Document Standards**: Clear rules maintain organization
4. **Regular Updates**: Documents evolve with the project
5. **Queue System**: Numbered work item tracking (optional)
6. **Memory Bank**: Granular context organization for complex projects (optional)
7. **Workflow Guides**: Optional implementation and testing references
8. **Session Startup**: Explicit startup guidance for AI-assisted sessions

For more details on session persistence techniques, see `../documentation/discoveries.md` (if available).
For queue system details, see `queue-system-guide.md`.
For memory-bank structure, see `memory-bank/README.md`.
For session startup best practices, see `session-startup-guidelines.md`.

---

*This folder is critical for maintaining effective AI collaboration across the project lifecycle.*
