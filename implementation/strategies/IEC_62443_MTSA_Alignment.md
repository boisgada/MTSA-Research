# IEC 62443 to MTSA Alignment Brief

## Purpose

Show how MTSA cybersecurity requirements map to IEC 62443 (with emphasis on 62443-2-1 programmatic requirements and 62443-3-3 system security requirements). Focus is on OT/ICS environments in MTSA-regulated facilities.

Use alongside:

- `ISO_27001_MTSA_Alignment_Guide.md` (program governance)
- `NIST_CSF_MTSA_Alignment.md` (CSF lens)

---

## Quick Mapping Summary (MTSA ↔ IEC 62443)

| MTSA Requirement | IEC 62443 Anchor | Notes |
|------------------|------------------|-------|
| Cybersecurity Plan | 62443-2-1: SR 4 (Policies/Procedures), SR 7 (Continuous improvement) | Treat MTSA plan as the CSMS; integrate with Facility Security Plan |
| CySO Role | 62443-2-1: SR 1.1 (Organization/roles) | CySO parallels CSMS role owners |
| Training | 62443-2-1: SR 6 (Awareness/Training) | Include OT/operator scenarios and MTSA/NRC |
| Assessment | 62443-2-1: SR 2 (Risk Assessment) | Zones/conduits, SL-Ts, maritime threats, critical assets |
| Drills/Exercises | 62443-2-1: SR 7.6 (Test/Review) | Include OT runbooks; AARs feed SL-T improvements |
| Incident Reporting (NRC) | 62443-2-1: SR 3 (Incident Management) | Add NRC/USCG notification to IR playbooks |
| Technical Measures | 62443-3-3: SR families (IAC, UC, SI, DC, RA, RE, TH, DM) | Map to OT controls per zone/conduit and SL-T |
| Recordkeeping | 62443-2-1: SR 5 (Documentation), 62443-3-3: SI.6 (Logging) | Keep MTSA evidence tied to zones/conduits and SL-Ts |

---

## Zones, Conduits, and Security Levels (SL-T)

- **Zones/Conduits**: Align MTSA critical assets into ICS zones; identify conduits carrying inter-zone traffic. Capture this in network diagrams and MTSA plan appendices.
- **SL-T (Target Security Levels)**: Set SL-T per zone (typ. SL 2–3 for OT operations; SL 4 for highly critical safety functions). Ensure MTSA technical measures meet or exceed SL-T.
- **Evidence**: Keep SL-T rationale, compensating controls, and residual risk documented; reference in MTSA plan and Coast Guard evidence pack.

---

## Detailed Alignment Highlights

### MTSA ↔ IEC 62443 Alignment Table (selected SRs)

| MTSA Area | 62443-2-1 SR | 62443-3-3 SR family | MTSA-specific actions |
|-----------|---------------|---------------------|-----------------------|
| Plan / Governance | SR 4 (Policies), SR 7 (CI) | — | Use CSMS as MTSA plan base; add maritime/TSI and Coast Guard submission steps |
| Roles / CySO | SR 1.1 (Org/Roles) | — | Formal CySO authority over OT changes, IR; align with CSMS accountable roles |
| Training | SR 6 (Awareness/Training) | — | Include OT ops, MTSA/NRC procedures, zone handling |
| Assessment | SR 2 (Risk Assessment) | — | Zones/conduits, SL-Ts, maritime threats, critical assets; annual cadence |
| IR / Reporting | SR 3 (Incident Mgmt) | SI.6 (Logging) | Add NRC/USCG notification; ensure OT log/forensic coverage |
| Drills/Exercises | SR 7.6 (Test/Review) | — | Two drills + one exercise; include OT scenarios; AARs feed SL-T updates |
| Access / AuthN | — | IAC (Identification & Authentication Control) | Strong authN for users/devices; include OT accounts and shared creds control |
| Privilege / Use | — | UC (Use Control) | Enforce least privilege/RBAC for OT; session timeouts; remote access controls |
| System Integrity | — | SI (System Integrity) | Patch/vuln mgmt for OT, malware protection, integrity checks |
| Data Confidentiality | — | DC (Data Confidentiality) | Encrypt conduits where feasible; protect data at rest for critical assets |
| Network Segmentation | — | RA (Restricted Data Flow) | Define/enforce zones/conduits; firewall/ACLs; unidirectional gateways where needed |
| Resilience / DR | — | RE (Resource Availability) | Backup/DR for OT; failover where feasible; spares strategy |
| Monitoring / Events | — | TH (Timely Response), DM (Data/Info Mgmt) | OT-aware monitoring, time sync, incident telemetry; log retention meets MTSA |
| Recordkeeping | SR 5 (Documentation) | SI.6 (Logging) | Keep MTSA evidence with zone/conduit context; retain AARs, training, IR records |

