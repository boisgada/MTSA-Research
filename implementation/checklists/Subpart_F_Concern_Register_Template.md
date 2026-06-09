# Subpart F Concern Register (Template)

Generic template for tracking **open regulatory interpretation questions** pending Coast Guard or counsel confirmation. Mirror structure of a local **CFR33 Concerns** workbook; keep **facility-specific** populated registers **out of git**.

---

## How to Use

1. Copy this table into a spreadsheet or document management tool.
2. One row per open question or interpretation gap.
3. Update **Status** as guidance arrives; migrate **resolved, generic** conclusions into repository markdown.
4. Do **not** include organization names, site names, or privileged paths in shared copies.

---

## Concern Register

| ID | Topic | CFR / guidance cite | Question | Status | Notes (generic only) |
|----|-------|---------------------|----------|--------|----------------------|
| C-001 | *Example: Cyber facility scope* | 33 CFR 101.605; NVIC 02-24 CH 1 | Does TWIC-only physical boundary align with Subpart F IT/OT scope for our segmentation model? | Open | Requires COTP/counsel |
| C-002 | *Example: RCI PII threshold* | 101.620; NVIC Enclosure (1) | What constitutes a "significant number of individuals" for nonpublic PII disclosure? | Open | Rule undefined; federal analogies not USCG policy |
| C-003 | | | | | |

**Status values (suggested):** Open | Pending CG | Pending counsel | Resolved (document in repo) | Closed (not applicable)

---

## Related Documents

- `assets/spreadsheets/README.md` — local workbook types (not in git)
- `research/incident-response/NRC_Incident_Response_Integration.md` — Appendix: reportable cyber incident decision examples
- `research/critical-assets/MTSA_Critical_Assets_Research.md` — FSP boundary vs TWIC-only scoping
- `implementation/guides/MTSA_Cyber_Requirements_Complete_Implementation_Guide.md` — incident reporting (§8.3)

---

*Template for MTSA Subpart F compliance support — populate locally; do not commit privileged content.*
