# NIST CSF to MTSA Alignment Crosswalk

## Purpose

Provide a concise view of how MTSA cybersecurity requirements map to NIST CSF (v1.1/v2.0 Functions/Categories/Subcategories), and where existing ISO 27001 controls and evidence can be reused. Use this as a companion to `ISO_27001_MTSA_Alignment_Guide.md`.

> Scope note: MTSA requirements are treated at the requirement-group level (Plan, CySO, Training, Assessment, Drills/Exercises, Incident Reporting, Technical Measures, Recordkeeping). Subcategories are listed where most relevant; not all will apply in every facility.

---

## How to Use

1. Start with the MTSA requirement you need to satisfy.
2. Find the corresponding CSF Function/Category/Subcategory.
3. Pull evidence from ISO 27001 controls already mapped in `ISO_27001_MTSA_Alignment_Guide.md`.
4. Identify MTSA-specific gaps (e.g., NRC reporting, Coast Guard submission artifacts, maritime/OT nuances).

---

## Quick Mapping Summary

| MTSA Requirement | NIST CSF Functions / Categories (primary) | Notes |
|------------------|-------------------------------------------|-------|
| Cybersecurity Plan | ID.GV, ID.RA, PR.IP | Governance, scoped risk management, documented plan |
| CySO Role | ID.AM, ID.GV | Defined authority, accountability, roles |
| Training | PR.AT | Role-based awareness, OT/maritime content |
| Assessment | ID.RA, ID.AM | Risk, assets (IT/OT), vulnerabilities, TSI considerations |
| Drills & Exercises | RS.IM, RS.CO | IR testing, comms, lessons learned |
| Incident Reporting (NRC) | RS.CO, RS.AN, RS.MI | Reporting, analysis, coordination with NRC/USCG |
| Technical Measures | PR.AC, PR.DS, PR.IP, PR.MA, DE.CM | Access, data protection, hardening, maintenance, monitoring |
| Recordkeeping | ID.GV, PR.IP, RS.IM, RC.CO | Documented info, logs, evidence, after-action |

---

## Detailed Crosswalk

### 1) Cybersecurity Plan (MTSA)
- **CSF**: ID.GV-1/2 (governance policies), ID.RA-1/3 (risk mgmt), PR.IP-1/3/8 (policies, configuration, change)
- **MTSA specifics**: Align with Facility Security Plan; include maritime/OT scope; Coast Guard submission.
- **Reuse from ISO 27001**: Clauses 4.3, 5.2, 6.1.2/6.1.3, 8.1 (see ISO guide).

### 2) Cybersecurity Officer (CySO)
- **CSF**: ID.GV-2 (roles/responsibilities), ID.AM-6 (roles for assets), ID.RM-1 (risk mgmt roles)
- **MTSA specifics**: Formal designation, authority for MTSA plan, coordination with FSO/USCG.
- **Reuse**: ISO 27001 5.1/5.3/7.2.

### 3) Training
- **CSF**: PR.AT-1/2/3/4 (awareness, role-based), PR.AT-5 (third parties, if applicable)
- **MTSA specifics**: Annual MTSA/OT training; NRC reporting awareness; maritime scenarios.
- **Reuse**: ISO 27001 7.2/7.3; Annex A.7.2.x.

### 4) Cybersecurity Assessment
- **CSF**: ID.RA-1/2/3/6 (risk/vuln), ID.AM-1/2/3 (assets), DE.CM-8 (vuln monitoring)
- **MTSA specifics**: Critical asset identification, maritime threats, OT inclusion, annual cadence.
- **Reuse**: ISO 27001 6.1.2/6.1.3; Annex A.8.x (asset); A.12.6.1 (vuln mgmt).

### 5) Drills and Exercises
- **CSF**: RS.IM-1/2 (improvements), RS.CO-1/2/3 (comms), RS.MI-1 (lessons learned)
- **MTSA specifics**: Two drills + one exercise per year; maritime/OT scenarios; document AARs.
- **Reuse**: ISO 27001 Annex A.5.26/5.27; A.17.x for continuity aspects.

### 6) Incident Reporting (NRC)
- **CSF**: RS.CO-1/2/3 (reporting/coordination), RS.AN-1/2 (analysis), RS.MI-1 (improvements)
- **MTSA specifics**: Immediate NRC notification; Coast Guard coordination; evidence of tested playbooks.
- **Reuse**: ISO 27001 Annex A.5.26/5.27/6.1.3 (authorities contact) with MTSA extensions.

