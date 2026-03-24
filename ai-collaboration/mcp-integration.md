# MCP integration (AI Assistance Template)

<!-- TEMPLATE-SECTION:START name=mcp-template-baseline -->
## Purpose

This document is the **canonical policy** for when to use MCP servers that relate to the **AI Assistance Template** and to **template alignment**, while keeping prompts short and avoiding unnecessary token use.

It applies to the **template repository** and is intended to be **copied or synced** into consumer projects (adjust the server table to match which MCPs are enabled in each workspace).

**Tool schemas:** Before calling an MCP tool, read that tool’s descriptor JSON under your Cursor project MCP cache, for example:

`~/.cursor/projects/<project-folder>/mcps/<server-folder>/tools/<tool-name>.json`

Cursor’s server folder name is usually `user-` plus the key from `mcp.json` (e.g. `user-ai-assistance-template-files`).

---

## Two template-related servers (do not confuse them)

Many setups mount **the same directory on disk** (e.g. `_AI-Assistance-Template`) in **two different MCP servers**. They have **different jobs**:

| Role | Typical `mcp.json` key | Package / type | Use for |
|------|-------------------------|----------------|---------|
| **Canonical template files** | `ai-assistance-template-files` | `@modelcontextprotocol/server-filesystem` | **`list_allowed_directories`**, **`list_directory`**, **`read_text_file`**, **`write_file`** on the template tree — **single point of truth for file contents and layout on disk**. |
| **Standards / structured config** | `ai-assistance-template` | `@liangshanli/mcp-server-project-standards` | **`project_structure`** (`get` / `set`), **`project_info`**, **`development_standards`**, **`generate_cursorrules`**, API helpers, etc. — **metadata and standards**, not a guaranteed filesystem chroot. |

**Rule:** For “read or list a file under the canonical template,” use **`ai-assistance-template-files`** (after confirming allowed roots) or **editor `Read`** on the absolute path. Use **`ai-assistance-template`** for **standards and registered structure**, not as the default way to browse template files.

**Known caveat (`@liangshanli/mcp-server-project-standards`):** **`list_directory`** may be rooted at **`$HOME`** (or another default), **not** at `PROJECT_STANDARDS_PATH`. Do **not** assume it shows the template tree until you verify the top-level nodes (e.g. you should see template roots like `ai-collaboration/`, not only home-level folders). See **`documentation/template-feedback/integrated/2026-03-24-mcp-canonical-template-and-server-roles.md`**.

---

## Submodule vs live template

Consumer repos often include **`reference-projects/ai-assistance-template`** as a **git submodule** (pinned commit). That copy can **lag** the maintainer’s **live** template directory or remote.

**Order of preference for “what is canonical right now?”**

1. **Filesystem MCP** (`ai-assistance-template-files`) or **editor `Read`** at the **same absolute path** you use for maintenance (e.g. workspace `_AI-Assistance-Template`).
2. **`ai-assistance-template`** MCP: **`project_structure`** `get` as **hints only** (registered structure, not a full parity proof).
3. **Submodule tree** — treat as **consumer snapshot**; say so explicitly when reasoning about template versions.

---

## Global rules (token and safety)

1. **Prefer targeted retrieval** over bulk paste: search, line ranges, structure reads, or MCP tools that subset content.
2. **Right tool for the boundary:** Workspace project files → editor `Read` / workspace tools. Template tree exposed only via **`ai-assistance-template-files`** → use that server for those paths.
3. **Do not guess MCP parameters** — read the schema for the tool you are about to call.
4. **Secrets:** Never send tokens or private payloads into chat or into tools that log content.

---

## Porting to a consumer project

1. Keep the **`mcp-template-baseline`** merge markers intact so `sync-all-projects.sh` can refresh shared policy without deleting your extensions below.
2. Add a table row (in **Project MCP extensions**) for **every other** MCP you enable (memory, git, search, etc.).
3. Point **`AGENTS.md`** at this file in the session startup list.
4. Optionally add a **Cursor rule** so new chats load this policy automatically.
5. If this file becomes heavily customized (large server matrices), set **`ai-collaboration/mcp-integration.md`** to **`project-controlled`** in **`documentation/template-ownership-manifest.csv`** so applies never overwrite it automatically.

---

*Revision: 2026-03-24 — merge-friendly baseline; project extension section; integrated template feedback.*
<!-- TEMPLATE-SECTION:END name=mcp-template-baseline -->

---

## Project MCP extensions

Use this section for **additional MCP servers**, workspace-specific roots, Cursor server ids, and tables that are not part of the shared template baseline above.

**Alignment:** With default **`merge-controlled`** ownership, `sync-all-projects.sh` replaces only the marked **`mcp-template-baseline`** block. Content **here stays in the project** as long as the merge markers remain valid. If a one-time realignment replaces the whole file (no markers yet), paste your extensions back under this heading.

_(Nothing below this line is required for minimal repos.)_
