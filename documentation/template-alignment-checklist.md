# Template Alignment Checklist

## Purpose

Operational checklist for deterministic template alignment using the governance model defined in `documentation/template-governance-spec.md`.

Use this checklist during every alignment run.

---

## Run Metadata

- Alignment date:
- Operator:
- Target project:
- Template source path:
- Template commit SHA:
- Scope paths:

---

## Phase 1 - Baseline Refresh

- [ ] Refresh template to latest intended upstream state.
- [ ] Verify template branch/tag/commit to align against.
- [ ] Confirm no stale local template copy is being used.
- [ ] Record template commit SHA in run metadata.

---

## Phase 2 - Scope and Inventory

- [ ] Confirm in-scope folders/files for this run.
- [ ] Generate `template_only` list (exists in template, missing in project).
- [ ] Generate `local_only` list (exists in project, missing in template).
- [ ] Generate `common_drift` list (exists in both, content drifted).
- [ ] Classify each item by `owner_mode`.

---

## Phase 3 - Ownership-Driven Actions

### Template-Controlled

- [ ] Sync/replace all `template-controlled` files.
- [ ] If any replacement is blocked, record as unresolved parity item.

### Merge-Controlled

- [ ] Verify required `TEMPLATE-SECTION` blocks exist.
- [ ] Merge template sections into project files.
- [ ] Preserve `PROJECT-OVERRIDE` blocks unless explicitly approved to replace.
- [ ] Verify no required template section is missing after merge.

### Project-Controlled

- [ ] Confirm no `project-controlled` file was overwritten.
- [ ] Record any exceptions in deviations register.

---

## Phase 4 - Parity Gates (Must Pass)

Validate all mandatory parity files:

- [ ] `ai-collaboration/session-startup-guidelines.md`
- [ ] `ai-collaboration/session-closeout-guidelines.md`
- [ ] `ai-collaboration/rules-of-engagement.md`
- [ ] `ai-collaboration/queue-system-guide.md`
- [ ] `documentation/project-alignment-workflow.md`
- [ ] `scripts/setup-project.sh`

Gate rule:

- [ ] No unresolved drift in parity gate set.
- [ ] If unresolved: mark alignment **incomplete**.

---

## Phase 5 - Reference and Consistency Sweep

- [ ] Run stale-reference search for old paths/names.
- [ ] Update README/index files affected by moved/added files.
- [ ] Verify queue docs and archive references are internally consistent.
- [ ] Verify submodule/process references still reflect current workflow.

---

## Phase 6 - Validation

- [ ] Run lints on changed markdown files.
- [ ] Run syntax checks for changed scripts (where applicable).
- [ ] Check repository status for unintended changes.
- [ ] Confirm no unexpected destructive changes occurred.

---

## Phase 7 - Reporting and Handoff

- [ ] Create/update alignment verification report.
- [ ] Record pass/fail status for parity gates.
- [ ] Record intentional deviations with rationale.
- [ ] List unresolved items with exact paths.
- [ ] Provide next actions if status is incomplete.

Recommended artifact:

- `documentation/template-alignment-verification-YYYY-MM-DD.md`

---

## Completion Decision

- [ ] **PASS**: Alignment complete (all parity gates pass; unresolved list empty or only approved deviations).
- [ ] **FAIL**: Alignment incomplete (one or more parity gates unresolved).

Decision notes:

- Status:
- Approved by:
- Follow-up required:

---

Template Alignment Checklist - Governance workflow companion.