### 7) Technical Cybersecurity Measures
- **CSF**:
  - PR.AC-1/3/4/5/6 (access, least privilege, authN, remote access, network segmentation)
  - PR.DS-1/2/5/6/7 (data at rest/in transit, DLP, integrity)
  - PR.IP-1/3/4/12 (policies, configuration, backups, change)
  - PR.MA-1/2 (maintenance, controlled tools)
  - DE.CM-1/4/7/8 (monitoring, logging, anomalies, vuln detection)
- **MTSA specifics**: IT/OT segregation, maritime OT assets, backup/DR for critical ops.
- **Reuse**: ISO 27001 Annex A.5, A.8, A.9, A.12, A.13, A.17 (see ISO guide tables).

### 8) Recordkeeping
- **CSF**: ID.GV-3 (legal/reg obligations), PR.IP-4/5 (backups, change), RS.IM-1/2 (IR records), RC.CO-1 (recovery comms)
- **MTSA specifics**: Training logs, drills/exercises evidence, incident records with NRC reporting, assessments, change history.
- **Reuse**: ISO 27001 7.5, 9.1/9.2/9.3; Annex A.12.4.x (logging).

---

## Expanded MTSA ↔ NIST CSF Crosswalk (with ISO tie-ins)

| MTSA Requirement | CSF Function/Category/Subcategory (v1.1 refs) | MTSA Notes | ISO 27001 Evidence to Reuse |
|------------------|-----------------------------------------------|------------|-----------------------------|
| Cybersecurity Plan | ID.GV-1/2 (policies, roles), ID.RA-1/3 (risk), PR.IP-1/3/8 (policies, configuration, change) | Must integrate with Facility Security Plan; cover maritime/OT scope; Coast Guard submission | 4.3 Scope; 5.2 Policy; 6.1.2/6.1.3 Risk; 8.1 Ops control; SoA entries |
| CySO Role | ID.GV-2 (roles), ID.AM-6 (roles for assets), ID.RM-1 (risk roles) | Formal CySO designation/authority; coordinate with FSO/USCG; documented responsibilities | 5.1 Leadership; 5.3 Roles; 7.2 Competence |
| Training | PR.AT-1/2/3/4 (awareness, role-based, third parties) | Annual MTSA + OT + NRC awareness; role-based content | 7.2/7.3; Annex A.7.2.x |
| Assessment | ID.RA-1/2/3/6 (risk & vuln), ID.AM-1/2/3 (assets), DE.CM-8 (vuln monitoring) | Critical assets, maritime threats, TSI, annual cadence; include OT | 6.1.2/6.1.3; A.8.x asset mgmt; A.12.6.1 vuln mgmt |
| Drills & Exercises | RS.CO-1/2/3 (comms), RS.IM-1/2 (improvements), RS.MI-1 (lessons learned) | 2 drills + 1 exercise/year; maritime/OT scenarios; AARs captured | A.5.26/5.27; A.17.x continuity/testing |
| Incident Reporting (NRC) | RS.CO-1/2/3 (reporting/coordination), RS.AN-1/2 (analysis), RS.MI-1 (improvements) | Immediate NRC notification; Coast Guard coordination; tested playbooks | A.5.26/5.27; 6.1.3 contact with authorities |
| Technical Measures | PR.AC-1/3/4/5/6; PR.DS-1/2/5/6/7; PR.IP-1/3/4/12; PR.MA-1/2; DE.CM-1/4/7/8 | IT/OT segmentation, authN/Z, backups/DR, vuln mgmt, monitoring | Annex A.5, A.8, A.9, A.12, A.13, A.17 |
| Recordkeeping | ID.GV-3 (reg obligations), PR.IP-4/5 (backups/change), RS.IM-1/2 (IR records), RC.CO-1 (recovery comms) | Training logs, drills/exercises evidence, incident records with NRC reporting, assessment history | 7.5 documented info; 9.1/9.2/9.3; A.12.4.x logging |

> CSF v2.0 note: The new **Govern (GV)** function subsumes ID.GV concepts. Map ID.GV-* items above to GV.* categories in v2.0; other categories largely retain ID/PR/DE/RS/RC identifiers with minor wording updates. Adjust labels if your organization has formally adopted v2.0 terminology.

---

## Deliverables Checklist

- MTSA↔CSF crosswalk table (this doc) stored in `implementation/strategies/`.
- References to ISO 27001 controls and evidence locations (SoA, policies, playbooks).
- Coast Guard submission pack: include this crosswalk as optional appendix for CSF-oriented reviewers.
- Links from `MASTER_INDEX.md` and `QUICK_REFERENCE.md` once published.

---

## Maintenance

- Review after significant MTSA rule updates, CSF version changes, or OT scope changes.
- If using CSF v2.0, include a short appendix translating ID.GV → GV.* labels and any Category wording changes your org adopts.
