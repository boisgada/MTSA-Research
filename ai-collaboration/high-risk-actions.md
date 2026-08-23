# High-risk actions

**Optional policy file.** Customize for the project. Sync copies it when missing and does **not overwrite** a customized copy.

If this file is missing, **ask before** the action classes below.

## Ask first (default)

- Force-push, history rewrite, or skipping git hooks
- `sudo` / privileged host changes
- Production deploy, “publish to sensors,” or any step the project docs distinguish from `git push`
- Changes on live OT/ICS/plant networks or safety-related configuration
- Deleting data, dropping databases, or rotating credentials
- Sending secrets or private payloads to MCP/tools/chat logs

## Never (unless the user explicitly overrides in this session)

- Inventing regulatory or safety-critical facts
- Disabling security controls “to make the demo work”
- Committing secrets, tokens, or private keys

## Allow without extra confirmation (only if already true for this repo)

- Normal edits, tests, and documentation in the active git root
- `git add` / `git commit` / `git push` when the user asked to commit/sync and the change set is the work just done
- Read-only status commands (`git status`, `git log`, tests that do not mutate production)

## Project additions

Add repo-specific rows here (example: “GitHub push is not production publish”). Point to the runbook instead of duplicating it.
