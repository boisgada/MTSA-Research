# MTSA Project Context

## Purpose

This document provides **essential context** for AI collaboration sessions on the MTSA compliance project. It should be reviewed at the start of each session to maintain continuity and context.

---

## Project Overview

### Organization
- **Company**: Large global chemical company
- **Total Sites**: 300+ sites globally
- **MTSA-Regulated Sites**: 4 sites (Coast Guard regulated)
- **Industry**: Chemical manufacturing with shipping operations

### Cybersecurity Maturity
- **IT Security**: Mature cybersecurity program
- **OT Security**: Mature cybersecurity program
- **Framework**: Consolidated corporate requirements framework (IT/OT)
- **Architecture**: Best-in-class OT architecture design implementations
- **Standards**: ISO 27001 aligned
- **Operations**: All plants are manned (no remote operations)

---

## Key Project Characteristics

### Corporate Capabilities
- ✅ Mature corporate cybersecurity program
- ✅ Consolidated IT/OT requirements framework
- ✅ Best-in-class OT architecture
- ✅ ISO 27001 Information Security Management System (ISMS)
- ✅ Established training programs
- ✅ Corporate incident response procedures
- ✅ Corporate recordkeeping systems

### Site Characteristics
- 4 sites with Coast Guard-regulated shipping operations
- Sites isolated from other operations (similar to TWIC physical isolation)
- Maritime operations at each site
- Foreign-located logistics systems (e.g., SAP in different country)

### Strategic Approach
- **Goal**: Achieve MTSA compliance with minimal duplication
- **Strategy**: Leverage corporate framework, document once, reference in site plans
- **Efficiency Target**: 65-70% reduction in effort compared to site-by-site approach

---

## Key Research Findings

### 1. TSI Interpretation
- **TSI Focus**: Trade/commerce impact, NOT company profitability
- **"Transportation System Disruption"**: Disruption of trade/commerce, not company operations
- **"Economic Disruption"**: Regional economic impact, not company financial impact
- **Implication**: Systems affecting only company operations may not be critical

### 2. Critical Asset Definition
- **Definition**: Assets whose compromise could lead to a Transportation Security Incident (TSI)
- **Key Question**: Does compromise affect trade/commerce or only company operations?
- **Assessment**: Focus on trade/commerce impact, not company profitability

### 3. Network Segmentation
- **Approach**: Can limit scope similar to physical TWIC isolation
- **Principle**: Prove non-shipping systems don't affect trade/commerce
- **Challenge**: Foreign-located systems (e.g., SAP) may still be critical if affecting trade/commerce

### 4. Foreign-Located Systems
- **Principle**: Location doesn't determine criticality
- **Assessment**: Based on trade/commerce impact, not location
- **Example**: SAP logistics system assessed by trade/commerce impact, not location

### 5. Corporate Framework Leverage
- **ISO 27001**: Can satisfy most MTSA technical requirements
- **Corporate Framework**: Can satisfy most MTSA organizational requirements
- **Site-Specific**: Only maritime operations and FSP integration need to be site-specific

---

## Regulatory Requirements

### Mandatory Deadlines
1. **July 16, 2025**: Incident reporting to NRC becomes mandatory
2. **January 12, 2026**: Cybersecurity training completion deadline
3. **July 16, 2027**: 
   - CySO designation
   - Cybersecurity Assessment completion
   - Cybersecurity Plan submission to Coast Guard

### Eight Major Requirements
1. Cybersecurity Plan
2. Cybersecurity Officer (CySO)
3. Cybersecurity Training
4. Cybersecurity Assessment
5. Cybersecurity Drills and Exercises
6. Incident Reporting
7. Technical Cybersecurity Measures
8. Recordkeeping

---

## Key Documents

### Research Documents
- `research/critical-assets/MTSA_Critical_Assets_Research.md`: Critical asset definition and identification
- `research/tsi-analysis/TSI_Trade_Commerce_Interpretation.md`: TSI trade/commerce interpretation
- `research/tsi-analysis/TSI_Transportation_Disruption_Analysis.md`: TSI disruption conflict analysis

### Implementation Documents
- `implementation/guides/MTSA_Cyber_Requirements_Complete_Implementation_Guide.md`: Complete requirements guide
- `implementation/strategies/MTSA_Corporate_Framework_Strategy.md`: Corporate framework approach
- `implementation/strategies/ISO_27001_MTSA_Alignment_Guide.md`: ISO 27001 alignment