### Cybersecurity Plan (MTSA)

- **IEC 62443**: 2-1 SR 4 (Policies/Procedures), SR 7 (Continuous improvement)
- **Action**: Use CSMS artifacts as MTSA plan backbone; add maritime/TSI context and Coast Guard submission requirements.

### CySO Role

- **IEC 62443**: 2-1 SR 1.1 (Roles/responsibilities)
- **Action**: Map CySO to CSMS accountable role; ensure authority over OT changes and incident response.

### Training

- **IEC 62443**: 2-1 SR 6 (Training/awareness)
- **Action**: Add OT procedures, MTSA/NRC reporting, and zone/conduit handling to curricula.

### Assessment

- **IEC 62443**: 2-1 SR 2 (Risk Assessment), zone/conduit modeling, SL-T definition
- **Action**: Identify critical assets by zone, assess maritime/TSI threats, validate SL-T vs. required protections.

### Drills and Exercises

- **IEC 62443**: 2-1 SR 7.6 (Testing/review)
- **Action**: Include OT incident drills; test containment within zones; record AARs and SL-T adjustments.

### Incident Reporting (NRC)

- **IEC 62443**: 2-1 SR 3 (Incident management)
- **Action**: Add NRC/USCG notification to IR SOPs; ensure logging/forensics cover OT events (3-3 SI.6).

### Technical Measures (selected 62443-3-3 SR families)

- **IAC (Identification & Authentication Control)**: AuthN for users/accounts/devices (align with MTSA account security).
- **UC (Use Control)**: Least privilege, session control (align with privileged access and RBAC for OT).
- **SI (System Integrity)**: Patch mgmt, malware protection, integrity checks (MTSA device/data security).
- **DC (Data Confidentiality)**: Encryption where feasible for conduits and data at rest (MTSA data security).
- **RA (Restricted Data Flow)**: Network segmentation, zones/conduits, traffic enforcement (MTSA network segmentation).
- **RE (Resource Availability)**: Backup/DR, redundancy (MTSA resilience).
- **TH (Timely Response to Events)**: Alerting/monitoring tied to OT events (MTSA monitoring).
- **DM (Data/Information Management)**: Logging, auditability (MTSA recordkeeping).

### Recordkeeping

- **IEC 62443**: 2-1 SR 5 (Documentation) and 3-3 SI.6 (Audit/logging)
- **Action**: Maintain MTSA-required records (training, drills, incidents, assessments) with zone/conduit context where applicable.

---

## Deliverables Checklist

- Zone/conduit diagram annotated with critical assets and SL-Ts.
- MTSA plan section referencing CSMS/62443 controls; call out maritime/OT extensions.
- OT runbooks/playbooks with NRC/USCG notification paths.
- Evidence pack: SL-T rationale, recent OT patch/vuln reports, access reviews, logging/monitoring coverage, drill AARs.

---

## Maintenance

- Revisit SL-Ts after major changes, incidents, or annual MTSA assessments.
- Update zone/conduit diagrams with any network or asset changes.
- Keep IR/training materials aligned to MTSA/NRC procedures and 62443 roles.
