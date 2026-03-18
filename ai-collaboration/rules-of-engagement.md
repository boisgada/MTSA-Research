# Rules of Engagement for AI Collaboration

## Purpose

This document establishes **rules and guidelines** for AI collaboration sessions on your research project. Following these rules ensures efficient, consistent, and effective collaboration.

**⚠️ IMPORTANT**: This is a template file. Customize it with your project-specific requirements before use.

---

## ⚠️ CRITICAL REQUIREMENT: Generic Content Only (If Applicable)

### Public Repository Requirement

**If this repository is published publicly, it must contain ZERO organization-specific references. This is non-negotiable.**

**CRITICAL**: Never create scripts, documentation, or commit messages that document what was cleaned or removed. This creates the exact association we're trying to avoid.

### Mandatory Requirements (If Applicable)

1. **NEVER include company names in any files**
   - No company names in file contents
   - No company names in file names
   - No company names in commit messages
   - No company names in documentation

2. **Use generic placeholders instead**:
   - Use `[CompanyName]` or generic terms like "company", "organization", "facility"
   - Use `[YourCompany]` in templates and examples
   - Use generic descriptions: "large organization", "multi-site organization"

3. **Before committing ANY changes**:
   - Verify content is generic and reusable
   - Check for organization-specific email domains
   - Check for internal paths (OneDrive, organization-specific directories)
   - Verify no organization identifiers in variable names, comments, or examples

4. **AI MUST**:
   - ✅ Use generic terminology in all documentation
   - ✅ Replace any organization names with placeholders before committing
   - ✅ Verify content is generic before suggesting commits
   - ✅ Never hardcode organization names in scripts or templates
   - ✅ Use configurable parameters instead of hardcoded values
   - ✅ **CRITICAL**: Never create scripts or documentation that document what was cleaned or removed

