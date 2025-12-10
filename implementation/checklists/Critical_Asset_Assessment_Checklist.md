# Critical Asset Assessment Checklist for MTSA Compliance

## Quick Reference: Is an Asset Critical?

An asset is **critical** if its compromise could lead to a **Transportation Security Incident (TSI)**:
- ✓ Significant loss of life
- ✓ Environmental damage
- ✓ Transportation system disruption
- ✓ Economic disruption in a particular area

---

## Assessment Checklist

### Phase 1: Asset Inventory

- [ ] Compile comprehensive list of all IT systems
- [ ] Compile comprehensive list of all OT systems
- [ ] Document network diagrams
- [ ] Document existing cybersecurity policies
- [ ] Identify all systems impacting maritime operations
- [ ] Map system interdependencies

### Phase 2: Risk Assessment

For each asset, evaluate:

#### Operational Impact
- [ ] Is this asset essential to maritime operations?
- [ ] Would compromise disrupt critical processes?
- [ ] Is this asset required for safety functions?
- [ ] Is this asset required for security functions?

#### TSI Potential
- [ ] Could compromise lead to significant loss of life?
- [ ] Could compromise lead to environmental damage?
- [ ] Could compromise lead to transportation system disruption?
- [ ] Could compromise lead to economic disruption?

#### System Characteristics
- [ ] Does this asset control or monitor physical processes?
- [ ] Is this asset connected to systems managing COI?
- [ ] Does this asset handle sensitive data?
- [ ] Is this asset critical to preventing incidents?
- [ ] Is this asset critical to responding to incidents?

#### Interdependencies
- [ ] Would failure adversely affect other critical systems?
- [ ] Are other systems dependent on this asset?
- [ ] Could compromise cause cascading failures?

#### Foreign-Located Systems (e.g., Cloud, SaaS, International Systems)
**Note**: Geographic location does NOT exclude systems from being critical. Assess based on impact on U.S. operations.

- [ ] Is the system integral to U.S. maritime facility operations?
- [ ] Could a disruption impact vessel operations, cargo handling, or facility security?
- [ ] Does the system manage data critical to preventing TSIs?
- [ ] Could compromise lead to mismanagement of hazardous materials?
- [ ] Could errors or manipulation lead to safety incidents?
- [ ] Is the system connected to or required by systems at U.S. facilities?
- [ ] What visibility do you have into the system's security?
- [ ] Can you implement security measures or only rely on vendor controls?
- [ ] How would you detect a compromise?
- [ ] What backup and contingency capabilities exist?
- [ ] Can U.S. maritime facilities operate without this system?
- [ ] How long could operations continue if the system were unavailable?

### Phase 3: Classification

Classify each asset as:

- [ ] **Very High Criticality**: Essential to business survival; compromise = catastrophic consequences
- [ ] **High Criticality**: Compromise = significant operational disruption
- [ ] **Medium Criticality**: Important but not vital; moderate impact
- [ ] **Low Criticality**: Minimal impact if compromised

**Note**: Focus on Very High and High criticality assets for TSI prevention.

### Phase 4: Documentation

- [ ] Document asset criticality classification
- [ ] Document rationale for each classification
- [ ] Document identified vulnerabilities
- [ ] Document potential TSI pathways
- [ ] Update Facility Security Assessment (FSA)
- [ ] Update Facility Security Plan (FSP) or Alternative Security Program (ASP)

### Phase 5: Cybersecurity Plan

- [ ] Address identified vulnerabilities in FSP/ASP
- [ ] Align with NIST Cybersecurity Framework
- [ ] Include measures to protect critical assets
- [ ] Establish incident response procedures
- [ ] Define reporting requirements
- [ ] Set up regular review schedule

---

## Common Critical Asset Categories

### Operational Technology (OT)
- [ ] Process control systems (SCADA, DCS)
- [ ] Safety systems (emergency shutdown, fire suppression)
- [ ] Environmental monitoring systems
- [ ] Vessel traffic management systems
- [ ] Cargo handling systems
- [ ] Loading/unloading systems

### Information Technology (IT)
- [ ] Systems supporting OT operations
- [ ] Security systems (access control, surveillance)
- [ ] Communication systems critical to operations
- [ ] Systems managing COI data
- [ ] Emergency response systems
- [ ] Incident reporting systems
- [ ] **Logistics/ERP systems (e.g., SAP)** - Assess if foreign-located
- [ ] Cloud-based systems supporting operations
- [ ] Third-party managed systems critical to operations

