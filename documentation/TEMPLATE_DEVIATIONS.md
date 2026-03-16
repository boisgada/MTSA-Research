# Template Deviations Report

Comparison of this project (MTSA) against the AI Assistance Template repo.  
**Template reference**: `Research/PiCASSO SOPs/reference-projects/ai-assistance-template`  
**Last reviewed**: 2026-03-16

---

## 1. Chat history location and pattern — FIXED (2026-03-16)

| Aspect | Template | MTSA (current) |
|--------|----------|----------------|
| **Location** | `ai-collaboration/chat-history/` (subfolder) | **Now aligned**: `ai-collaboration/chat-history/` |
| **Naming** | e.g. `chat-history-YYYY-MM-DD.md`, `session-YYYY-MM-DD.md` | Still `chat_history_YYYYMMDD-NN.md` (optional to rename later) |
| **.gitignore** | Optional: `ai-collaboration/chat-history/` if excluding | **Updated**: `ai-collaboration/chat-history/` |
| **Docs** | `documentation/chat-history-syncing.md` describes folder and patterns | No chat-history-syncing doc; PUBLISHING updated to reference `ai-collaboration/chat-history/` |

**Done**: Created `ai-collaboration/chat-history/`, moved all `chat_history_*.md` into it, updated `.gitignore` and `PUBLISHING.md`. Optional: add `documentation/chat-history-syncing.md` from template for future reference.

---

## 2. Memory-bank: optional `tasks/` subfolder

| Aspect | Template | MTSA |
|--------|----------|------|
| **memory-bank/** | No `tasks/` in template repo | Has `memory-bank/tasks/_index.md` |

Template’s memory-bank README describes `tasks/` as optional; the template repo itself does not include it. MTSA added it for alignment with an older example. **No change required** unless you want to remove it for strict parity.

---

## 3. Documentation folder contents

| Aspect | Template | MTSA |
|--------|----------|------|
| **documentation/** | 15+ files (chat-history-syncing, discoveries, git-submodule-workflow, internal-restricted-folders, submodule-maintenance, etc.) | Only `README.md` |

Template provides a full documentation suite; MTSA has minimal documentation. **Optional**: Copy or adapt template docs (e.g. `chat-history-syncing.md`, `submodule-maintenance.md`, `discoveries.md`) if you want the same guidance.

---

## 4. Scripts folder

| Aspect | Template | MTSA |
|--------|----------|------|
| **scripts/** | `README.md`, `setup-project.sh`, `update-submodules.sh` | `README.md`, `update-submodules.sh` |

MTSA is missing `setup-project.sh`, which the template uses to create `ai-collaboration/chat-history/` and configure chat history. **Optional**: Add `setup-project.sh` from template (or a trimmed version) if you want one-command project setup.

---

## 5. Top-level: LICENSE

| Aspect | Template | MTSA |
|--------|----------|------|
| **LICENSE** | Present | Not present |

**Optional**: Add a LICENSE file if you intend to share or publish the repo under a specific license.

---

## 6. Intentional MTSA-only content (not deviations)

These exist in MTSA but not in the template by design:

- **Top-level**: `implementation/`, `research/`, `assets/`, `tools/`, `PUBLISHING.md`, `ORGANIZATION_SUMMARY.md`, `VERIFIED_REFERENCES*.md`, `QUICK_REFERENCE.md`, `EVIDENCE_PACK_CHECKLIST.md`, `GLOSSARY.md`, `MASTER_INDEX.md`, `MTSA_TIMELINE_SUMMARY.md`
- **Workspace**: `MTSA.code-workspace` (template has `AI-Assistance-Template.code-workspace`)
- **Session notes**: Dated files like `session-notes-2026-03-16.md` in `ai-collaboration/` are consistent with template (session notes can live in ai-collaboration; only chat history is expected in a subfolder)

---

## Summary

| # | Deviation | Severity | Suggested action |
|---|-----------|----------|------------------|
| 1 | Chat history in ai-collaboration root, not in `chat-history/` | **Fixed** | Moved to `ai-collaboration/chat-history/`; .gitignore and PUBLISHING updated |
| 2 | memory-bank/tasks/ present in MTSA only | Low | Keep as optional or remove for strict parity |
| 3 | documentation/ mostly empty | Low | Optionally add template docs (e.g. chat-history-syncing) |
| 4 | No setup-project.sh | Low | Optionally add from template |
| 5 | No top-level LICENSE | Low | Add if publishing |

---

*Generated for template alignment review.*
