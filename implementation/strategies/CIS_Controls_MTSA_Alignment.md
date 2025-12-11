# CIS Controls v8 to MTSA Alignment Brief

## Purpose

Provide a concise “controls-first” view that maps MTSA requirements to CIS Controls v8 Safeguards. Use when stakeholders prefer CIS terminology or when demonstrating overlap across MTSA, CIS, and existing ISO/NIST artifacts.

Companion documents:

- `ISO_27001_MTSA_Alignment_Guide.md` (program baseline)
- `NIST_CSF_MTSA_Alignment.md` (framework lens)
- `IEC_62443_MTSA_Alignment.md` (OT/ICS emphasis)

---

## Quick Mapping Summary (MTSA ↔ CIS v8)

| MTSA Requirement | CIS Controls (primary) | Notes |
|------------------|------------------------|-------|
| Cybersecurity Plan | 2 (Inventory), 4 (Admin Privileges), 5 (Account Mgmt), 16 (App Sec Policies), 17 (Incident Response), 18 (Pen/Red Team) | Use CIS governance artifacts to support MTSA plan sections |
| CySO Role | 17 (IR roles), 4/5 (privileged oversight) | Ensure authority over privileged access and IR actions |
| Training | 14 (Security Awareness & Skills) | Include MTSA/OT/NRC content and drills |
| Assessment | 6 (Access Control), 7 (Continuous Vulnerability Mgmt), 8 (Audit Log Mgmt), 15 (Service Provider Mgmt) | Annual risk/TSI focus; include OT assets |
| Drills & Exercises | 17 (IR Management), 18 (Red Team/Pen Test) | Two drills + one exercise/year; include OT scenarios |
| Incident Reporting (NRC) | 17 (IR Communications/Reporting) | Add NRC/USCG notification paths to IR plan/runbooks |
| Technical Measures | 1–13 (Foundational/Enterprise controls) | Apply to IT/OT; emphasize network segmentation, malware protection, backup/DR |
| Recordkeeping | 8 (Audit Logs), 11 (Data Recovery), 14 (Training records), 17 (IR records) | Maintain MTSA evidence set with timestamps/retention |

---

## Detailed Alignment Highlights

### MTSA ↔ CIS Controls v8 Table (selected safeguards)

| MTSA Area | CIS Control | MTSA-specific actions |
|-----------|-------------|-----------------------|
| Plan / Governance | 2 (Inventory), 16 (Policies), 17 (IR Plan), 18 (Testing) | Reference CIS inventories/policies in MTSA plan; add maritime/TSI and Coast Guard submission |
| Roles / CySO | 4/5 (Privileged/Account), 17 (IR roles) | CySO authority over privileged access, OT changes, incident decisions |
| Training | 14 (Security Awareness & Skills) | MTSA/NRC content, OT/operator drills, role-based modules |
| Assessment | 6 (Access Control), 7 (Vuln Mgmt), 8 (Audit Logs), 15 (Service Providers) | Annual MTSA assessment with OT assets, supplier exposure, TSI focus |
| Drills/Exercises | 17 (IR testing/tabletops), 18 (Red Team/Pen Test) | Two drills + one exercise; include OT segmentation/bypass scenarios; capture AARs |
| Incident Reporting | 17 (IR comms/reporting) | Add NRC/USCG notification paths; test comms matrix |
| Technical Measures | 1/2 (Asset/Software), 4/5/6 (Access), 7 (Vuln), 8 (Logs), 10 (Malware), 11 (Recovery), 12/13 (Network) | Apply to IT/OT; document MTSA scope coverage; emphasize segmentation, backups, monitoring |
| Recordkeeping | 8 (Logs), 11 (Backups), 14 (Training records), 17 (IR records) | Maintain MTSA evidence with timestamps, retention, and traceability to drills/assessments |

### Cybersecurity Plan

- **CIS anchors**: 2 (Inventory), 4/5 (Privileged/Account), 16 (Policies), 17 (IR), 18 (Testing)
- **Action**: Reference CIS artifacts (inventories, policies, IR plan) in MTSA plan; extend with maritime/OT specifics and Coast Guard submission needs.

### CySO Role

- **CIS anchors**: 4/5 (privileged oversight), 17 (IR roles/responsibilities)
- **Action**: Document CySO authority over privileged access, OT changes, and incident decisions.

### Training

- **CIS anchors**: 14 (Security Awareness & Skills)
- **Action**: Add MTSA/NRC procedures, OT scenarios, and role-based drills; track completion.

### Assessment

- **CIS anchors**: 6 (Access Control), 7 (Vuln Mgmt), 8 (Audit Logs), 15 (Service Providers)
- **Action**: Annual MTSA assessment includes OT assets, maritime threats, supplier exposure, and TSI considerations; log findings and remediation.

### Drills and Exercises

- **CIS anchors**: 17 (IR testing/tabletops), 18 (Red team/penetration testing)
- **Action**: Meet MTSA cadence (2 drills + 1 exercise); include OT segmentation/bypass attempts; capture AARs.

### Incident Reporting (NRC)

- **CIS anchors**: 17 (IR comms/coordination)
- **Action**: Add NRC contact/escalation to IR communications matrix; test notification pathways.

### Technical Measures (selected)

- **Inventory/Control**: 1 (Enterprise Assets), 2 (Software Assets) — baseline for MTSA critical assets.
- **Access**: 4 (Admin Privileges), 5 (Account Mgmt), 6 (Access Control) — strong tie to MTSA account/device controls.
- **Logging/Monitoring**: 8 (Audit Log Mgmt) — MTSA recordkeeping and incident reconstruction.
- **Malware/Vuln/Patch**: 10 (Malware Defenses), 7 (Vuln Mgmt) — OT coverage emphasized.
- **Data Protection/Backup**: 11 (Data Recovery), 3 (Data Protection) — aligns with MTSA data security/resilience.
- **Network Security**: 12 (Network Infrastructure Mgmt), 13 (Network Monitoring/Defense) — maps to MTSA network segmentation and monitoring.

### Recordkeeping

- **CIS anchors**: 8 (Logs), 11 (Backups/Recovery), 14 (Training records), 17 (IR documentation)
- **Action**: Retain MTSA evidence (training, drills, incidents, assessments) with timestamps and retention consistent with MTSA expectations.

---

## Deliverables Checklist

- MTSA plan references to CIS inventories, policies, IR plan, and testing cadence.
- OT-inclusive asset and software inventories (Controls 1 & 2) marking MTSA critical assets.
- Privileged access reviews and RBAC evidence (Controls 4, 5, 6).
- Vulnerability and patch reports covering IT/OT (Control 7) and malware defenses (Control 10).
- Logging/monitoring coverage for MTSA scope (Control 8; 12/13 for network).
- Drill/exercise AARs and IR comms matrix with NRC contacts (Control 17).
- Backup/recovery validation (Control 11) for critical OT/IT systems.

---

## Maintenance

- Align MTSA drill cadence with Control 17 testing cycles; feed AARs into remediation.
- Refresh inventories (Controls 1 & 2) and access reviews (4/5/6) on the MTSA assessment schedule.
- Ensure suppliers/third parties (Control 15) are covered where they affect MTSA-relevant systems.
