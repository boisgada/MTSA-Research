# Template Governance Spec

## Purpose

Define a deterministic ownership model for template alignment so process-critical files stay in parity while project-specific content remains protected.

This spec is designed to be copied into the template repository and referenced by alignment workflows.

---

## Goals

- Prevent partial template alignment.
- Distinguish what must sync vs what may diverge.
- Make alignment outcomes machine-checkable.
- Preserve project-owned operational content by default.

---

## Ownership Model

Use one `owner_mode` per governed file:

1. **`template-controlled`**
   - Template is source of truth.
   - Local file should be replaced/synced on alignment.
   - Drift is treated as alignment failure unless explicitly waived.

2. **`merge-controlled`**
   - Template provides required base sections.
   - Project may add override sections.
   - Alignment merges template sections and preserves project overrides.

3. **`project-controlled`**
   - File is project-owned.
   - Never overwritten by template alignment.
   - Only referenced for context/validation.

---

## Required Frontmatter Schema

Add this YAML block to template-governed markdown docs:

```yaml
---
owner_mode: template-controlled
parity_required: true
alignment_scope: process
template_version: "v1"
review_cadence: "monthly"
---
```

### Field Definitions

- `owner_mode`: `template-controlled | merge-controlled | project-controlled`
- `parity_required`: `true | false`
- `alignment_scope`: suggested values: `process | workflow | docs | setup | optional`
- `template_version`: version label or release tag
- `review_cadence`: suggested values: `monthly | quarterly | ad-hoc`

---

## Section Marker Convention (Merge-Controlled Files)

For `merge-controlled` files, enforce explicit block markers:

```markdown
<!-- TEMPLATE-SECTION:START name=closeout-core -->
... template-maintained content ...
<!-- TEMPLATE-SECTION:END name=closeout-core -->

<!-- PROJECT-OVERRIDE:START name=grc-requirements -->
... project-maintained content ...
<!-- PROJECT-OVERRIDE:END name=grc-requirements -->
```

### Rules

- Template sections may be replaced wholesale during alignment.
- Project override sections must be preserved unless user explicitly approves replacement.
- Missing required template sections are alignment failures.

---

## Alignment Parity Gates

Define a mandatory parity gate set in the template:

- `ai-collaboration/session-startup-guidelines.md`
- `ai-collaboration/session-closeout-guidelines.md`
- `ai-collaboration/rules-of-engagement.md`
- `ai-collaboration/queue-system-guide.md`
- `documentation/project-alignment-workflow.md`
- `scripts/setup-project.sh`

Any unresolved drift in this set => alignment status = **incomplete**.

---

## Deterministic Alignment Procedure

1. Refresh template submodule/copy to latest intended upstream.
2. Build manifests for scoped paths:
   - `template_only`
   - `local_only`
   - `common_drift`
3. Apply ownership policy:
   - `template-controlled`: sync
   - `merge-controlled`: merge by markers
   - `project-controlled`: protect
4. Evaluate parity gates (must pass).
5. Run stale-reference sweep across governed folders.
6. Produce alignment verification report with pass/fail.

---

## Verification Report Contract

Every alignment run must generate:

- date/time and template commit SHA
- scope paths
- parity gate result (pass/fail)
- unresolved items with exact paths
- intentional deviations with rationale and owner

Recommended filename:

- `documentation/template-alignment-verification-YYYY-MM-DD.md`

---

## Suggested Template Files To Add

In the template repository:

1. `documentation/template-governance-spec.md` (this document)
2. `documentation/template-alignment-checklist.md` (execution checklist)
3. `documentation/template-deviations-register-template.md` (standard deviation log format)

---

## Deviation Register Format

Track intentional non-parity in each project using a single register:

| Path | Owner Mode | Deviation Type | Rationale | Approved By | Review Date |
| ---- | ---------- | -------------- | --------- | ----------- | ----------- |
| `ai-collaboration/rules-of-engagement.md` | merge-controlled | project override | regulatory citation requirements | Project Owner | 2026-06-30 |

---

## Implementation Notes

- Start by applying this model only to process/workflow files.
- Expand to optional docs later after proving stability.
- Keep `project-controlled` list conservative to avoid accidental overwrite.

---

Template Governance Spec - Ready for template workspace adoption.
