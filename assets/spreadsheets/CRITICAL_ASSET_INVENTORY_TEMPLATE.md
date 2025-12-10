# Critical Asset Inventory Template

## Purpose

This template provides the structure for creating a critical asset inventory spreadsheet for MTSA compliance. Use this as a guide when developing your facility-specific asset inventory.

**Note**: This is a template/placeholder. Create your own Excel spreadsheet using this structure for your facility's critical asset assessment.

---

## Spreadsheet Structure

### Sheet 1: Critical Asset Inventory

| Column | Description | Example | Required |
|--------|-------------|---------|----------|
| **Asset ID** | Unique identifier for the asset | ASSET-001 | Yes |
| **Asset Name** | Common name of the asset | Vessel Traffic Management System | Yes |
| **Asset Type** | IT, OT, or Hybrid | OT | Yes |
| **System Category** | Process Control, Safety, Security, Communication, etc. | Process Control | Yes |
| **Location** | Physical location (building, area) | Control Room A | Yes |
| **Network Zone** | Network segmentation zone (if applicable) | OT Zone 1 | Optional |
| **Criticality Level** | Very High, High, Medium, Low | Very High | Yes |
| **TSI Pathway** | How compromise could lead to TSI | Disruption of vessel operations affecting port trade | Yes |
| **Trade/Commerce Impact** | Description of trade/commerce impact if compromised | Port operations shutdown, cargo handling disruption | Yes |
| **Operational Impact** | Description of operational impact | Vessel scheduling failure, cargo tracking loss | Yes |
| **Interdependencies** | Other systems that depend on this asset | Cargo Management System, Port Operations System | Optional |
| **Data Sensitivity** | Type of data handled | Vessel schedules, cargo manifests | Optional |
| **Current Security Controls** | Existing security measures | Network segmentation, access controls | Optional |
| **Vulnerabilities Identified** | Known vulnerabilities | Legacy system, no MFA | Optional |
| **Remediation Status** | Status of vulnerability remediation | In Progress | Optional |
| **Assessment Date** | Date of last assessment | 2025-01-15 | Yes |
| **Assessor** | Person who conducted assessment | John Smith | Optional |
| **Notes** | Additional notes | Requires Coast Guard confirmation | Optional |

### Sheet 2: Asset Classification Summary

| Classification | Count | Percentage | Notes |
|----------------|-------|------------|-------|
| Very High Criticality | | | |
| High Criticality | | | |
| Medium Criticality | | | |
| Low Criticality | | | |
| **Total Assets** | | 100% | |

### Sheet 3: TSI Pathway Analysis

| Asset ID | Asset Name | TSI Pathway | Trade/Commerce Impact | Assessment Status |
|----------|------------|-------------|----------------------|-------------------|
| | | | | |

### Sheet 4: Network Segmentation Map

| Zone Name | Assets in Zone | Criticality | Isolation Status | Notes |
|-----------|----------------|-------------|------------------|-------|
| OT Zone 1 | | | | |
| IT Zone 1 | | | | |
| DMZ | | | | |

---

## Assessment Criteria

### Criticality Levels

**Very High Criticality**:
- Assets essential to preventing Transportation Security Incidents (TSI)
- Compromise could directly lead to significant loss of life, environmental damage, transportation system disruption, or economic disruption
- No redundancy or backup available

**High Criticality**:
- Assets important to preventing TSI
- Compromise could contribute to TSI through cascading failures
- Limited redundancy or backup available

**Medium Criticality**:
- Assets that support critical operations but have indirect TSI pathways
- Compromise would cause operational disruption but may not directly cause TSI
- Some redundancy or backup available

**Low Criticality**:
- Assets with minimal TSI pathway
- Compromise would cause limited operational impact
- Redundancy or backup available

### TSI Pathway Assessment

For each asset, document:
1. **Direct Pathway**: How direct compromise could lead to TSI
2. **Indirect Pathway**: How compromise could contribute to TSI through other systems
3. **Trade/Commerce Impact**: Specific impact on trade/commerce (not just company operations)
4. **Regional Economic Impact**: Impact on regional economy if applicable

---

## Instructions for Use

1. **Create Excel Spreadsheet**: Create a new Excel file using this template structure
2. **Populate Asset Inventory**: List all IT and OT systems that could affect maritime operations
3. **Assess Criticality**: Use the criticality criteria to classify each asset
4. **Document TSI Pathways**: For each critical asset, document how compromise could lead to TSI
5. **Map Network Zones**: Document network segmentation and zone assignments
6. **Review and Validate**: Review with cybersecurity team and facility security officer
7. **Update Regularly**: Update inventory as systems change or new assessments are conducted

---

## Related Documents

- **Critical Asset Assessment Checklist**: `implementation/checklists/Critical_Asset_Assessment_Checklist.md`
- **Critical Assets Research**: `research/critical-assets/MTSA_Critical_Assets_Research.md`
- **TSI Trade/Commerce Interpretation**: `research/tsi-analysis/TSI_Trade_Commerce_Interpretation.md`

---

## Notes

- **Confidentiality**: This inventory contains sensitive security information. Store securely and limit access.
- **Coast Guard Review**: Critical asset inventories may be reviewed by Coast Guard during FSP approval
- **Regular Updates**: Update inventory at least annually or when significant system changes occur
- **Documentation**: Maintain assessment documentation and rationale for criticality classifications

---

*Template created: January 2025*  
*For use in MTSA critical asset assessment*

