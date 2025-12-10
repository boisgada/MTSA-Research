# Rules of Engagement for AI Collaboration

## Purpose

This document establishes **rules and guidelines** for AI collaboration sessions on the MTSA compliance project. Following these rules ensures efficient, consistent, and effective collaboration.

---

## ⚠️ CRITICAL REQUIREMENT: Generic Content Only

### Public Repository Requirement

**This repository is published publicly and must contain ZERO organization-specific references. This is non-negotiable.**

**CRITICAL**: Never create scripts, documentation, or commit messages that document what was cleaned or removed. This creates the exact association we're trying to avoid.

### Mandatory Requirements

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

## ⚠️ CRITICAL REQUIREMENT: Verified References

### License to Operate Impact

**MTSA compliance directly impacts license to operate. Therefore, ALL recommendations MUST be supported by verified reference information.**

### Mandatory Requirements

1. **ALL recommendations MUST have verified source support**
   - Regulatory requirements: Must cite official sources (33 CFR, Coast Guard guidance)
   - Best practices: Must cite authoritative sources (NIST, CISA, industry standards)
   - Research findings: Must cite multiple validated sources

2. **Source Citations MUST include**:
   - Full source URLs
   - Publication dates
   - Document titles
   - Verification status (✅ VERIFIED or ⚠️ REQUIRES CONFIRMATION)

3. **Areas requiring Coast Guard confirmation MUST be clearly identified**
   - Use ⚠️ indicator
   - Explain why confirmation is needed
   - Note that implementation should wait for confirmation

4. **Reference Documentation**:
   - See `VERIFIED_REFERENCES.md` for complete source mapping
   - All documents must include verified references sections
   - All recommendations must be traceable to verified sources

### AI Session Requirements

**AI MUST**:
- ✅ Provide verified references for ALL recommendations
- ✅ Cite official regulatory sources for regulatory requirements
- ✅ Cite authoritative sources for best practices
- ✅ Clearly identify areas requiring Coast Guard confirmation
- ✅ Never make recommendations without verified source support

**AI MUST NOT**:
- ❌ Make recommendations without source citations
- ❌ Use unverified sources
- ❌ Present opinions as facts
- ❌ Skip source verification

---

## Session Guidelines

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
- ✅ **CRITICAL**: Verify content is generic before creating/updating files
- ✅ **CRITICAL**: Use generic placeholders instead of organization names
- ✅ **CRITICAL**: Never create scripts/documentation that document what was cleaned

**User Should:**
- ✅ Specify which documents to update
- ✅ Indicate if new documents are needed
- ✅ Review AI-suggested changes before accepting
- ✅ Verify content is generic before accepting changes

### 3. Research Approach

**⚠️ CRITICAL: Verified References Required**

**Since MTSA compliance impacts license to operate, ALL recommendations MUST be supported by verified reference information.**

**AI Should:**
- ✅ **ALWAYS** provide verified references for ALL recommendations
- ✅ Use web search for current regulatory information from authoritative sources
- ✅ Cross-reference multiple sources to validate information
- ✅ Cite sources with full URLs and publication dates
- ✅ Distinguish between regulatory requirements (with CFR citations) and recommendations
- ✅ Note when information is uncertain or requires Coast Guard clarification
- ✅ **NEVER** make recommendations without verified source support
- ✅ Clearly identify when recommendations are based on:
  - Regulatory text (33 CFR citations)
  - Coast Guard guidance (NVIC, official guidance)
  - Industry best practices (with source citations)
  - Research findings (with source citations)
- ✅ Document all sources in a verifiable format

**User Should:**
- ✅ Request research on specific topics
- ✅ **ALWAYS** ask for source citations for recommendations
- ✅ Request clarification on regulatory vs. recommended requirements
- ✅ Verify references before implementing recommendations
- ✅ Request additional sources if references seem insufficient

### 4. Implementation Guidance

**AI Should:**
- ✅ Leverage existing corporate framework and ISO 27001 alignment
- ✅ Minimize duplication across sites
- ✅ Provide actionable, specific recommendations
- ✅ Consider multi-site efficiency
- ✅ Reference existing documents and strategies

**User Should:**
- ✅ Specify site-specific requirements
- ✅ Indicate corporate vs. site-specific scope
- ✅ Request efficiency optimizations

### 5. Documentation Standards

**AI Should:**
- ✅ Use clear, professional language
- ✅ Structure documents with tables of contents
- ✅ Include executive summaries for long documents
- ✅ Use consistent formatting and markdown
- ✅ Include dates and version information
- ✅ Clearly distinguish mandatory deadlines from recommendations

**User Should:**
- ✅ Request specific document formats
- ✅ Specify level of detail needed
- ✅ Request summaries or detailed analysis

### 6. Critical Asset Focus

**AI Should:**
- ✅ Focus on trade/commerce impact (not company profitability)
- ✅ Consider TSI pathway analysis
- ✅ Account for foreign-located systems appropriately
- ✅ Consider network segmentation for scope limitation
- ✅ Reference established critical asset research

**User Should:**
- ✅ Provide specific asset information when relevant
- ✅ Clarify trade/commerce vs. company impact
- ✅ Request TSI pathway analysis

### 7. Corporate Framework Leverage

