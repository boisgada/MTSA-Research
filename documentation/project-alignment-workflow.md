# Project Alignment Workflow

## Purpose

This guide describes a reusable process for aligning an existing repository to the AI Assistance Template. Use it when a project already exists and you want to bring its folder structure, collaboration files, and file locations into near-parity with the template without disrupting project-specific content.

---

## When To Use This Workflow

Use this workflow when:

- a project started before adopting this template,
- the template has been updated and an existing project needs to catch up,
- a repository already has partial template alignment and needs cleanup,
- documentation and file locations have drifted from the template structure.

Do not use this workflow for brand-new projects copied directly from the template. In that case, follow the normal customization steps in `README.md`.

---

## Core Principles

1. Treat alignment as a migration, not a copy operation.
2. Refresh the local template copy to the latest upstream state before comparing anything.
3. Use the refreshed local template as the source of truth when available.
4. Preserve project-specific domain folders unless restructuring is explicitly requested.
5. Ask before making high-risk location changes.
6. Adapt template guidance to the project type instead of blindly copying app-development assumptions.
7. Reconcile documentation after structural changes, not before.
8. Always run a stale-reference sweep at the end.
9. Use explicit ownership (`template-controlled`, `merge-controlled`, `project-controlled`) for deterministic decisions.

---

## Governance Companion Documents

Use these documents together for governed alignment runs:

- `documentation/template-governance-spec.md` for ownership model, parity gates, and report contract
- `documentation/template-alignment-checklist.md` for execution and pass/fail gates
- `documentation/template-deviations-register-template.md` as the base format for approved non-parity tracking

Recommended project artifact:

- `documentation/template-deviations-register.md` (created from the template file above)

---

## Recommended Workflow

### 1. Refresh The Local Template First

Before comparing or editing anything:

- fetch the latest upstream template changes,
- update the local template branch or checkout to the version you intend to align against,
- resolve any template-side merge or rebase work first,
- confirm you are not using a stale local template copy.

If the template is available as a submodule or local working copy, refresh that copy before using it as the baseline. Do not align against an outdated checkout just because it is already present locally.

### 2. Perform A Read-Only Comparison

Before editing anything:

- inspect the current repository structure,
- inspect the refreshed template structure,
- identify whether the project is already partially aligned,
- note any uncommitted local changes that increase migration risk,
- determine which differences are structural vs. documentation-only.

### 3. Use The Template As The Source Of Truth

Prefer a local checked-out copy of the template, such as a submodule or working copy, over a web URL. This avoids drift, auth issues, and ambiguity about which template version is being applied.

### 4. Classify Differences By Category

Split differences into:

- already aligned,
- missing template assets,
- legacy path or file-location mismatches,
- project-specific extensions that should remain in place.

Then classify each governed path by ownership mode (`owner_mode`) so the action is deterministic:

- `template-controlled`: sync/replace from template
- `merge-controlled`: merge required template sections and preserve approved project overrides
- `project-controlled`: protect from overwrite

This prevents unnecessary restructuring of domain folders that do not belong to the shared template layer.

### 5. Confirm Scope For Risky Moves

If multiple valid approaches exist, ask the user to choose:

- core alignment vs. near-full parity,
- preserve current locations vs. relocate for parity.

Typical risky moves include:

- moving chat-history files,
- renaming long-standing reference-project folders,
- replacing customized ignore files or setup docs,
- importing optional app-development guidance into a research-only repository.

### 6. Execute In A Safe Order

Recommended order:

1. Refresh the template.
2. Inventory template deltas.
3. Import missing template assets.
4. Relocate legacy paths and file locations.
5. Reconcile documentation with the new structure.
6. Verify consistency.

This order reduces rework and avoids fixing references twice.

### 7. Adapt, Do Not Blindly Copy

When importing template files:

- copy neutral scaffolding as-is when appropriate,
- adapt workflow docs to the actual project type,
- mark optional app-development material clearly when the repository is not app-focused,
- preserve project-specific rules and terminology where they are intentional.

### 8. Handle Location Changes Atomically

For any file-location migration:

1. Create the destination first.
2. Move all related files together.
3. Normalize file names if needed.
4. Update references immediately.
5. Scan for stale references.

This is especially important for chat-history moves and renamed reference-project locations.

### 9. Reconcile Documentation With Reality

Update the docs that contributors actually use:

- root `README.md`,
- `ai-collaboration/` guidance files,
- setup and onboarding docs,
- reference-project and submodule docs,
- any alignment-status or migration notes.

Focus on removing:

- links to files that no longer exist,
- old folder names,
- claims of full alignment that are no longer true,
- setup instructions that describe an outdated structure.

### 10. Sweep For Stale References

Run a final search for:

- old folder names,
- old file names,
- moved setup docs,
- renamed reference projects,
- legacy generated-path strings in scripts or generated files.

Do a second pass after the main edits. Alignment work often leaves a small second ring of stale references.

### 11. Validate Structure And Behavior

Before calling the alignment complete:

- check edited files for lint or formatting issues,
- validate any edited scripts,
- confirm moved files are reachable from current docs,
- verify submodule docs still match `.gitmodules`,
- review repository status for unintended changes.
- confirm parity gate files have no unresolved drift.
- ensure approved non-parity is recorded in the deviations register.

---

## Recommended Questions To Ask The User

For alignment tasks, ask these questions early if the answer is not obvious:

1. How close should the repository get to template parity?
2. Should current file locations be preserved where possible, or moved to match the template?
3. Are optional app-development or testing workflow docs wanted in this repository?

These questions help avoid unnecessary churn.

---

## Suggested Alignment Checklist

- [ ] Local template refreshed to latest intended upstream state
- [ ] Current repository structure reviewed
- [ ] Live template structure reviewed
- [ ] Ownership mode applied per governed path
- [ ] Differences categorized
- [ ] Risky moves confirmed with user
- [ ] Missing template assets added
- [ ] Legacy file locations migrated
- [ ] Active docs updated to reflect reality
- [ ] Stale references removed
- [ ] Edited scripts or generators validated
- [ ] Parity gates evaluated and passed
- [ ] Approved deviations recorded with review dates
- [ ] Final consistency check completed

---

## Success Criteria

Alignment is complete when:

- the repository matches the template where applicable,
- the comparison was done against a freshly updated template copy,
- project-specific extensions are preserved intentionally,
- existing content is reachable through current documented paths,
- no active docs point to superseded locations,
- collaboration and setup docs all describe the same structure.

---

## Notes For Template Maintainers

- Keep this workflow generic so it applies to research, documentation, and application repositories.
- Treat app-development assets as optional unless the target project needs them.
- When the template structure changes, update this guide alongside `README.md` and `documentation/README.md`.

---

Project Alignment Workflow - Template guidance for existing repositories.
