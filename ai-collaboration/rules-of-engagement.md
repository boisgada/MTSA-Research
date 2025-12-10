# Rules of Engagement for AI Collaboration

## Purpose

This document establishes **rules and guidelines** for AI collaboration sessions on the MTSA compliance project. Following these rules ensures efficient, consistent, and effective collaboration.

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

**User Should:**
- ✅ Specify which documents to update
- ✅ Indicate if new documents are needed
- ✅ Review AI-suggested changes before accepting

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

- Always consider 4 MTSA sites out of 300+ global sites
- Minimize duplication across sites
- Leverage corporate framework
- Consider site-specific maritime operations

### 2. Corporate Framework

- Existing mature cybersecurity program (IT/OT)
- Consolidated corporate requirements framework
- Best-in-class OT architecture
- ISO 27001 aligned
- All plants are manned (no remote operations)

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
3. User reviews and accepts changes
4. User notes any follow-up items

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

- **Initial Version**: [Current Date]
- **Updated**: [Current Date] - Added critical verified references requirement
- **Purpose**: Establish rules for effective AI collaboration with emphasis on verified references

---

*These rules should be reviewed and updated as the project evolves.*

