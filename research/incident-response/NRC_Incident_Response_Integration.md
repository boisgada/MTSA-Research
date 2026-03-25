# Incident Response Integration with National Response Center (NRC)

> **Queue Item**: [RQ-006](../RESEARCH_QUEUE.md#rq-006-incident-response-integration-with-nrc)  
> **Status**: ✅ Complete  
> **Priority**: 🟠 P1 - High

## Purpose

This guide provides comprehensive guidance on integrating MTSA cybersecurity incident reporting requirements with the National Response Center (NRC) and existing incident response procedures. It addresses NRC reporting procedures, coordination between IT/OT/security teams, and documentation requirements.

---

## Table of Contents

1. [NRC Reporting Overview](#1-nrc-reporting-overview)
2. [MTSA Incident Reporting Requirements](#2-mtsa-incident-reporting-requirements)
3. [NRC Reporting Procedures](#3-nrc-reporting-procedures)
4. [Integration with Existing Incident Response](#4-integration-with-existing-incident-response)
5. [Team Coordination](#5-team-coordination)
6. [Documentation Requirements](#6-documentation-requirements)
7. [Post-Incident Follow-Up](#7-post-incident-follow-up)
8. [Workflow and Procedures](#8-workflow-and-procedures)
9. [Best Practices](#9-best-practices)
10. [Templates and Checklists](#10-templates-and-checklists)
11. [References and Resources](#11-references-and-resources)

---

## 1. NRC Reporting Overview

### 1.1 National Response Center (NRC)

**NRC Purpose:**
- Federal point of contact for reporting oil, chemical, radiological, biological, and etiological discharges
- Coordinates with appropriate federal agencies
- Maintains 24/7 operations
- Handles emergency and non-emergency reports

**NRC Contact Information:**
- **Phone**: 1-800-424-8802 (24/7)
- **Website**: [NRC Website]
- **Email**: [NRC Email]
- **Address**: [NRC Address]

**NRC Services:**
- Receives and processes reports
- Coordinates with federal agencies
- Provides guidance on reporting
- Maintains reporting records

### 1.2 MTSA and maritime cyber reporting (USCG-aligned)

**Effective date:** **July 16, 2025** — **33 CFR Part 101** Subpart F and related reporting provisions apply together with **33 CFR Part 6** and **NVIC 02-24, Change 1** (Nov. 12, 2025).

**Primary USCG source used for this section:** **NVIC 02-24, Change 1** (local project copy: `documentation/reference-downloads/uscg-cyber-2025/BOS_SA_Cyber Reporting NVIC 02-24 CH 1.pdf`). The NVIC **does not** replace the CFR; it **harmonizes** reporting for **BOS**, **SA**, **TSI**, **cyber incidents** (Part 6), and **reportable cyber incidents (RCI)** (Part 101).

**Key principles:**
- **Multiple channels** may apply to one event (**NRC**, **COTP**/**District Commander**, **FBI**, **CISA**). Use the **NVIC** routing (Enclosure (1)) with **33 CFR 101.305**, **101.620**, and **6.16-1**.  
- **When in doubt, report** — the NVIC states that if criteria might apply, use **101.305**, **101.620**, and **6.16-1** as applicable.  
- **NRC** reporting for **Part 6** cyber incidents is **strongly recommended** and, per NVIC, can **satisfy** **COTP** and **FBI** notification (**FBI** accepts **NRC**-forwarded reports to **CyWatch**). **CISA** still requires a **separate** report.  
- **SSI** (**49 CFR Part 1520**): treat security incident information accordingly; initial reports may be **minimal**.

---

## 2. MTSA Incident Reporting Requirements

### 2.1 Reportable incidents and criteria (summary — cite NVIC for detail)

**Breach of security (BOS) and suspicious activity (SA)** — MTSA-regulated entities (**33 CFR 101.305**): report to **NRC** **without delay** when SA/BOS may result in a **TSI**; may also notify **COTP** but **NRC** obligation remains.

**Transportation security incident (TSI)** — **104/105**: notify **local COTP** without delay, then follow the **approved security plan** (may include **NRC**). **106**: notify **cognizant District Commander**, then plan procedures.

**Cyber incidents (33 CFR Part 6 / 6.16-1)** — Notify **FBI**, **CISA**, and **Coast Guard (COTP)**. Per **NVIC 02-24 CH 1**, **NRC** is **strongly recommended** and satisfies **COTP** + **FBI** when used as described; **CISA** is **separate**: **(844) 729-2472**, **SayCISA@cisa.dhs.gov**, or CISA Service Portal.

**Reportable cyber incidents (RCI)** — **33 CFR 101.620**: entities that **have not** reported under **6.16-1** (or are **not subject** to **Part 6**, e.g. many **OCS** cases per NVIC discussion) report **RCIs** to **NRC** without delay. If already reported under **6.16-1**, **101.620** does **not** require a duplicate **RCI** report.

**NVIC cyber incident / RCI indicators (non-exhaustive):** substantial **CIA** impact on covered systems; significant **operational** or **service** disruption (including potential serious injury or health/safety); large-scale **nonpublic personal** data exposure; disruption to **critical infrastructure**; or situations that may lead to a **TSI** (**33 CFR 101.105**). **Not** every **phishing/spam** or minor hygiene issue rises to a **cyber incident**—assess **sophistication, volume, persistence**, and **TSI** potential per NVIC.

### 2.2 When and how to report

**Timing:** **Without delay** / **immediately** when reporting thresholds may be met—do **not** defer initial notification to finish an investigation.

**Routing:** Apply **§2.1** and the **table** in the **Complete Implementation Guide**, **§8.3.2** (NVIC Enclosure (1) §e). **CySO** / duty officer should own **which** agencies are notified and **documentation**.

**Do not use ad hoc “company-only” shortcuts:** The NVIC explicitly notes that incidents affecting **business or administrative** systems can still contribute to a **TSI** when they cause or risk **transportation system** or **economic disruption** in the **33 CFR 101.105** sense. Use the **NVIC** and **counsel**, not informal “internal only” rules.

### 2.3 Reporting obligations

**Organizational responsibility:** The owner/operator remains responsible for **timely** notifications and **coordination** with **IT/OT**, security, legal, and **managed service** providers.

**Coordination:** Maintain **playbooks** that list **NRC**, **COTP**, **FBI**, **CISA**, and **internal** escalation in one workflow; preserve **records** of **what** was reported, **when**, and **by whom**.

---

## 3. NRC Reporting Procedures

### 3.1 Initial Report

**Report Contents:**
- Incident description
- Incident type and category
- Affected systems/assets
- Potential impact assessment
- Initial response actions
- Contact information

**Report Method:**
- Phone: Primary method for immediate reporting
- Follow-up: Written report may be required
- Documentation: Maintain all reporting records

**Report Timing:**
- Immediate: Upon discovery
- As soon as possible: Within required timeframe
- Do not delay: Waiting for complete information

### 3.2 Report Information

**Required Information:**
- Facility name and location
- Incident date and time
- Incident description
- Affected systems
- Potential impact
- Response actions taken
- Contact information
- Any other relevant information

**Incident Description:**
- What happened
- When it happened
- How it was discovered
- What systems are affected
- What is the potential impact
- What actions have been taken

### 3.3 Follow-Up Reporting

**Follow-Up Requirements:**
- Additional information as available
- Updates on incident status
- Final incident report
- Corrective actions taken
- Lessons learned

**Follow-Up Timing:**
- As additional information becomes available
- Upon request from NRC or Coast Guard
- Upon incident resolution
- As required by regulations

---

## 4. Integration with Existing Incident Response

### 4.1 Existing Incident Response Integration

**Integration Points:**
- Existing incident response procedures
- Existing security operations center (SOC)
- Existing IT/OT incident response
- Existing business continuity procedures
- Existing crisis management procedures

**Integration Approach:**
- Extend existing procedures
- Add NRC reporting step
- Integrate MTSA requirements
- Coordinate with existing teams
- Maintain consistency

### 4.2 Incident Response Lifecycle

**Phase 1: Preparation**
- Develop incident response plan
- Establish NRC reporting procedures
- Train personnel
- Prepare documentation templates
- Establish communication protocols

**Phase 2: Detection and Analysis**
- Detect cybersecurity incidents
- Analyze incident scope and impact
- Assess TSI potential
- Determine reporting requirements
- Initiate response procedures

**Phase 3: Containment, Eradication, and Recovery**
- Contain incident
- Eradicate threat
- Recover systems
- Document actions
- Update NRC as needed

**Phase 4: Post-Incident Activity**
- Complete incident documentation
- Submit final report to NRC
- Conduct lessons learned
- Update procedures
- Implement improvements

### 4.3 Incident Response Plan Updates

**Required Updates:**
- Add NRC reporting procedures
- Include MTSA-specific requirements
- Update contact information
- Add reporting decision criteria
- Include coordination procedures

**Plan Components:**
- Incident classification
- Reporting procedures
- Response procedures
- Documentation requirements
- Communication protocols

---

## 5. Team Coordination

### 5.1 Team Roles and Responsibilities

**Cybersecurity Officer (CySO):**
- Overall responsibility for incident response
- Decision on **regulatory reporting** (NRC / COTP / FBI / CISA) per **NVIC** and **33 CFR**
- Coordination with Coast Guard and other agencies
- Final approval of reports

**IT Security Team:**
- Incident detection and analysis
- Technical response
- System recovery
- Technical documentation

**OT Security Team:**
- OT incident detection
- OT system response
- Operational impact assessment
- OT-specific documentation

**Security Operations:**
- 24/7 monitoring
- Initial incident detection
- Incident triage
- Escalation procedures

**Management:**
- Business impact assessment
- Resource allocation
- External communication
- Decision support

**Legal/Compliance:**
- Regulatory compliance review
- Legal considerations
- Documentation review
- Risk assessment

### 5.2 Coordination Procedures

**Initial Response:**
- Incident detected
- Security team notified
- Initial assessment conducted
- TSI potential evaluated
- Reporting decision made

**Ongoing Coordination:**
- Regular status updates
- Cross-team communication
- Resource coordination
- Information sharing
- Decision coordination

**Reporting Coordination:**
- Determine reporting requirements (**101.305** / **101.620** / **6.16-1**)
- Gather required information
- Prepare report(s) for each required channel
- Review and approve
- Submit **without delay** per NVIC routing (**NRC**, **CISA**, **COTP**, etc.)

### 5.3 Communication Protocols

**Internal Communication:**
- Incident notification procedures
- Status update procedures
- Escalation procedures
- Documentation procedures

**External Communication:**
- NRC reporting procedures
- Coast Guard coordination
- Vendor coordination (if applicable)
- Public communication (if needed)

---

## 6. Documentation Requirements

### 6.1 Incident Documentation

**Required Documentation:**
- Incident report
- Incident timeline
- Affected systems
- Impact assessment
- Response actions
- Root cause analysis
- Corrective actions

**Documentation Standards:**
- Complete and accurate
- Timely documentation
- Consistent format
- Retained per requirements
- Available for review

### 6.2 NRC Report Documentation

**Report Contents:**
- Incident details
- Affected systems
- Impact assessment
- Response actions
- Contact information
- Follow-up information

**Documentation Maintenance:**
- Maintain all reports
- Retain per requirements
- Organize for easy access
- Update as needed
- Available for audit

### 6.3 Recordkeeping Requirements

**Records to Maintain:**
- All incident reports
- NRC reporting records
- Response documentation
- Follow-up reports
- Corrective action documentation

**Retention Requirements:**
- Per MTSA recordkeeping requirements
- Typically 3-5 years minimum
- May vary by incident type
- Check specific requirements

---

## 7. Post-Incident Follow-Up

### 7.1 Follow-Up Activities

**Immediate Follow-Up:**
- Complete incident documentation
- Submit final report to NRC
- Coordinate with Coast Guard (if needed)
- Notify stakeholders
- Begin remediation

**Short-Term Follow-Up:**
- Root cause analysis
- Corrective action implementation
- Process improvements
- Training updates
- Documentation updates

**Long-Term Follow-Up:**
- Lessons learned review
- Procedure updates
- System improvements
- Ongoing monitoring
- Continuous improvement

### 7.2 Corrective Actions

**Corrective Action Development:**
- Identify root causes
- Develop corrective actions
- Prioritize actions
- Assign responsibilities
- Set timelines

**Corrective Action Implementation:**
- Implement actions
- Verify effectiveness
- Document completion
- Update procedures
- Monitor results

### 7.3 Lessons Learned

**Lessons Learned Process:**
- Conduct lessons learned review
- Identify improvements
- Document findings
- Update procedures
- Share knowledge

**Areas to Review:**
- Incident detection
- Response procedures
- Reporting procedures
- Team coordination
- Documentation
- Corrective actions

---

## 8. Workflow and Procedures

### 8.1 Incident Response Workflow

**Step 1: Detection**
- Incident detected
- Initial assessment
- Classification
- Escalation

**Step 2: Assessment**
- Scope assessment
- Impact assessment
- TSI potential evaluation
- Reporting decision

**Step 3: Response**
- Containment
- Eradication
- Recovery
- Documentation

**Step 4: Reporting**
- Prepare report
- Review and approve
- Submit to NRC
- Coordinate as needed

**Step 5: Follow-Up**
- Complete documentation
- Submit final report
- Implement corrective actions
- Conduct lessons learned

### 8.2 NRC Reporting Workflow

**Decision Point:**
- Is incident reportable?
- Does it affect critical assets?
- Could it lead to TSI?
- Is immediate reporting required?

**Reporting Process:**
1. Gather incident information
2. Assess reporting requirements
3. Prepare report
4. Review and approve
5. Contact NRC
6. Submit report
7. Document submission
8. Follow up as needed

**Coordination:**
- Coordinate with IT/OT teams
- Coordinate with security teams
- Coordinate with management
- Coordinate with legal/compliance
- Coordinate with Coast Guard (if needed)

### 8.3 Escalation Procedures

**Escalation Triggers:**
- Critical incident
- TSI potential
- Coast Guard involvement
- Media attention
- Significant impact

**Escalation Path:**
- Security team → CySO
- CySO → Management
- Management → Executive
- External → NRC/Coast Guard

---

## 9. Best Practices

### 9.1 Incident Response Best Practices

**Preparation:**
- ✅ Develop comprehensive incident response plan
- ✅ Establish clear procedures
- ✅ Train all personnel
- ✅ Test procedures regularly
- ✅ Maintain contact information

**Detection:**
- ✅ Implement monitoring and detection
- ✅ Establish alerting procedures
- ✅ Train on incident recognition
- ✅ Maintain security awareness

**Response:**
- ✅ Respond quickly and effectively
- ✅ Follow established procedures
- ✅ Document all actions
- ✅ Coordinate with teams
- ✅ Communicate appropriately

**Reporting:**
- ✅ Report promptly when required
- ✅ Provide complete information
- ✅ Maintain documentation
- ✅ Follow up as needed
- ✅ Coordinate with stakeholders

### 9.2 NRC Reporting Best Practices

**Reporting:**
- ✅ Understand reporting requirements
- ✅ Report promptly when required
- ✅ Provide accurate information
- ✅ Maintain documentation
- ✅ Follow up appropriately

**Coordination:**
- ✅ Coordinate with internal teams
- ✅ Coordinate with Coast Guard (if needed)
- ✅ Maintain communication
- ✅ Document all coordination

**Documentation:**
- ✅ Document all incidents
- ✅ Maintain complete records
- ✅ Organize documentation
- ✅ Retain per requirements

---

## 10. Templates and Checklists

### 10.1 Incident Report Template

**Template Sections:**
1. Incident Information
2. Affected Systems
3. Impact Assessment
4. Response Actions
5. Reporting Information
6. Follow-Up Actions

### 10.2 NRC Reporting Checklist

**Pre-Reporting:**
- [ ] Incident confirmed
- [ ] TSI potential assessed
- [ ] Reporting requirement determined
- [ ] Information gathered
- [ ] Report prepared
- [ ] Report reviewed
- [ ] Report approved

**Reporting:**
- [ ] NRC contacted
- [ ] Report submitted
- [ ] Confirmation received
- [ ] Documentation maintained
- [ ] Follow-up scheduled

**Post-Reporting:**
- [ ] Follow-up completed
- [ ] Final report submitted
- [ ] Documentation updated
- [ ] Lessons learned conducted
- [ ] Procedures updated

### 10.3 Incident Response Procedure Template

**Procedure Sections:**
1. Purpose and Scope
2. Roles and Responsibilities
3. Incident Classification
4. Response Procedures
5. Reporting Procedures
6. Documentation Requirements
7. Communication Protocols
8. Escalation Procedures

---

## 11. References and Resources

### 11.1 Primary Regulatory Sources

**MTSA and maritime security regulations:**
- **33 CFR Part 101** — [eCFR Part 101](https://www.ecfr.gov/current/title-33/chapter-I/subchapter-H/part-101): **101.305** (BOS/SA), Subpart F (**101.620** RCI, etc.)
- **33 CFR Part 6** — **6.16-1** and related provisions: **cyber incident** reporting to **FBI**, **CISA**, **Coast Guard**

**Final rule (codified in Part 101 Subpart F):**
- **Federal Register Document 2025-00708** (Jan. 17, 2025; effective July 16, 2025)  
  - [Federal Register HTML](https://www.federalregister.gov/documents/2025/01/17/2025-00708/cybersecurity-in-the-marine-transportation-system)  
  - [GovInfo PDF](https://www.govinfo.gov/content/pkg/FR-2025-01-17/pdf/2025-00708.pdf)  
  - Local: `documentation/reference-downloads/uscg-cyber-2025/FederalRegister_2025-00708_Cybersecurity-MTS.pdf`

**U.S. Coast Guard NVIC (reporting harmonization):**
- **NVIC 02-24, Change 1** (Nov. 12, 2025) — local: `documentation/reference-downloads/uscg-cyber-2025/BOS_SA_Cyber Reporting NVIC 02-24 CH 1.pdf`  
- **NVIC 02-24** (Feb. 21, 2024) — local: `documentation/reference-downloads/uscg-cyber-2025/BOS_SA_Cyber Reporting NVIC.pdf`

**National Response Center (NRC):**
- [NRC](https://www.nrc.uscg.mil/) — **1-800-424-8802** (24/7), **202-267-2675** — primary channel for **101.305** BOS/SA and many **RCI** / recommended **Part 6** cyber reports per **NVIC**

### 11.2 Supporting Frameworks

**Incident Response Frameworks:**
- **NIST Cybersecurity Framework**: Incident response guidance
  - Source: [NIST CSF](https://www.nist.gov/cyberframework)
  - Verification: NIST official framework
  - Relevance: Best practices for incident response

- **CISA Incident Response Resources**: Cybersecurity incident response guidance
  - Source: [CISA Incident Response](https://www.cisa.gov/topics/incident-response)
  - Verification: Official CISA resources
  - Relevance: Incident response best practices

### 11.3 Related Project Documents

**Internal References:**
- **Complete Implementation Guide**: MTSA incident reporting requirements
- **Critical Assets Research**: Critical asset identification for incident assessment
- **Coast Guard Engagement Guide**: Coast Guard coordination procedures

---

## Important Notes

⚠️ **Reporting is multi-channel** (**NRC**, **COTP**/**District**, **FBI**, **CISA**) per **33 CFR** and **NVIC 02-24 CH 1**—not “NRC only.”

⚠️ **Effective July 16, 2025**, Subpart F and related obligations apply; use the **NVIC** to route each event.

⚠️ **Do not rely on informal “company-only / no TSI” shortcuts**—the **NVIC** states **business/admin** cyber events can still relate to a **TSI** when **101.105** impacts are implicated.

⚠️ **Integrate** agency notifications with existing **IR** playbooks and **SSI** handling (**49 CFR Part 1520**).

⚠️ **Document** what was reported, when, and to which agencies.

---

*This document is part of the MTSA Cybersecurity Compliance Research Repository.*
*For complete MTSA requirements, see the Complete Implementation Guide.*
*For critical asset identification, see the Critical Assets Research.*
*For verified references, see VERIFIED_REFERENCES.md.*
*Last Updated: March 2026 (aligned with NVIC 02-24 CH 1 and Policy Letter 01-25 PDFs in `documentation/reference-downloads/uscg-cyber-2025/`).*

