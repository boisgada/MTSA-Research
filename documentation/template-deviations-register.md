<!-- markdownlint-disable MD060 -->

# Template Deviations Register (Template)

## Purpose

Track intentional non-parity between a project and the AI Assistance Template.

This register is the canonical record of approved deviations and review cadence.

---

## Instructions

1. Add one row per deviation.
2. Keep paths exact and repository-relative.
3. Use one of the supported owner modes:
   - `template-controlled`
   - `merge-controlled`
   - `project-controlled`
4. Set a concrete review date for every active deviation.
5. Remove rows when deviations are resolved and alignment is restored.

---

## Deviation Entries

| ID | Path | Owner Mode | Deviation Type | Description | Rationale | Risk Level | Approved By | Approval Date | Review Date | Status |
|----|------|------------|----------------|-------------|-----------|------------|-------------|---------------|-------------|--------|
| DEV-### | `path/to/file` | `template-controlled \| merge-controlled \| project-controlled` | `project override` | Describe the approved non-parity | Why this deviation is currently required | Low/Medium/High/Critical | Name/Role | YYYY-MM-DD | YYYY-MM-DD | Active |

Status values:

- `Active`
- `Expired`
- `Resolved`
- `Rejected`

---

## Deviation Type Guidance

- `project override`: project-specific section retained in merge-controlled file
- `deliberate drift`: known mismatch accepted temporarily
- `temporary workaround`: short-term exception pending fix
- `scope exclusion`: file/folder intentionally out of alignment scope
- `tooling constraint`: mismatch caused by environment/tool limitations

---

## Risk Guidance

- **Low**: cosmetic or informational drift, minimal process impact
- **Medium**: process drift with manageable operational impact
- **High**: affects startup/closeout/rules/setup behavior or governance controls
- **Critical**: can cause unsafe automation, compliance risk, or repeated alignment failure

---

## Review Workflow

- Weekly/Monthly review (as defined by project governance)
- At each review:
  - confirm deviation still needed
  - reassess risk
  - update target resolution and review date
  - close deviations that are no longer justified

---

## Summary Snapshot

- Total active deviations:
- High/Critical active deviations:
- Next review date:
- Owner:

---

Template Deviations Register - Governance workflow companion.