**AI Should:**
- ✅ Maximize use of existing corporate cybersecurity framework
- ✅ Reference ISO 27001 alignment
- ✅ Minimize site-specific duplication
- ✅ Leverage best-in-class OT architecture
- ✅ Consider corporate vs. site-specific requirements

**User Should:**
- ✅ Specify corporate capabilities
- ✅ Indicate what can be leveraged
- ✅ Request corporate framework documentation strategies

### 8. Timeline and Deadlines

**AI Should:**
- ✅ Clearly distinguish mandatory Coast Guard deadlines from recommendations
- ✅ Use visual indicators (🔴 MANDATORY, 🟡 RECOMMENDED, 🟢 ONGOING)
- ✅ Provide realistic timelines
- ✅ Consider corporate framework development time
- ✅ Account for multi-site parallel work

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

### 1. Multi-Site Context

- Always consider multiple MTSA sites within a larger organization
- Minimize duplication across sites
- Leverage corporate framework
- Consider site-specific maritime operations

### 2. Corporate Framework

- Existing mature cybersecurity program (IT/OT)
- Consolidated corporate requirements framework
- Best-in-class OT architecture
- ISO 27001 aligned
- Standard operational model

### 3. Key Research Findings

- TSI focuses on trade/commerce, not company profitability
- Network segmentation can limit scope (similar to TWIC isolation)
- Foreign-located systems assessed by trade/commerce impact
- Corporate framework can satisfy most MTSA requirements

### 4. Efficiency Goals

- Minimize duplication (target 65-70% reduction)
- Leverage existing investments
- Document corporate framework once
- Reference in site-specific plans

### 5. Generic Content Requirement

- **CRITICAL**: All content must be generic and reusable
- Never include company-specific names, paths, or identifiers
- Use placeholders like `[CompanyName]`, `[YourCompany]`, `[Organization]`
- Templates and examples must be generic
- Scripts must accept company name as parameter, never hardcode
- Documentation must use generic descriptions

---

## Session Workflow

### Start of Session

1. AI reads `project-context.md`
2. AI reviews `rules-of-engagement.md`
3. User provides session objectives
4. AI confirms understanding

### During Session

1. AI references existing documents
2. AI builds on previous work
3. AI maintains consistency
4. User provides feedback and clarifications

### End of Session

1. AI documents key outcomes
2. AI updates relevant documents
3. **CRITICAL**: AI verifies all content is generic and reusable
4. **CRITICAL**: AI ensures no cleanup documentation was created
5. User reviews and accepts changes
6. User verifies content is generic before committing
7. User notes any follow-up items

---

## Quality Standards

### Research Quality

- ✅ **CRITICAL**: Current and accurate information with verified sources
- ✅ **CRITICAL**: Multiple source validation for all recommendations
- ✅ **CRITICAL**: Clear source citations with full URLs and dates
- ✅ **CRITICAL**: Distinction between requirements (regulatory text) and recommendations (best practices)
- ✅ **CRITICAL**: All recommendations must have verifiable source support
- ✅ **CRITICAL**: Regulatory requirements must cite 33 CFR or official Coast Guard guidance

### Documentation Quality

- ✅ Clear structure and organization
- ✅ Comprehensive coverage
- ✅ Actionable recommendations
- ✅ Consistent formatting
- ✅ **CRITICAL**: All content is generic and reusable (use generic placeholders)
- ✅ **CRITICAL**: Generic terminology throughout
- ✅ **CRITICAL**: No cleanup documentation created

### Implementation Quality

- ✅ Practical and feasible
- ✅ Efficient and cost-effective
- ✅ Leverages existing capabilities
- ✅ Minimizes duplication

---

## Critical Requirement: Verified References

### ⚠️ License to Operate Impact

**MTSA compliance directly impacts license to operate. Therefore:**

1. **ALL recommendations MUST have verified source support**
2. **Regulatory requirements MUST cite official sources (33 CFR, Coast Guard guidance)**
3. **Best practices MUST cite authoritative sources**
4. **Research findings MUST cite multiple validated sources**
5. **Uncertain information MUST be clearly identified as requiring Coast Guard clarification**

### Reference Requirements

**For Regulatory Requirements:**
- Must cite: 33 CFR Part 101, Coast Guard Final Rule, NVIC 01-20, or official Coast Guard guidance
- Must include: Publication date, Federal Register citation (if applicable), official document URLs

**For Recommendations:**
- Must cite: Authoritative sources (NIST, CISA, industry standards, Coast Guard guidance)
- Must include: Source URLs, publication dates, document titles
- Must validate: Cross-reference multiple sources when possible

**For Research Findings:**
- Must cite: Multiple sources validating the finding
- Must include: Source URLs, publication dates
- Must note: When findings require Coast Guard confirmation

### Documentation Standard

All documents containing recommendations must include:
1. **Source Citations**: Inline citations with full references
2. **References Section**: Complete list of all sources with URLs
3. **Verification Status**: Clear indication of source verification
4. **Regulatory vs. Recommendation**: Clear distinction

---

## Revision History

- **Initial Version**: December 2024
- **Updated**: December 2024 - Added critical verified references requirement
- **Updated**: December 2024 - Added critical requirement: Generic content only, no cleanup documentation
- **Purpose**: Establish rules for effective AI collaboration with emphasis on verified references and generic content

---

*These rules should be reviewed and updated as the project evolves.*