### Infrastructure
- [ ] Network infrastructure supporting critical systems
- [ ] Power systems for critical operations
- [ ] Communication infrastructure
- [ ] Physical security infrastructure

---

## Red Flags: Likely Critical Assets

An asset is likely critical if it:

- ✓ Directly controls physical processes involving chemicals
- ✓ Manages emergency shutdown or safety systems
- ✓ Handles vessel traffic or cargo operations
- ✓ Supports environmental monitoring or response
- ✓ Is required for regulatory compliance reporting
- ✓ Would cause cascading failures if compromised
- ✓ Is identified in your Facility Security Plan
- ✓ **Is integral to logistics/operations even if located outside the U.S.**
- ✓ **Manages data critical to preventing TSIs regardless of location**

---

## Cyber Scope Limitation Assessment

### Network Segmentation and Isolation

If you want to limit cyber scope (similar to physical TWIC isolation), assess:

#### Network Architecture
- [ ] Are shipping operations on a separate network segment?
- [ ] Is there physical or logical isolation from non-shipping systems?
- [ ] Are network boundaries clearly defined and documented?
- [ ] Are firewalls/ACLs preventing unauthorized access between zones?
- [ ] Is network monitoring in place to detect unauthorized connections?

#### Operational Independence
- [ ] Can shipping operations function if non-shipping systems fail?
- [ ] Are there manual or alternative processes that don't require non-shipping systems?
- [ ] What is the maximum acceptable downtime for non-shipping systems?
- [ ] Are there redundant systems within the shipping network?
- [ ] Have you tested operational independence?

#### Dependency Analysis
- [ ] Are there no critical operational dependencies on non-shipping systems?
- [ ] Have you mapped all system interdependencies?
- [ ] Are shared infrastructure components (DNS, domain controllers) isolated?
- [ ] Do third-party systems have unexpected connections?
- [ ] Are data flows restricted and documented?

#### Documentation for FSP
- [ ] Network topology diagrams showing isolation
- [ ] System inventory categorizing shipping vs. non-shipping
- [ ] Interconnection diagrams showing no critical paths
- [ ] Security control documentation for each zone
- [ ] Evidence that non-shipping systems cannot contribute to TSI
- [ ] Change management procedures maintaining isolation

#### Coast Guard Engagement
- [ ] Have you discussed scope limitation approach with Coast Guard?
- [ ] Is your isolation strategy documented in FSP?
- [ ] Can you demonstrate effective isolation controls?
- [ ] Have you validated isolation through testing?

**Key Principle**: To limit scope, you must prove that non-shipping systems **cannot contribute to a Transportation Security Incident**.

---

## Resources

- **CISA MASA**: https://www.cisa.gov/resources-tools/services/multi-asset-and-system-assessment-masa
- **Coast Guard NVIC 01-20**: Guidelines for addressing cyber risks
- **NIST Cybersecurity Framework**: Framework for Improving Critical Infrastructure Cybersecurity
- **MTS-ISAC**: Maritime Transportation System Information Sharing and Analysis Center

---

## Next Steps

1. Complete asset inventory
2. Conduct risk assessment using this checklist
3. Classify assets by criticality
4. Document findings
5. Update FSP/ASP with cybersecurity measures
6. Engage with CISA MASA program for assessment
7. Consult with Coast Guard for specific guidance
8. Establish ongoing review process

---

## Verified References

### ⚠️ CRITICAL: License to Operate Impact

**This checklist is based on verified research and regulatory requirements. See `VERIFIED_REFERENCES.md` for complete source mapping.**

### Primary Sources

1. **TSI Definition - 33 CFR 101.105**
   - **Source**: https://www.govregs.com/regulations/title33_chapterI_part101_subpartA_section101.105
   - **Status**: ✅ VERIFIED - Official regulatory definition

2. **MTSA Final Rule**
   - **Source**: U.S. Coast Guard Final Rule "Cybersecurity in the Marine Transportation System"
   - **Citation**: 33 CFR Part 101
   - **Status**: ✅ VERIFIED - Official regulatory requirement

3. **Research Documents**
   - Based on verified research in `research/critical-assets/MTSA_Critical_Assets_Research.md`
   - Based on verified TSI analysis in `research/tsi-analysis/TSI_Trade_Commerce_Interpretation.md`

### Complete Reference Mapping

**For complete verified references, see**: `VERIFIED_REFERENCES.md`

---

*Use this checklist in conjunction with the full research document: MTSA_Critical_Assets_Research.md*

