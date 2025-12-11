# NIST SP 800-82 to MTSA Alignment Brief

## Purpose

Provide a concise mapping between MTSA requirements and key practices from NIST SP 800-82 (Guide to Industrial Control Systems Security), focusing on OT/ICS in MTSA-regulated facilities.

Companion documents:

- `IEC_62443_MTSA_Alignment.md` (OT/ICS controls and SL-Ts)
- `NIST_CSF_MTSA_Alignment.md` (framework lens)
- `ISO_27001_MTSA_Alignment_Guide.md` (governance baseline)

---

## Table of Contents

1. [Quick Mapping Summary](#quick-mapping-summary-mtsa--sp-800-82)
2. [Alignment Details](#mtsa--sp-800-82-alignment-details-selected)
3. [Deliverables Checklist](#deliverables-checklist)
4. [Maintenance](#maintenance)

---

## Quick Mapping Summary (MTSA ↔ SP 800-82)

| MTSA Requirement | SP 800-82 Focus Areas | Notes |
|------------------|-----------------------|-------|
| Cybersecurity Plan | ICS security program, policies, architecture (zones/conduits) | Use ICS security program artifacts as MTSA plan backbone; add maritime/TSI context |
| CySO Role | Governance and roles for ICS security | CySO to own ICS security coordination and MTSA evidence |
| Training | ICS-specific awareness, incident playbooks | Include OT operators, vendors, and NRC/USCG notification awareness |
| Assessment | ICS risk assessment, asset inventory, threat/vuln mgmt | Annual MTSA assessment should include OT assets, maritime threats, and TSI |
| Drills & Exercises | ICS incident/BC/DR testing | Test OT scenarios; ensure containment and recovery within zones |
| Incident Reporting (NRC) | Incident response for ICS (detection, comms, forensics) | Add NRC/USCG reporting to ICS IR/SOC processes |
| Technical Measures | Network segmentation, access control, patching, malware defense, monitoring/logging | Apply to OT networks/devices; align with MTSA technical measures |
| Recordkeeping | Logging, forensics readiness, change records | Retain MTSA evidence with OT logs and change control records |

---

## MTSA ↔ SP 800-82 Alignment Details (selected)

### Plan / Governance

- **SP 800-82**: ICS security program, policies, architecture, zones/conduits.
- **MTSA actions**: Reference ICS security program in the Cybersecurity Plan; document maritime/TSI context and Coast Guard submission requirements.

### CySO Role

- **SP 800-82**: Governance with ICS-specific responsibilities.
- **MTSA actions**: CySO owns ICS coordination, OT change approvals, and MTSA evidence chain for OT incidents.

### Training

- **SP 800-82**: ICS awareness, incident handling, vendor/remote access hygiene.
- **MTSA actions**: Include OT operator/vendor content, NRC/USCG reporting awareness, and zone/conduit handling in drills.

### Assessment

- **SP 800-82**: Asset inventory, threat/vuln analysis, risk assessment.
- **MTSA actions**: Annual MTSA assessment includes OT assets, maritime threat scenarios, TSI impacts, and validates segmentation/compensating controls.

### Drills and Exercises

- **SP 800-82**: Testing incident response and recovery in ICS environments.
- **MTSA actions**: Two drills + one exercise; include OT isolation/containment, failover, and restoration within SL-T expectations (if using 62443).

### Incident Reporting (NRC)

- **SP 800-82**: Incident handling, communication, and forensic readiness.
- **MTSA actions**: Add NRC/USCG notification steps to IR/SOC runbooks; ensure OT logging and time sync support rapid reporting.

### Technical Measures (illustrative tie-ins)

- **Network segmentation**: Align SP 800-82 segmentation guidance with MTSA network segmentation; keep OT/IT boundaries defined.
- **Access control**: Enforce least privilege and strong auth on OT assets; control remote/vendor access.
- **Patch/vuln management**: OT-aware patching windows; documented risk acceptance when patching is infeasible; compensating controls.
- **Malware defense**: OT-suitable antimalware/allowlisting where feasible.
- **Monitoring/logging**: OT-aware detection; centralized log retention to support MTSA recordkeeping and NRC reporting.
- **Backup/restore**: Test restoration of OT configurations and critical assets; align with MTSA resilience requirements.

### Recordkeeping

- **SP 800-82**: Logging, change control, incident documentation.
- **MTSA actions**: Retain MTSA evidence (training, drills, incidents, assessments) with OT logs, changes, and recovery artifacts.

---

## Deliverables Checklist

- ICS/OT network zoning diagram with MTSA critical assets highlighted.
- OT-inclusive asset inventory and risk assessment outputs used in MTSA assessment.
- IR/SOC runbooks updated with NRC/USCG notification steps for OT incidents.
- Evidence pack: OT logging/monitoring coverage, patch/vuln reports with compensating controls, backup/restore tests, drill/exercise AARs for OT scenarios.

---

## Maintenance

- Refresh OT asset inventory and threat/vuln analysis on the MTSA assessment cadence.
- Re-test OT restoration, segmentation, and logging after major changes.
- Keep IR/training materials current with NRC/USCG reporting procedures and any Coast Guard feedback.
