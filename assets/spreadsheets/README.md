# Asset Inventory Spreadsheets

## Purpose

This folder contains **templates and placeholders** for critical asset inventory spreadsheets. Actual facility-specific spreadsheets are excluded from the public repository for security and confidentiality reasons.

---

## Local Workbook Types (Not in Git)

Two workbook types support MTSA compliance work locally. **Neither** is committed to this repository (`.xlsx` files are excluded via `.gitignore`). Store working copies in a secure, access-controlled location.

### 1. Combined critical asset inventory

**Purpose:** Unified inventory of critical IT and OT systems, cross-mapping between lists, and TSI pathway documentation.

**Typical sheets:** Critical IT systems, critical OT systems, combined mapping, classification summaries.

**Repository alignment:** Structure and guidance are reflected in `CRITICAL_ASSET_INVENTORY_TEMPLATE.md` and related research/checklist documents. A populated combined workbook may exist locally for active assessments but is **not** version-controlled here.

### 2. CFR33 Concerns workbook

**Purpose:** Working register of Subpart F definitions, open regulatory questions, reportable cyber incident (RCI) decision examples, and key compliance dates.

**Typical sheets:** Definitions, concern register (topic / CFR cite / question / status), cyber incident decision examples, milestone dates.

**Status:** **Privileged local working document only** — not published in git. Use it to track interpretation questions pending Coast Guard or counsel confirmation; migrate **generic, sanitized** conclusions into repository markdown (implementation guides, research notes, checklists) when ready.

**Do not commit:** Site names, organization identifiers, SharePoint or document-management paths, reviewer initials, or facility-specific scoping decisions.

---

## Templates Available

### Critical Asset Inventory Template
- **File**: `CRITICAL_ASSET_INVENTORY_TEMPLATE.md`
- **Purpose**: Template structure for creating facility-specific critical asset inventory spreadsheets
- **Use**: Reference this template when developing your own Excel spreadsheet for critical asset assessment

---

## Why Templates Instead of Actual Spreadsheets?

1. **Security**: Actual asset inventories contain sensitive security information about facility systems
2. **Confidentiality**: Asset inventories may reveal system architecture and security postures
3. **Facility-Specific**: Each facility needs its own customized inventory based on its unique systems
4. **Compliance**: Asset inventories are facility-specific and should not be shared publicly

---

## How to Use

1. **Review Template**: Review `CRITICAL_ASSET_INVENTORY_TEMPLATE.md` to understand the required structure
2. **Create Your Spreadsheet**: Create a new Excel spreadsheet using the template structure
3. **Populate with Your Data**: Fill in your facility-specific asset information
4. **Store Securely**: Keep your actual spreadsheet in a secure, access-controlled location
5. **Update Regularly**: Update your inventory as systems change or new assessments are conducted

---

## Template Structure

The template includes:

- **Sheet 1: Critical Asset Inventory** - Main inventory with asset details, criticality, TSI pathways
- **Sheet 2: Asset Classification Summary** - Summary statistics by criticality level
- **Sheet 3: TSI Pathway Analysis** - Detailed TSI pathway documentation
- **Sheet 4: Network Segmentation Map** - Network zone mapping and isolation status

---

## Related Documents

- **Concern register template**: `../../implementation/checklists/Subpart_F_Concern_Register_Template.md`
- **Critical Asset Assessment Checklist**: `../../implementation/checklists/Critical_Asset_Assessment_Checklist.md`
- **Critical Assets Research**: `../../research/critical-assets/MTSA_Critical_Assets_Research.md`
- **TSI Trade/Commerce Interpretation**: `../../research/tsi-analysis/TSI_Trade_Commerce_Interpretation.md`

---

## Notes

- Actual Excel spreadsheets (`.xlsx` files) are excluded from this repository via `.gitignore`
- **Combined inventory** and **CFR33 Concerns** workbooks are **local-only** (see [Local Workbook Types](#local-workbook-types-not-in-git))
- Use the template as a starting point, but customize for your facility's specific needs
- Maintain your actual spreadsheets in a secure, access-controlled location
- Consider version control for your actual spreadsheets in a private repository or secure document management system

---

*Templates provided for MTSA compliance support*