5. **AI MUST NOT**:
   - ❌ Include organization names in any file content
   - ❌ Use organization names in examples or templates
   - ❌ Create files with organization names in filenames
   - ❌ Suggest commit messages with organization names
   - ❌ Include organization-specific paths or identifiers
   - ❌ **CRITICAL**: Create cleanup scripts or documentation that document what was removed (this creates the association we're trying to avoid)

---

## ⚠️ CRITICAL REQUIREMENT: Verified References (If Applicable)

### License to Operate Impact (If Applicable)

**If your project directly impacts license to operate or requires regulatory compliance, include this section:**

**Since [project type] compliance directly impacts [critical outcome], ALL recommendations MUST be supported by verified reference information.**

### Mandatory Requirements (If Applicable)

1. **ALL recommendations MUST have verified source support**
   - Regulatory requirements: Must cite official sources
   - Best practices: Must cite authoritative sources (NIST, CISA, industry standards)
   - Research findings: Must cite multiple validated sources

2. **Source Citations MUST include**:
   - Full source URLs
   - Publication dates
   - Document titles
   - Author/organization (if applicable)
   - Verification status (✅ VERIFIED or ⚠️ REQUIRES CONFIRMATION)

3. **Areas requiring confirmation MUST be clearly identified**
   - Use ⚠️ indicator
   - Explain why confirmation is needed
   - Note that implementation should wait for confirmation

4. **Reference Documentation**:
   - See `VERIFIED_REFERENCES.md` for complete source mapping (if applicable)
   - All documents must include verified references sections
   - All recommendations must be traceable to verified sources

### AI Session Requirements (If Applicable)

**AI MUST**:
- ✅ Provide verified references for ALL recommendations
- ✅ Cite official regulatory sources for regulatory requirements
- ✅ Cite authoritative sources for best practices
- ✅ Clearly identify areas requiring confirmation
- ✅ Never make recommendations without verified source support
- ✅ Include full URLs, dates, and document titles in citations
- ✅ Cite multiple sources for research findings when possible

**AI MUST NOT**:
- ❌ Make recommendations without source citations
- ❌ Use unverified sources
- ❌ Present opinions as facts
- ❌ Skip source verification
- ❌ Use secondary sources when primary sources are available

---

## Session Guidelines

**Commit/sync often**: After making file changes, commit and push before ending the turn (see section 8 below). Do not leave uncommitted work unless explicitly requested.

### 1. Context Awareness

**AI Should:**
- ✅ Read `project-context.md` at session start
- ✅ Review relevant documents in the repository before responding
- ✅ Reference existing research and analysis
- ✅ Build on previous work rather than starting from scratch
- ✅ Maintain consistency with established terminology and approaches

**User Should:**
- ✅ Reference specific documents when asking questions
- ✅ Provide context if asking about new topics
- ✅ Clarify if AI seems to have lost context

### 2. Document Management

**AI Should:**
- ✅ Read existing documents before creating new ones
- ✅ Update existing documents rather than creating duplicates
- ✅ Maintain document organization and structure
- ✅ Follow established naming conventions
- ✅ Reference related documents appropriately
- ✅ **Keep README files current**: When adding, removing, or significantly changing folder contents, project structure, or key features, update relevant README files so they accurately describe the current state
- ✅ **CRITICAL**: Verify content is generic before creating/updating files (if applicable)
- ✅ **CRITICAL**: Use generic placeholders instead of organization names (if applicable)
- ✅ **CRITICAL**: Never create scripts/documentation that document what was cleaned (if applicable)

**User Should:**
- ✅ Specify which documents to update
- ✅ Indicate if new documents are needed
- ✅ Review AI-suggested changes before accepting
- ✅ Verify content is generic before accepting changes (if applicable)

### 3. Research Approach

**⚠️ CRITICAL: Verified References Required (If Applicable)**

**If your project requires verified references, include this section:**

**Since [project type] impacts [critical outcome], ALL recommendations MUST be supported by verified reference information.**

**AI Should:**
- ✅ **ALWAYS** provide verified references for ALL recommendations (if applicable)
- ✅ Use web search for current information from authoritative sources
- ✅ Cross-reference multiple sources to validate information
- ✅ Cite sources with full URLs and publication dates
- ✅ Distinguish between regulatory requirements and recommendations (if applicable)
- ✅ Note when information is uncertain or requires clarification
- ✅ **NEVER** make recommendations without verified source support (if applicable)
- ✅ Clearly identify when recommendations are based on:
  - Regulatory text (with citations)
  - Official guidance
  - Industry best practices (with source citations)
  - Research findings (with source citations)
- ✅ Document all sources in a verifiable format

**User Should:**
- ✅ Request research on specific topics
- ✅ **ALWAYS** ask for source citations for recommendations (if applicable)
- ✅ Request clarification on regulatory vs. recommended requirements (if applicable)
- ✅ Verify references before implementing recommendations
- ✅ Request additional sources if references seem insufficient

### 4. Implementation Guidance

**AI Should:**
- ✅ Leverage existing frameworks and standards (if applicable)
- ✅ Minimize duplication (if applicable)
- ✅ Provide actionable, specific recommendations
- ✅ Consider efficiency optimizations
- ✅ Reference existing documents and strategies

**User Should:**
- ✅ Specify project-specific requirements
- ✅ Indicate scope considerations
- ✅ Request efficiency optimizations

### 5. Documentation Standards

**AI Should:**
- ✅ Use clear, professional language
- ✅ Structure documents with tables of contents
- ✅ Include executive summaries for long documents
- ✅ Use consistent formatting and markdown
- ✅ Include dates and version information
- ✅ Clearly distinguish mandatory deadlines from recommendations (if applicable)

**User Should:**
- ✅ Request specific document formats
- ✅ Specify level of detail needed
- ✅ Request summaries or detailed analysis

### 6. Project-Specific Focus Areas

**AI Should:**
- ✅ Focus on [project-specific focus area 1]
- ✅ Consider [project-specific consideration 1]
- ✅ Account for [project-specific consideration 2]
- ✅ Reference established research (if applicable)

**User Should:**
- ✅ Provide specific information when relevant
- ✅ Clarify project-specific considerations
- ✅ Request analysis on specific topics

### 7. Framework Leverage (If Applicable)

**AI Should:**
- ✅ Maximize use of existing frameworks
- ✅ Reference standards alignment (if applicable)
- ✅ Minimize duplication (if applicable)
- ✅ Consider organizational vs. project-specific requirements

**User Should:**
- ✅ Specify organizational capabilities
- ✅ Indicate what can be leveraged
- ✅ Request framework documentation strategies

<!-- TEMPLATE-SECTION:START name=commit-sync-core -->
### 8. Commit and Sync (Commit/Sync Often)

**Commit and push to the remote repository frequently so work is not lost and repository history stays current.**

- **After substantive file changes**: Commit and push before ending the turn or moving to unrelated work, unless the user explicitly asks to defer.
- **When user says "commit/sync"**: Stage all relevant modified and untracked files, commit with a clear message, and push.
- **Minimum cadence**: Commit/sync after each completed queue item (if using queue) and at session end.
- **Before commit**: Ensure edits were accepted and content is generic (if applicable).

**AI Should:**
- ✅ Run `git add`, `git commit`, and `git push` after completing a coherent set of accepted file changes (unless user asks to commit manually/defer)
- ✅ Include all relevant changed files when user requests commit/sync
- ✅ Use clear commit messages that reference the work performed
- ✅ If edits are not yet accepted, remind user to accept edits, then commit/sync

**User Should:**
- ✅ Accept file edits in Cursor so intended changes can be committed
- ✅ Confirm commit/sync timing when they want manual control
<!-- TEMPLATE-SECTION:END name=commit-sync-core -->

<!-- PROJECT-OVERRIDE:START name=commit-sync-project-overrides -->
<!-- Add project-specific commit/sync constraints here (if needed). -->
<!-- PROJECT-OVERRIDE:END name=commit-sync-project-overrides -->

### 9. Timeline and Deadlines (If Applicable)

**AI Should:**
- ✅ Clearly distinguish mandatory deadlines from recommendations (if applicable)
- ✅ Use visual indicators (🔴 MANDATORY, 🟡 RECOMMENDED, 🟢 ONGOING) (if applicable)
- ✅ Provide realistic timelines
- ✅ Consider framework development time (if applicable)
- ✅ Account for parallel work (if applicable)

**User Should:**
- ✅ Request timeline clarifications
- ✅ Specify deadline concerns
- ✅ Request timeline adjustments

---

## Communication Guidelines

### 1. Clarity

- Use specific, clear language
- Define acronyms on first use
- Provide context for questions
- Reference specific documents when relevant

### 2. Efficiency

- Build on previous work
- Reference existing documents
- Avoid re-explaining established concepts
- Focus on new information or changes

### 3. Documentation

- Document decisions and rationale
- Update relevant documents
- Maintain version information
- Track changes and updates

### 4. Collaboration

- Ask clarifying questions when needed
- Request feedback on approaches
- Validate understanding
- Confirm before major changes

---

## Project-Specific Guidelines

### [Project-Specific Guideline 1]

- [Guideline detail 1]
- [Guideline detail 2]

### [Project-Specific Guideline 2]

- [Guideline detail 1]
- [Guideline detail 2]

[Add project-specific guidelines as needed]

---

## Session Workflow

### Start of Session

1. AI reads `project-context.md`
2. AI reviews `rules-of-engagement.md`
3. **Optional: Check submodule status** (if using submodules):
   - Run `git submodule status` to check for updates
   - Review submodule maintenance guide if needed
   - Update submodules if desired (see `documentation/submodule-maintenance.md`)
4. User provides session objectives
5. AI confirms understanding

### During Session

1. AI references existing documents
2. AI builds on previous work
3. AI maintains consistency
4. AI commits/syncs accepted file changes at natural breakpoints (see section 8)
5. User provides feedback and clarifications

### End of Session

1. AI creates or updates a session summary (for example in `ai-collaboration/chat-history/`) and captures outcomes, queue status (if used), repository status, and follow-up items
2. AI updates relevant documents
3. **Session closeout**: Follow **`session-closeout-guidelines.md`** (document outcomes, update queue if used, git state, Next Session Preparation)
4. **CRITICAL**: AI verifies all content is generic and reusable (if applicable)
5. **CRITICAL**: AI ensures no cleanup documentation was created (if applicable)
6. **IMPORTANT: Accept All File Edits**:
   - User must accept all file edits in Cursor before committing
   - See `documentation/cursor-file-edits-guide.md` for instructions
   - User should verify changes are staged before committing
7. **Commit and push**: AI runs `git add`, `git commit`, and `git push` for any remaining changes unless user requests manual/deferred commit
8. **Optional: Submodule Maintenance** (if applicable):
   - Remind user to check submodule status periodically
   - Update submodules if needed (see `documentation/submodule-maintenance.md`)
9. User reviews and accepts changes
10. User verifies content is generic before committing (if applicable)
11. User notes any follow-up items

---

## Quality Standards

### Research Quality

- ✅ Current and accurate information
- ✅ Multiple source validation (if applicable)
- ✅ Clear source citations with full URLs and dates (if applicable)
- ✅ Distinction between requirements and recommendations (if applicable)
- ✅ All recommendations must have verifiable source support (if applicable)

### Documentation Quality

- ✅ Clear structure and organization
- ✅ Comprehensive coverage
- ✅ Actionable recommendations
- ✅ Consistent formatting
- ✅ **CRITICAL**: All content is generic and reusable (if applicable)
- ✅ **CRITICAL**: Generic terminology throughout (if applicable)
- ✅ **CRITICAL**: No cleanup documentation created (if applicable)

### Implementation Quality

- ✅ Practical and feasible
- ✅ Efficient and cost-effective
- ✅ Leverages existing capabilities (if applicable)
- ✅ Minimizes duplication (if applicable)

---

## Customization Instructions

1. Remove sections that don't apply to your project (e.g., verified references if not needed)
2. Customize project-specific guidelines sections
3. Adjust quality standards to match your project needs
4. Update terminology to match your project
5. Add project-specific requirements as needed

---

## Revision History

- **Initial Version**: [Date]
- **Purpose**: Establish rules for effective AI collaboration

---

*These rules should be reviewed and updated as the project evolves.*
