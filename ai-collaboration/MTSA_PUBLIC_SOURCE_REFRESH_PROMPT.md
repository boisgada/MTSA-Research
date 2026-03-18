# MTSA Public-Source Refresh Prompt

## Recommended Awesome Copilot Mode

Use `reference-projects/awesome-copilot/chatmodes/gpt-5-beast-mode.chatmode.md`.

Why this mode:
- It is explicitly designed for autonomous research with tool use and official web fetching.
- It supports iterative investigation and document updates in the working repo.
- It does not impose the restrictions found in some research-only modes.

Do not use these as the primary mode for this task:
- `research-technical-spike.chatmode.md`: requires a spike document path before proceeding.
- `task-researcher.chatmode.md`: restricts edits to `./.copilot-tracking/research/`, which does not match this repo workflow.

## How to Use in Cursor

These Awesome Copilot files are GitHub Copilot chatmodes, not native Cursor modes. In Cursor, use the file as instruction content for the session:

1. Open `reference-projects/awesome-copilot/chatmodes/gpt-5-beast-mode.chatmode.md`
2. Use its instructions as the session's custom operating guidance
3. Start the session with the task prompt below

## Task Prompt

Use Beast Mode to perform a focused public-source refresh for this MTSA research repository.

Objectives:
- Search for any additional or updated public information relevant to the Maritime Transportation Security Act (MTSA), with emphasis on cybersecurity requirements for MTSA-regulated facilities
- Prefer official and authoritative sources: Federal Register, U.S. Coast Guard, eCFR, NRC, CISA, NIST, TSA, and other primary government sources
- Identify changes, newly published guidance, implementation deadlines, reporting requirements, training requirements, plan requirements, and any clarifications affecting facility cybersecurity planning
- Distinguish clearly between binding requirements, Coast Guard guidance, and general best practices
- Flag any areas that still require Coast Guard confirmation

Minimum source targets:
- Final Rule: `Cybersecurity in the Marine Transportation System`
- Relevant Federal Register notices related to MTSA marine cybersecurity
- NVIC 02-24 and NVIC 02-24 Change 1
- CG-5PC Policy Letter 01-25
- Relevant updates from the Coast Guard Maritime Industry Cybersecurity Resource Center
- Any updated 33 CFR provisions tied to cyber incident reporting, cybersecurity plans, training, assessments, or officer designation

Required outputs:
- Update repo documents only where there is verified, actionable new information
- Add or update citations in `VERIFIED_REFERENCES.md` and any related verified-reference files
- Update implementation or research documents only when the source is authoritative and relevant
- Summarize:
  - what new information was found
  - what changed in the repo
  - what remains uncertain
  - which items require Coast Guard confirmation

Working rules:
- Keep all content generic and reusable
- Do not add organization-specific assumptions
- Prefer one focused discovery pass, then fetch and verify official sources
- Cite every regulatory or policy claim with the exact source title and URL
- If a source conflicts with an older repo statement, update the repo and note the superseded guidance
- Stop after applying the highest-value verified updates; do not drift into broad maritime security research outside MTSA scope

## Short Operator Prompt

If you want a shorter version to paste into chat:

> Use `reference-projects/awesome-copilot/chatmodes/gpt-5-beast-mode.chatmode.md` behavior for this session. Perform a focused MTSA public-source refresh for this repo. Search official sources for additional or updated MTSA cybersecurity requirements and guidance, especially the USCG final cyber rule, Federal Register notices, NVIC 02-24 / Change 1, CG-5PC Policy Letter 01-25, and any related 33 CFR updates. Update only verified, actionable repo content, add citations, distinguish binding requirements from guidance, and clearly flag anything that still requires Coast Guard confirmation.