### Assessment Tools
- `implementation/checklists/Critical_Asset_Assessment_Checklist.md`: Assessment checklist

---

## Current Project Status

### Completed
- ✅ Critical asset research
- ✅ TSI interpretation research
- ✅ Complete requirements analysis
- ✅ Corporate framework strategy
- ✅ ISO 27001 alignment analysis
- ✅ Implementation guide development

### In Progress
- 🔄 Corporate framework documentation
- 🔄 Site-specific plan template development

### Pending
- ⏳ Corporate framework document creation
- ⏳ Site-specific plan development
- ⏳ Coast Guard engagement
- ⏳ Site assessments

---

## Key Decisions and Rationale

### 1. Corporate Framework Approach
- **Decision**: Document corporate framework once, reference in site plans
- **Rationale**: Minimize duplication, leverage existing investments
- **Benefit**: 65-70% effort reduction

### 2. TSI Trade/Commerce Focus
- **Decision**: Focus on trade/commerce impact for critical asset assessment
- **Rationale**: Research indicates TSI focuses on trade/commerce, not company profitability
- **Benefit**: More accurate critical asset identification

### 3. ISO 27001 Leverage
- **Decision**: Leverage existing ISO 27001 ISMS for MTSA compliance
- **Rationale**: Significant overlap, existing mature program
- **Benefit**: Efficient compliance, maintain ISO 27001 alignment

### 4. Network Segmentation Strategy
- **Decision**: Use network segmentation to limit scope (similar to TWIC isolation)
- **Rationale**: Prove non-shipping systems don't affect trade/commerce
- **Benefit**: Limit scope of critical assets

---

## Common Questions and Answers

### Q: How do we assess foreign-located systems?
**A**: Assess by trade/commerce impact, not location. If SAP affects trade/commerce, it's critical regardless of location.

### Q: Can we limit scope through network segmentation?
**A**: Yes, if you can prove non-shipping systems don't affect trade/commerce. Similar to TWIC physical isolation.

### Q: How much can we leverage corporate framework?
**A**: Most technical and organizational requirements can be satisfied by corporate framework. Only maritime-specific elements need to be site-specific.

### Q: What's the difference between mandatory deadlines and recommendations?
**A**: Mandatory deadlines are Coast Guard regulatory requirements (3 dates). Recommendations are suggested start dates to ensure readiness.

### Q: How do we handle the 4 sites efficiently?
**A**: Document corporate framework once, create site plan template, develop site plans using template with minimal site-specific additions.

---

## Terminology

- **TSI**: Transportation Security Incident
- **CySO**: Cybersecurity Officer
- **FSP**: Facility Security Plan
- **NRC**: National Response Center
- **OT**: Operational Technology
- **ISMS**: Information Security Management System
- **MTSA**: Maritime Transportation Security Act
- **CDC**: Certain Dangerous Cargoes

---

## Important Notes

1. **All plants are manned**: No remote operations considerations needed
2. **Best-in-class OT architecture**: OT security is mature and well-designed
3. **Corporate framework exists**: Leverage existing corporate cybersecurity framework
4. **ISO 27001 aligned**: Use ISO 27001 alignment guide for compliance
5. **4 sites out of 300+**: Focus on efficiency and minimal duplication

### Working Mode for Public-Source Refresh

- **Preferred agent**: `awesome-copilot/chatmodes/gpt-5-beast-mode.chatmode.md`
- **Purpose**: Rapidly pull authoritative public sources (USCG Final Rule/NVIC, CISA, NIST) and fold citations into project docs with minimal rework.
- **Method**: Single targeted discovery pass → fetch/verify official sources → update documents and verified references → stop when actionable updates are merged.

## ⚠️ CRITICAL: Verified References Requirement

**Since MTSA compliance impacts license to operate, ALL recommendations MUST be supported by verified reference information.**

- **All recommendations must have verified source citations**
- **Regulatory requirements must cite official sources (33 CFR, Coast Guard guidance)**
- **Best practices must cite authoritative sources**
- **See `VERIFIED_REFERENCES.md` for complete reference mapping**
- **Areas requiring Coast Guard confirmation must be clearly identified**

---

## Revision History

- **Initial Version**: [Current Date]
- **Purpose**: Maintain context across AI collaboration sessions

---

*This document should be updated as the project evolves and new decisions are made.*

