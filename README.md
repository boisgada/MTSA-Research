# MTSA Cybersecurity Compliance Research and Implementation

## Project Overview

This repository contains research, analysis, and implementation guidance for achieving compliance with the Maritime Transportation Security Act (MTSA) cybersecurity requirements for Coast Guard-regulated chemical facilities.

**Project Scope**: Multiple MTSA-regulated sites within a large global organization.

**Key Dates**:

- **July 16, 2025**: Incident reporting to NRC becomes mandatory
- **January 12, 2026**: Cybersecurity training completion deadline
- **July 16, 2027**: CySO designation, Assessment completion, and Cybersecurity Plan submission deadline

---

## Repository Structure

```text
MTSA/
├── README.md (this file)
├── ai-collaboration/          # AI session persistence and rules
│   ├── README.md
│   ├── rules-of-engagement.md
│   ├── project-context.md
│   └── session-notes-template.md
├── research/                  # Research documents and analysis
│   ├── README.md
│   ├── critical-assets/      # Critical asset identification research
│   ├── tsi-analysis/         # TSI definition and scope analysis
│   └── requirements/          # MTSA requirements research
├── implementation/            # Implementation guides and strategies
│   ├── README.md
│   ├── guides/               # Comprehensive implementation guides
│   ├── strategies/           # Strategic approaches
│   └── checklists/           # Assessment checklists and templates
├── assets/                    # Supporting assets and data
│   ├── README.md
│   └── spreadsheets/          # Excel files and data
├── tools/                     # Repository maintenance tools
│   └── README.md
└── awesome-copilot/           # AI prompt library (external resource)
```

---

## Key Documents

### Research Documents (`research/`)

- **Critical Assets Research** (`research/critical-assets/`): Definition and identification of critical assets under MTSA
- **TSI Analysis** (`research/tsi-analysis/`): Understanding Transportation Security Incident scope and interpretation
  - Trade/Commerce Interpretation: TSI focus on trade/commerce vs. company profitability
  - Transportation Disruption Analysis: Analysis of segmentation vs. foreign systems conflict

### Implementation Documents (`implementation/`)

- **Complete Implementation Guide** (`implementation/guides/`): All MTSA cybersecurity requirements with timeline
- **Corporate Framework Strategy** (`implementation/strategies/`): Multi-site efficiency approach leveraging corporate framework
- **ISO 27001 Alignment Guide** (`implementation/strategies/`): Leveraging existing ISO 27001 ISMS for MTSA compliance
- **Critical Asset Assessment Checklist** (`implementation/checklists/`): Step-by-step assessment checklist

### Cross-Sector Alignment (`research/`)

- **Cross-Sector Alignment** (`research/cross-sector-alignment.md`): Land-based sectors, industry groups, and best-practice sources to reuse for MTSA efficiency
  - Includes MTSA-adjacent intermodal logistics, bunkering/pipelines into marine terminals, and passenger terminal parallels for drills/access control/incident coordination

### GitHub Resources (`research/`)

- **GitHub Resources** (`research/github-resources.md`): Open-source tools and frameworks for MTSA compliance support
  - NIST CSF implementation tools, CISA security tools, maritime security repositories, OT/ICS monitoring tools

### Research Queue (`research/`)

- **Research Queue** (`research/RESEARCH_QUEUE.md`): Prioritized list of research topics and tasks
  - 25 research topics organized by priority (P0-P3)
  - Status tracking and recommended research order
  - Estimated effort and dependencies for each topic

### Assets (`assets/`)

- **Asset Inventory Spreadsheets** (`assets/spreadsheets/`): Current asset inventory attempts

### AI Collaboration (`ai-collaboration/`)

- **Rules of Engagement**: Guidelines for AI collaboration sessions
- **Project Context**: Essential project context for AI sessions
- **Session Notes Template**: Template for documenting AI sessions

### Repository Maintenance Tools (`tools/`)

- **Tools** (`tools/`): Repository maintenance utilities

---

## Quick Start

1. **New to the project?** Start with `ai-collaboration/project-context.md`
2. **Planning implementation?** Review `implementation/guides/MTSA_Cyber_Requirements_Complete_Implementation_Guide.md`
3. **Assessing critical assets?** Use `implementation/checklists/Critical_Asset_Assessment_Checklist.md`
4. **Working with AI?** Review `ai-collaboration/rules-of-engagement.md`

---

## Project Status

- ✅ Research phase: Complete
- ✅ Requirements analysis: Complete
- 🔄 Implementation planning: In progress
- ⏳ Corporate framework documentation: Pending
- ⏳ Site-specific plan development: Pending

---

## Key Insights

1. **TSI Focus**: TSI definition focuses on trade/commerce impact, not company profitability
2. **Critical Assets**: Assets whose compromise could lead to TSI (trade/commerce disruption)
3. **Corporate Leverage**: Existing ISO 27001 and corporate cybersecurity framework can satisfy most MTSA requirements
4. **Efficiency**: Corporate framework approach reduces effort by 65-70% compared to site-by-site
5. **Network Segmentation**: Can limit scope similar to physical TWIC isolation

---

## AI Collaboration and Acknowledgments

This repository was developed with extensive AI assistance using **Cursor** (AI-powered code editor) with **Auto** (agentic AI coding assistant). The AI contributed significantly to:

- **Research and Analysis**: Regulatory literature scans, cross-sector benchmarking, and comprehensive requirements analysis
- **Documentation**: Drafting and structuring implementation guides, research documents, and reference materials
- **Reference Curation**: Systematic verification and citation of authoritative sources (USCG, CISA, NIST, ISA)
- **Content Organization**: Repository structure design and documentation framework

All content is based on public, authoritative sources and has been verified for accuracy. The AI collaboration approach enabled rapid development while maintaining rigorous standards for verified references.

**Developed with [Cursor](https://cursor.sh)** - AI-powered code editor with agentic AI assistant capabilities.

For detailed AI usage disclosure, see [`PUBLISHING.md`](PUBLISHING.md).

---

## Resources

- **Coast Guard Resources**: See implementation guides for links
- **NIST Framework**: Recommended framework for cybersecurity measures
- **ISO 27001**: Existing ISMS alignment guide available
- **MTS-ISAC**: Maritime Transportation System Information Sharing and Analysis Center

## ⚠️ Verified References

**CRITICAL**: Since MTSA compliance impacts license to operate, all recommendations must be supported by verified references.

- **VERIFIED_REFERENCES.md**: Complete mapping of all recommendations to verified sources
- **All documents**: Include verified references sections
- **Rules of Engagement**: Emphasize verified references requirement

**See `VERIFIED_REFERENCES.md` for complete source mapping of all recommendations.**

---

## Contact and Support

For questions or updates to this repository, refer to the project team.

---

*Last Updated: [Current Date]*
*Project: MTSA Cybersecurity Compliance*
