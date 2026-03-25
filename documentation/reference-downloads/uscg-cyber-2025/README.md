# USCG / MTSA cybersecurity reference downloads

Use this folder for **local mirrors** of official PDFs. Some hosts (**uscg.mil**, **cisa.gov**) often return **HTTP 403** to automated or datacenter IPs; if scripted download fails, open the URLs below in a **normal desktop browser** (or VPN) and save the files here with the suggested names.

## Local inventory (PDFs on disk)

These are the files currently under this folder (names may use the browser’s default download names). For AI-assisted work in Cursor, PDFs are read via shell tools (e.g. `pdftotext`) when quoted text is needed—IDE search may not list binaries.

| File (as saved) | Document |
|-----------------|----------|
| `Cybersecurity Training Policy Letter-5-PC_01-25.pdf` | CG-5PC Policy Letter 01-25 (Oct. 2025) |
| `BOS_SA_Cyber Reporting NVIC 02-24 CH 1.pdf` | NVIC 02-24, Change 1 |
| `BOS_SA_Cyber Reporting NVIC.pdf` | NVIC 02-24 (original) |
| `Cyber Small Entity Guide_Facilites_CLEAN_15JAN2025.pdf` | Small entity guide — facilities |
| `Cyber Small Entity Guide_Vessels_CLEAN_15JAN2025.pdf` | Small entity guide — vessels |
| `Cyber Regulations Fact Sheet for Public Release_CLEAN_15JAN2025.pdf` | Cyber regulations fact sheet |
| `FederalRegister_2025-00708_Cybersecurity-MTS.pdf` | Federal Register **2025-00708** (GovInfo PDF; **tracked in git**) |
| `2025-00708.pdf` | Same FR document if your browser saved this name — **not tracked** (duplicate; listed in `.gitignore`) |

Optional (not in folder yet): `CISA_MTS-Resilience-Assessment-Guide_2024-12.pdf` — see link in [CISA section](#other-government-pdf-optional--cisa-mts-resilience) below.

**GovInfo (recommended stable link for the rule PDF):**  
https://www.govinfo.gov/content/pkg/FR-2025-01-17/pdf/2025-00708.pdf  

**Federal Register (HTML + metadata):**  
https://www.federalregister.gov/documents/2025/01/17/2025-00708/cybersecurity-in-the-marine-transportation-system  

**Codified text (continuously updated, unofficial):**  
https://www.ecfr.gov/current/title-33/chapter-I/subchapter-H/part-101/subpart-F  

---

## U.S. Coast Guard — Policy Letter 01-25 (cybersecurity training)

**Announcing article (Maritime Commons):**  
https://www.news.uscg.mil/maritime-commons/Article/4343729/publication-of-cybersecurity-training-and-incident-reporting-guidance-and-polic/  

**Direct PDF link (as linked from that article; includes `ver=` cache-buster — if it fails, use the article link and click the policy title):**  
https://www.uscg.mil/Portals/0/Images/cyber/Cybersecurity%20Training%20Policy%20Letter-5-PC_01-25.pdf?ver=EPjl3GGiFm5dz1RFpbu1ow%3d%3d  

**Suggested local filename:** `CG-5PC_Policy-Letter-01-25_Cybersecurity-Training.pdf`  

---

## U.S. Coast Guard — NVIC 02-24, Change 1 (cyber / security reporting)

**Same announcing article as above** (one page announces both Policy 01-25 and NVIC CH 1):  
https://www.news.uscg.mil/maritime-commons/Article/4343729/publication-of-cybersecurity-training-and-incident-reporting-guidance-and-polic/  

**Direct PDF link (from article; `ver=` may change over time):**  
https://www.uscg.mil/Portals/0/Images/cyber/BOS_SA_Cyber%20Reporting%20NVIC%2002-24%20CH%201.pdf?ver=T480tZ3n3fUUmnvNwRay5w%3d%3d  

**Suggested local filename:** `NVIC-02-24-CH1_Cyber-Reporting.pdf`  

---

## U.S. Coast Guard — NVIC 02-24 (original, Feb. 2024)

**Announcing article:**  
https://www.news.uscg.mil/maritime-commons/Article/3685390/navigation-and-vessel-inspection-circular-nvic-02-24-reporting-breaches-of-secu/  

**Direct PDF (path on uscg.mil; click through article if blocked):**  
https://www.uscg.mil/Portals/0/Images/cyber/BOS_SA_Cyber%20Reporting%20NVIC.pdf  

**Suggested local filename:** `NVIC-02-24_Cyber-Reporting.pdf`  

---

## U.S. Coast Guard — Small entity compliance guides and fact sheet

**Facilities:**  
https://www.uscg.mil/Portals/0/Images/cyber/Cyber%20Small%20Entity%20Guide_Facilites_CLEAN_15JAN2025.pdf  

**Vessels:**  
https://www.uscg.mil/Portals/0/Images/cyber/Cyber%20Small%20Entity%20Guide_Vessels_CLEAN_15JAN2025.pdf  

**Fact sheet:**  
https://www.uscg.mil/Portals/0/Images/cyber/Cyber%20Regulations%20Fact%20Sheet%20for%20Public%20Release_CLEAN_15JAN2025.pdf  

---

## U.S. Coast Guard — NVIC 01-20 (cyber risks at MTSA facilities)

NVIC PDFs are also distributed through USCG channels; a common public pointer is the **announcement / NVIC index** on **MaritimeCyber** (open in browser):  
https://www.uscg.mil/MaritimeCyber/  

MTS-ISAC summary page (not a substitute for the official NVIC):  
https://www.mtsisac.org/post/nvic-01-20-guidelines-for-addressing-cyber-risks-at-mtsa-regulated-facilities  

---

## U.S. Coast Guard — implementation timeline (web page, not a PDF)

https://www.news.uscg.mil/maritime-commons/Article/4247529/final-rule-cybersecurity-in-the-marine-transportation-system-implementation-tim/  

---

## Other government PDF (optional) — CISA MTS resilience

https://www.cisa.gov/sites/default/files/2024-12/mts-resilience-assessment-guide-dec2024.pdf  

**Suggested local filename:** `CISA_MTS-Resilience-Assessment-Guide_2024-12.pdf`  

---

## Coast Guard contact (per public announcements)

**MTSCyberRule@uscg.mil**  

---

## Note on 403 errors

If `curl`, `wget`, or IDE tooling gets **403** from **.mil** or **.gov** sites, try: a residential or corporate network, a standard browser, disabling aggressive VPN exit nodes, or downloading from GovInfo when a **FR** or **CFR** equivalent exists (as with **2025-00708** above).
