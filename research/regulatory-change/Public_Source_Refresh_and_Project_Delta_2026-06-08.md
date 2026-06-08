# Public source refresh and project delta (June 2026)

**Date**: 2026-06-08  
**Purpose**: Integrate **newly downloaded** USCG guidance (June 2026) and **online hub updates** into the MTSA repository.  
**Method**: Analyze local PDFs in `documentation/reference-downloads/uscg-cyber-2026/`; cross-check [MaritimeCyber](https://www.uscg.mil/MaritimeCyber/) listing; regulatory text unchanged unless eCFR amendment noted.

---

## 1. New official USCG sources ingested

| Item | Date | Role | Local path |
|------|------|------|------------|
| **CG-5PC Policy Letter 01-26** | Signed **June 2, 2026** | CSA **scoping and process**; optional CSA guide (Prepare → Conduct → Communicate/Document); critical IT/OT classification; SSI handling | `documentation/reference-downloads/uscg-cyber-2026/CG-5P Policy Letter 01-26 CYBERSECURITY ASSESSMENT INITIAL SCOPING AND PROCESS.pdf` |
| **MCP-WI-002** (+ enclosures) | Signed **June 4, 2026** | **Waiver / equivalency / temporary deviation** under **33 CFR 101.665**; submission routing; checklist and templates | `MCP-WI-002 Waiver and Equivalency Guidance.pdf`, `CG-MCP-WI-002 Enclosures.pdf` |
| **MCP-WI-003** | Signed **June 4, 2026** | **DoD SAFE** process for secure submission of CSP, CSA, waiver/equivalency packages (**SSI** per **49 CFR 1520**) | `MCP-WI-003 DOD SAFE Instructions-Signed.pdf` |

**Distribution**: Electronic only via [MaritimeCyber](https://www.uscg.mil/MaritimeCyber/).

**New contact**: **CyberPlanReview@uscg.mil** — initiates DoD SAFE drop-off for plan/assessment/waiver packages (alternate: local **COTP**).

---

## 2. Online hub updates (not full PDF mirrors in repo)

| Item | Notes |
|------|-------|
| **Final Rule FAQ** | MaritimeCyber lists FAQ **last updated 01/09/2026** — use for plain-language clarifications; verify against **eCFR** Subpart F |
| **Cybersecurity Training Verification Job Aid** | Posted on MaritimeCyber for inspection/training-record checks |
| **January 12, 2026 training deadline** | **Passed** as of this refresh; obligation is now **annual** training (and new-hire / new-system triggers per **101.650(d)(4)**) |

No new Federal Register rulemaking or eCFR Subpart F amendment was identified in this pass beyond existing **2025-00708** / Subpart F codification.

---

## 3. Verified deltas vs. prior repository content

### 3.1 Cybersecurity Assessment scoping (Policy 01-26)

- **CSA is a risk-filtering process**, not a narrow “critical-only” inventory: entities must analyze **all networks** per **101.650(e)(1)(i)**, then classify **critical IT/OT** using TSI potential (**Yes** / **Maybe** / **No**).
- **Asset categories**: **Internal** (entity-controlled), **External** (dependencies), **Interfaces** (connection pathways)—including cloud, vendor, landlord, and BYOD paths.
- **Subpart F baseline measures** apply to **all IT/OT infrastructure**, not only critical IT/OT (**101.650(a–c, e–f, h–i)** per Policy §3.b).
- **CSA informs CSP**; not every finding requires major mitigation in the **initial** CSP—maturity expected over annual CSAs, audits, drills, and exercises.
- **CySO expertise** should oversee or support scoping; owner/operator remains responsible.
- **SSI**: CSA report marked/handled per **49 CFR 1520**.

**Action**: Implementation guide **§6**, risk assessment research doc, and `VERIFIED_REFERENCES.md` updated.

### 3.2 Waivers and equivalencies (MCP-WI-002)

- **Prerequisite**: Completed **CSA** before waiver or equivalency request (**101.665**).
- **Waiver**: Relief from a requirement deemed unnecessary given nature/operating conditions.
- **Equivalency**: Alternative measure meeting or exceeding regulatory intent; requirement still applies in spirit.
- **Temporary deviation**: Short-term non-compliance with permission to continue operations; notify **COTP/MSC** when applicable.
- **Submission routing (per WI-002 Enclosure 2)**:
  - **Waiver** — facilities and vessels → **Commandant (CG-5P)**; **OCS** → cognizant **District Commander**
  - **Equivalency** — all entities → **Commandant (CG-5P)**
- Coast Guard does **not** grant blanket credit for “similar regulations” without mapping specific measures.

**Action**: New implementation guide subsection **§3.5**; plan submission and verified references updated.

### 3.3 Secure plan submission (MCP-WI-003)

- CSP, CSA, and waiver/equivalency packages are **SSI**; Coast Guard uses **DoD SAFE** guest drop-off.
- Process: email **CyberPlanReview@uscg.mil** (or **COTP**) → receive **14-day** request code → upload **password-encrypted PDF** → send password in **separate** email.

**Action**: `research/plan-submission/Cybersecurity_Plan_Submission_Process.md` updated.

### 3.4 Training deadline status

- **January 12, 2026** initial training deadline has **elapsed**; compliance is now demonstrated by **annual** training within 12 months, plus **5-day / 30-day** new-personnel and **5-day** new-system triggers.

**Action**: `MTSA_TIMELINE_SUMMARY.md` post-deadline notes added.

---

## 4. Industry intelligence (June 2026 email thread — secondary source)

**Source**: Email from Steve Roberts (Chemical Security Group), June 7, 2026, following CG-MCP meeting at USCG HQ the same week Policy 01-26 and MCP-WI-002/003 published.

**Status**: ⚠️ **Secondary / pending official publication** — Roberts indicated CG-MCP would post on [Maritime Commons](https://www.news.uscg.mil/maritime-commons/); not yet mirrored in repo as of this update.

| Roberts point | Repo treatment |
|---------------|----------------|
| Policy Letter CSA **scoping guide is not mandatory** | **Confirmed** in Policy 01-26 §5.c (optional enclosure) |
| Alternate methodologies (e.g., systems-of-systems) permitted with **equivalent or greater rigor** | **Confirmed** in Policy 01-26 enclosure ¶4 |
| Entities that started CSA-like work under a **different documented methodology need not restart** | **Consistent with Policy text**; Roberts adds CG-MCP oral reassurance — treat as implementation guidance, not regulation |
| **CSA itself remains mandatory** under **101.650(e)(1)** | Unchanged regulatory obligation |

**Practitioner note (enterprise programs):** Existing risk/OT programs (e.g., site PRA, corporate ISMS) may be positioned as the **documented CSA methodology** via a regulatory wrapper (expanded ecosystem scope, critical IT/OT designation, traceability matrix) rather than restarting under the Policy Letter enclosure verbatim. **Equivalency** of corporate frameworks still requires **clause-level crosswalk** and Coast Guard approval per **MCP-WI-002** — not automatic recognition.

**Copilot-generated analysis in same thread:** Useful on documentation gaps (traceability, N/A vs waiver, SSI/DoD SAFE); **do not** treat readiness percentages or “already compliant” framing as verified compliance positions.

**Full capture (diagrams, quotes, action items):** `research/industry-specific/Email_Exchange_MTSA_Policy_Letters_2026.md`

---

## 5. Items still requiring Coast Guard or counsel confirmation

- Exact **District/COTP** vs **CG-MCP** routing for **Cybersecurity Plan** approval (WI-003 drop-off vs legacy FSP amendment workflows).
- Facility-specific **waiver/equivalency** outcomes under **101.665**.
- **CG-MCP blog** on optional CSA scoping and continuity for early adopters (per Roberts).
- Project **TSI / trade–commerce** interpretive research — unchanged; still flagged in `VERIFIED_REFERENCES.md`.

---

## 6. Related repository updates (this change set)

- `documentation/reference-downloads/uscg-cyber-2026/README.md` — new inventory
- `documentation/reference-downloads/uscg-cyber-2025/README.md` — cross-link to 2026 folder
- `VERIFIED_REFERENCES.md` — Policy 01-26, MCP-WI-002/003, contacts, Job Aid/FAQ pointers
- `implementation/guides/MTSA_Cyber_Requirements_Complete_Implementation_Guide.md` — CSA scoping, waivers, submission, training status
- `research/plan-submission/Cybersecurity_Plan_Submission_Process.md` — DoD SAFE workflow
- `research/risk-assessment/Risk_Assessment_Methodologies.md` — Policy 01-26 alignment
- `MTSA_TIMELINE_SUMMARY.md` — post–Jan 2026 training framing
- `ai-collaboration/project-context.md` — key document pointers

---

*Update when new PDFs are added to `uscg-cyber-2026/` or Subpart F is amended (check eCFR metadata).*
