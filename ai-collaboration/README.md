# AI Collaboration Folder

## Purpose

This folder contains documentation to support **persistent AI collaboration** across multiple sessions. These documents help maintain context, consistency, and continuity when working with AI assistants on the MTSA compliance project.

---

## Contents

### Core Documents

- **rules-of-engagement.md**: Guidelines for AI collaboration sessions
- **project-context.md**: Essential project context and background information
- **session-notes-template.md**: Template for documenting AI session notes
- **queue-system-guide.md**: Guide for using the numbered queueing system (optional)

### Optional Structures

- **memory-bank/**: Alternative granular context structure for complex projects
  - Use when a single `project-context.md` becomes too large
  - Provides focused context files (activeContext, progress, techContext, etc.)
  - See `memory-bank/README.md` for guidance

### Usage

1. **At Session Start**:
   - Review `rules-of-engagement.md` and `project-context.md`
   - If using queue system, review `../queue/master-queue.md`
   - If using memory-bank, review relevant memory-bank files
2. **During Session**:
   - Reference these documents as needed
   - Update queue items as work progresses (if using queue system)
   - Update relevant context files as needed
3. **At Session End**:
   - Document key outcomes using `session-notes-template.md`
   - Update queue items worked on (if using queue system)
   - Update context files with new decisions or findings

### Recommended Agent Mode (Research + Updates)

- **Use**: `awesome-copilot/chatmodes/gpt-5-beast-mode.chatmode.md`
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

6. **First Session**:
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

For more details on session persistence techniques, see `../documentation/discoveries.md` (if available).
For queue system details, see `queue-system-guide.md`.
For memory-bank structure, see `memory-bank/README.md`.

---

*This folder is critical for maintaining effective AI collaboration across the project lifecycle.*
