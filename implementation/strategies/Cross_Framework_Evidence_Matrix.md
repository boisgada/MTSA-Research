# Cross-Framework Evidence Matrix (MTSA-centric)

## Purpose

Help teams reuse evidence across MTSA, ISO 27001, NIST CSF, IEC 62443, CIS Controls, and NIST SP 800-82. Use this as a quick index of what evidence to present and where it maps across frameworks.

---

## How to Use

1) Start with the MTSA requirement/evidence you need.  
2) Find corresponding artifacts you likely already have from other frameworks.  
3) Attach the same evidence to MTSA submissions (e.g., Coast Guard pack) with minimal rework.

---

## Evidence Matrix (representative)

| Evidence Item | MTSA Focus | ISO 27001 | NIST CSF | IEC 62443 | CIS v8 | SP 800-82 |
|---------------|-----------|-----------|----------|-----------|--------|-----------|
| Cybersecurity Plan (with maritime/OT scope) | Cyber Plan | 4.3, 5.2, 6.1.2/6.1.3, 8.1 | ID.GV, ID.RA, PR.IP | 2-1 SR 4, SR 7 | 16, 17 | Program/policy sections |
| Scope/SoA including OT | Technical measures, scope | SoA, 4.3 | ID.AM, PR.IP | Zones/SL-T baseline | 1/2, 4/5/6 | Asset/zone inventory |
| Critical asset register | Assessment | 6.1.2, A.8.x | ID.AM, ID.RA | SR 2 (RA), zones | 1, 2 | Asset inventory |
| Risk assessment (incl. maritime/TSI) | Assessment | 6.1.2/6.1.3 | ID.RA | SR 2; SL-T inputs | 6/7 | Threat/vuln analysis |
| OT network diagram (zones/conduits) | Network segmentation | — | PR.AC/PR.PT (context) | RA (Restricted Data Flow) | 12/13 | Architecture/segmentation |
| NRC/USCG IR playbook + contacts | Incident reporting | A.5.26/5.27, 6.1.3 | RS.CO, RS.AN | SR 3; SI.6 (logging) | 17 | IR comms/forensics |
| OT/IT access review (privileged) | Account security | A.9.x | PR.AC | IAC/UC | 4/5/6 | Access control practices |
| OT patch/vuln report (with compensating controls) | Device security | A.12.6.1 | PR.IP/DE.CM | SI; compensating vs SL-T | 7, 10 | Patching guidance |
| Backup/restore test results (IT/OT) | Resilience | A.12.3, A.17.x | PR.IP, RC.* | RE | 11 | BC/DR for ICS |
| Drill/exercise AARs (incl. OT scenarios) | Drills & exercises | — | RS.IM | SR 7.6 | 17/18 | IR/BC/DR testing |
| Training records (MTSA/OT/NRC) | Training | 7.2/7.3 | PR.AT | SR 6 | 14 | ICS awareness |
| Logging/monitoring coverage (OT included) | Recordkeeping/monitoring | A.12.4.x | DE.CM | TH, DM, SI.6 | 8, 13 | Detection/logging |
| Change records (config/OT) | Recordkeeping | 7.5, 8.1 | PR.IP | SI.6 | 11, 12 | Change control |

> Tip: Keep a single evidence folder with subfolders for Plan, Assessment, IR, Drills, Access, Patching, Backups, Training, Logging. Reuse across submissions.

---

## Maintenance

- Update matrix when major framework versions change or MTSA rules update.
- Keep links from this matrix to actual evidence locations (SoA, runbooks, AARs, inventories).
- Include in Coast Guard evidence pack as an optional appendix for faster review.
