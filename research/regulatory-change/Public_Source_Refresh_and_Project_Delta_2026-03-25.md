# Public source refresh and project delta (USCG-prioritized)

**Date**: 2026-03-25  
**Purpose**: Capture **new or clarified public sources** (Coast Guard first, then other government, trade groups, and industry commentary) and document **gaps versus this repository** after a targeted open-web review.  
**Method**: Prioritize **33 CFR Part 101 Subpart F** (eCFR, retrieved 2026-03-25) for regulatory text; use USCG-published announcements and Federal Register for rulemaking metadata; treat industry blogs and non-government summaries as **tertiary** unless they cite primary sources.

---

## 1. Source hierarchy used for this session

1. **Regulatory text**: [33 CFR Part 101 Subpart F — Cybersecurity](https://www.ecfr.gov/current/title-33/chapter-I/subchapter-H/part-101/subpart-F) (eCFR; continuously updated, unofficial compilation).
2. **USCG rulemaking record**: Federal Register document *Cybersecurity in the Marine Transportation System* ([Federal Register 2025-00708](https://www.federalregister.gov/documents/2025/01/17/2025-00708/cybersecurity-in-the-marine-transportation-system), published 2025-01-17; effective 2025-07-16).
3. **USCG implementation and interpretive guidance**: News articles announcing NVIC and policy letters; PDFs on `uscg.mil` where reachable; NVIC 01-20 (already in project).
4. **Other federal**: CISA, GAO, NIST (supporting practice only unless incorporated by reference in USCG rules).
5. **Trade / ISAC / associations**: MTS-ISAC, ILTA, etc. (coordination and awareness; not a substitute for regulatory text).

**Access note**: Automated requests to some `uscg.mil` pages (including `/MaritimeCyber/` and some news articles) returned **HTTP 403** from this environment. **Official PDFs and eCFR remained usable.** For NVIC/Policy Letter PDFs, use a normal browser from your network or obtain files from the Coast Guard Maritime Cybersecurity resource page when available.

---

## 2. New or updated official USCG-related sources to track

| Item | Approx. date | Role | Pointer |
|------|----------------|------|---------|
| **Final rule (codified)** | Effective 2025-07-16 | Substantive requirements in **33 CFR 101** Subpart F | eCFR Subpart F; FR `2025-00708` |
| **CG-5PC Policy Letter 01-25** | Announced **2025-10-10** | Cybersecurity **training** implementation detail (aligns with **33 CFR 101.650(d)**) | USCG announcement: [Publication of … Policy Letter 01-25 and NVIC 02-24, CH 1](https://www.news.uscg.mil/maritime-commons/Article/4343729/publication-of-cybersecurity-training-and-incident-reporting-guidance-and-polic/) |
| **NVIC 02-24, Change 1** | Announced **2025-11-26** (per USCG announcement) | **Reporting** guidance for breaches of security, suspicious activity, TSIs, and **cyber incidents** (implements public-side reporting expectations alongside Part 6 / MTSA context) | Same announcement URL as above; NVIC PDFs linked from USCG cyber resources |
| **NVIC 02-24 (original)** | **2024-02-21** | Prior reporting guidance (superseded or amended by Change 1 for cyber reporting alignment) | USCG: [NVIC 02-24 announcement](https://www.news.uscg.mil/maritime-commons/Article/3685390/navigation-and-vessel-inspection-circular-nvic-02-24-reporting-breaches-of-secu/) |
| **Implementation timeline (USCG)** | Ongoing | Plain-language milestone summary | [Implementation timeline article](https://www.news.uscg.mil/maritime-commons/Article/4247529/final-rule-cybersecurity-in-the-marine-transportation-system-implementation-tim/) |
| **Maritime Industry Cybersecurity resource site** | Ongoing | Central landing page for fact sheets, guides, contacts | `https://www.uscg.mil/MaritimeCyber/` (verify access from your network) |
| **Rule questions contact** | Ongoing | Stakeholder questions on the cyber rule | Email cited in USCG announcements: **MTSCyberRule@uscg.mil** |

**Integration status**: This repository’s `VERIFIED_REFERENCES.md` and implementation guide **prior references** (final rule news, Small Entity Compliance Guide, NVIC 01-20) remain valid; **Policy Letter 01-25**, **NVIC 02-24 CH 1**, and the **Federal Register document ID** are now added or clarified in `VERIFIED_REFERENCES.md` (see that file’s revision history).

---

## 3. Verified deltas: regulatory text (eCFR) vs. prior project documentation

The following items were confirmed against **33 CFR 101.620**, **101.625**, **101.650** (eCFR, 2026-03-23 snapshot shown on eCFR pages). They are **corrections or additions** relative to older narrative in `implementation/guides/MTSA_Cyber_Requirements_Complete_Implementation_Guide.md` before this refresh.

### 3.1 CySO qualifications (material correction)

- **Regulation**: **33 CFR 101.625(e)** lists **twelve** specific knowledge areas the CySO must possess (training, education, or equivalent experience), including **current threat patterns and KEVs**, **cyber drills and exercises**, **SSI handling**, and **relevant laws and regulations**.
- **Prior project gap**: The implementation guide stated that qualifications were **not detailed** in the regulation.
- **Action**: Implementation guide **§4.3** updated to align with **101.625(e)**.

### 3.2 CySO and owner/operator duties: KEVs, annual plan audit, reporting chain

- **33 CFR 101.625(d)(3)**: CySO must ensure an **annual audit** of the Cybersecurity Plan and implementation, and plan updates if needed.
- **33 CFR 101.625(d)(15)**: CySO must ensure **identification and mitigation of all KEVs** in **critical** IT or OT systems **without delay** (in addition to similar language in **101.650(e)(1)(iv)** and maintenance measures).
- **33 CFR 101.620(b)(7)**: Owner/operator must ensure **reportable cyber incidents** are reported to **NRC** when the entity **has not** reported under **33 CFR 6.16-1** or is **not subject** to it.
- **33 CFR 101.650(g)(1)**: Parallel **NRC** reporting language for **resilience** measures with the same **33 CFR 6.16-1** condition.
- **Prior project gap**: Implementation guide **Requirement 6** broadly described NRC reporting without the **6.16-1** conditional structure; **KEV** and **annual plan audit** were not called out in the CySO/requirements overview.
- **Action**: **§8.1–8.3** and **§4.4** / **§9.5** updated; full regulatory nuance for **6.16-1** should still be validated against **33 CFR Part 6** and **NVIC 02-24 CH 1** in your counsel-assisted review.

### 3.3 Cybersecurity Assessment and penetration testing

- **33 CFR 101.650(e)(1)**: Cybersecurity Assessment **no later than 2027-07-16** and **annually thereafter**, with **acceleration on change of ownership**; includes **KEV** patching/compensating controls, FSA/VSA documentation, and plan amendment linkage (**101.630(e)**).
- **33 CFR 101.650(e)(2)**: **Penetration testing** must be performed **in conjunction with Cybersecurity Plan renewal**, with a **certification letter** and vulnerabilities documented in **FSA/VSA/OCS FSA** per **104.305 / 105.305 / 106.305**.
- **Prior project gap**: Implementation guide emphasized annual assessment but **did not** surface **penetration testing at plan renewal** as an explicit regulatory requirement.
- **Action**: **§9.5** (risk management) updated.

### 3.4 Training schedule details (beyond “initial by 2026-01-12”)

- **33 CFR 101.650(d)(4)**: In addition to initial and annual training, the rule specifies **new personnel** (post-effective-date rule) within **5 days of system access** but **no later than 30 days from hiring**; **new IT/OT systems** within **5 days of access**; and training on **Cybersecurity Plan provisions (d)(1)(i)** within **60 days of plan approval**.
- **Prior project gap**: Implementation guide listed **2026-01-12** and annual recurrence but **not** the staggered triggers above.
- **Action**: **§5.2** updated; **Policy Letter 01-25** should be used for USCG’s operational interpretation of **101.650(d)**.

### 3.5 Supply chain and other “technical measures” pillars

- **33 CFR 101.650(f)** (**supply chain**), **(g)** (**resilience**), **(h)** (**network segmentation**), **(i)** (**physical security**) are explicit regulatory paragraphs. The implementation guide’s high-level list under **Requirement 7** did not previously name **supply chain** or **physical security** as distinct regulatory headings.
- **Action**: **§9.1** updated to reflect the **full set of paragraph (a)–(i)** topics in **101.650**.

### 3.6 Incident reporting wording

- **Prior project gap**: Phrasing such as “any cybersecurity incident that impacts the facility” is **not** a verbatim substitute for the regulatory concepts of **reportable cyber incidents** and the interaction with **33 CFR 6.16-1**.
- **Action**: **§8** revised toward regulatory terminology; **NVIC 02-24 CH 1** should be the working USCG non-rule guidance for operational reporting criteria once downloaded and cited in line.

---

## 4. Other government / trade / user-group sources (secondary)

| Source | Type | Use for this project | Caveat |
|--------|------|----------------------|--------|
| **CISA — Marine Transportation System Resilience Assessment Guide** (Dec 2024 PDF) | Federal resilience methodology | Useful for **enterprise resilience** and multi-asset assessment patterns; **not** a USCG compliance substitute | Map to plan sections only after confirming alignment with **101.650(g)** |
| **MTS-ISAC** | Sector ISAC | Threat sharing, community patterns | Does not replace regulatory text |
| **ILTA, regional security committees, workshops** | Trade / local coordination | Template and exercise ideas | Same caveat |
| **Commercial advisories** (e.g., law firm / insurer summaries of the final rule) | Commentary | Quick orientation | Always verify against **eCFR** and USCG primary documents |

---

## 5. Items intentionally not “resolved” in this pass

- **Full text analysis of NVIC 02-24 CH 1 and Policy Letter 01-25**: Pending retrieval of the **official PDFs** (blocked from automated fetch here). Next step: attach PDFs to the repo’s reference store or cite exact page/section in `VERIFIED_REFERENCES.md`.
- **33 CFR Part 6.16-1** interaction with MTSA **reportable cyber incidents**: Requires reading Part 6 sections alongside NVIC 02-24 CH 1; recommend **legal/compliance** review.
- **TSI / trade–commerce interpretive positions** in project research: Unchanged by this refresh; still marked **Coast Guard confirmation** where applicable in `VERIFIED_REFERENCES.md`.

---

## 6. Related repository updates (same change set)

- `VERIFIED_REFERENCES.md` — Federal Register document ID, new USCG guidance rows, CISA MTS resilience guide link.
- `implementation/guides/MTSA_Cyber_Requirements_Complete_Implementation_Guide.md` — CySO qualifications, training triggers, NRC reporting conditionality, supply-chain pillar, KEV + penetration testing, related guidance list.

---

*This document should be updated when official USCG PDFs are ingested or when Subpart F is amended (check eCFR “Title 33 last amended” metadata).*
