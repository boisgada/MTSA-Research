# Template feedback (upstream improvement proposals)

## Purpose

This folder holds **recommended improvements** for the **AI Assistance Template** itself. Items here are a **staging area**: reviewers prioritize them, then apply changes in this **template repository** for the benefit of **all projects** that copy or align to the template.

Consumer projects may keep a **mirror** of this folder (or only the index) to record proposals discovered while working in that repo before they land here.

**Research workspace layout:** When this template repo lives as `Research/_AI-Assistance-Template` beside other projects, the shared **manager** runbook is **`../ai-collaboration/template-feedback-to-canonical-workflow.md`** (discovery script: **`../ai-collaboration/scripts/list-open-consumer-template-feedback.sh`**). Adjust paths if your directory layout differs.

---

## How to use

1. **Add** a new markdown file per idea: `YYYY-MM-DD-short-slug.md`.
2. **Track** open vs integrated items in **`TEMPLATE_FEEDBACK_INDEX.md`**.
3. **Integrate** by implementing the change in the template repo, then **move** the proposal to **`integrated/`** and add an integration header (commit/tag, date).
4. **Propagate** to other Research projects via your alignment workflow (`ai-collaboration/scripts/sync-all-projects.sh` from the Research workspace root, submodule updates, or manual merge).

---

## Index

See **[TEMPLATE_FEEDBACK_INDEX.md](./TEMPLATE_FEEDBACK_INDEX.md)**.

---

## Related

- **`integrated/README.md`** — audit trail after upstream merge
- **`documentation/template-maintenance-and-updates.md`** — releasing and copying the template
- **`ai-collaboration/mcp-integration.md`** — MCP servers and canonical template access
