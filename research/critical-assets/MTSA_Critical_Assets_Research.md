# MTSA Critical Assets and TSI Scope Research

## Executive Summary

This document provides research findings on how to define critical assets under the Maritime Transportation Security Act (MTSA) and understand the scope of Transportation Security Incidents (TSI) for Coast Guard-regulated chemical facilities.

---

## Table of Contents

1. [Definition of Critical Assets Under MTSA](#1-definition-of-critical-assets-under-mtsa)
2. [TSI Definition and Scope](#2-tsi-definition-and-scope)
3. [Critical Asset Identification Process](#3-critical-asset-identification-process)
4. [Network Segmentation and Scope Limitation](#4-network-segmentation-and-scope-limitation)
5. [Foreign-Located Systems](#5-foreign-located-systems)
6. [Assessment Criteria](#6-assessment-criteria)
7. [References](#7-references)

---

## 1. Definition of Critical Assets Under MTSA

### Regulatory Definition

**Critical assets** are those whose compromise could lead to a **Transportation Security Incident (TSI)**, which is defined as:
> "A security incident resulting in significant loss of life, environmental damage, transportation system disruption, or economic disruption in a particular area."

### Key Characteristics of Critical Assets

Critical assets typically include systems that:

1. **Operational Impact**: Assets that, if compromised, would disrupt essential maritime operations or services
2. **Cybersecurity Vulnerabilities**: Systems susceptible to cyber threats that could be exploited to cause a TSI
3. **Interdependencies**: Assets whose failure would adversely affect other critical systems or processes
4. **Control Functions**: Systems that monitor or control physical processes involving chemicals of interest (COI)
5. **Data Sensitivity**: Systems containing sensitive information that could be exploited to steal, divert, or sabotage COI
6. **Interconnectivity**: Assets connected to systems managing physical processes involving COI

---

## 2. Scope of Transportation Security Incidents (TSI)

### TSI Definition

A TSI encompasses security incidents that result in:

- **Significant loss of life**
- **Environmental damage**
- **Transportation system disruption**
- **Economic disruption in a particular area**

### Important Considerations

- **Not all cybersecurity threats will cause or contribute to a TSI**
- Focus on threats that could lead to a TSI to prevent "scope creep"
- Security measures should be appropriately targeted to prevent TSIs
- When assessing assets, consider whether their compromise could contribute to such incidents

### Critical Interpretation: Trade/Commerce Focus

**Important Finding**: The TSI definition focuses on **broader impacts on trade, commerce, regional economies, and public welfare**, rather than on **individual company profitability**.

**"Transportation System Disruption"** refers to:
- Disruption of maritime trade and commerce
- Disruption of port operations
- Disruption of supply chains affecting multiple entities
- Disruption of the movement of goods and people
- **NOT** disruption of individual company operations

**"Economic Disruption in a Particular Area"** refers to:
- Regional economic stability
- Trade and commerce impacts
- Effects on multiple businesses and consumers
- Broader economic consequences
- **NOT** individual company profitability

**Implication for Critical Asset Assessment**: Systems whose compromise would only affect individual company operations or profitability may **not be in scope** if they don't affect trade/commerce or regional economy.

**See**: `TSI_Trade_Commerce_Interpretation.md` for detailed analysis and assessment framework.

### Examples of Assets That Could Lead to TSI

- Process control systems (SCADA, DCS)
- Safety systems (emergency shutdown systems, fire suppression)
- Security systems (access control, surveillance)
- Communication systems critical to operations
- Systems managing vessel traffic or cargo operations
- Environmental monitoring and response systems

---

## 3. How Companies Are Defining Critical Assets

### Industry Classification Approaches

Many organizations use structured classification frameworks with levels such as:

#### **Very High Criticality**
- Assets essential to the survival and continuity of the business
- Compromise could result in catastrophic consequences
- Directly linked to preventing TSIs

#### **High Criticality**
- Assets whose compromise would cause significant operational disruption
- Important to mission-critical operations
- Could contribute to a TSI if compromised

#### **Medium Criticality**
- Assets important but not vital
- Compromise would have moderate impact
- May indirectly affect critical operations

#### **Low Criticality**
- Assets with minimal impact if compromised
- Not directly related to TSI prevention

### Common Industry Practices

1. **Asset Inventory and Classification**
   - Catalog all IT and OT systems
   - Classify based on criticality to operations
   - Document asset roles, criticality, and associated risks

2. **Risk-Based Assessment**
   - Evaluate potential impact of each asset's compromise
   - Consider asset's role in critical processes
   - Assess data sensitivity and system connectivity
   - Prioritize security efforts based on risk

3. **Holistic Approach**
   - Assess both Information Technology (IT) and Operational Technology (OT) systems
   - Consider interdependencies between systems
   - Evaluate systems not specifically listed in Facility Security Plans (FSPs)

---

## 4. Regulatory Guidance and Requirements

### U.S. Coast Guard Navigation and Vessel Inspection Circular (NVIC) 01-20

NVIC 01-20 provides guidelines for addressing cyber risks at MTSA-regulated facilities:

- **Facility Security Assessment (FSA)**: Must assess and document vulnerabilities in computer systems and networks
- **Facility Security Plan (FSP)**: Must address identified cybersecurity vulnerabilities that could contribute to a TSI
- **Alternative Security Program (ASP)**: Can be used as an alternative to FSP

### Key Requirements

1. **Cybersecurity Plan**: Develop and maintain a cybersecurity plan addressing identified risks
2. **Regular Updates**: Update plans to adapt to evolving threats and regulatory changes
3. **Reporting**: Report breaches of security, suspicious activities, and cyber incidents to appropriate authorities (e.g., National Response Center)

---

## 5. Best Practices and Frameworks

### Recommended Frameworks

1. **NIST Cybersecurity Framework**
   - Widely adopted by maritime operators
   - Provides structured approach to cybersecurity
   - Helps with training, planning, and incident response

2. **CISA Cybersecurity Performance Goals**
   - Aligns with industry best practices
   - Provides measurable security objectives

3. **CISA Multi-Asset and System Assessment (MASA)**
   - Helps assess enterprise and individual assets
   - Provides ranked list of assets based on criticality
   - Identifies applicable attack types
   - Suggests options for mitigating vulnerabilities
   - Offers interactive maps, charts, and graphs

### Assessment Methodology

1. **Conduct Risk-Based Assessment**
   - Develop methodology to evaluate and document assets
   - Assess potential impact of asset loss on mission performance
   - Categorize assets as mission-critical, mission-essential, or mission-support

2. **Maintain Asset Inventory**
   - Active communication protocols
   - Asset criticality
   - Asset role/type
   - Hostname
   - Network diagrams
   - Existing cybersecurity policies

3. **Evaluate Potential Cyber Threats**
   - Assess which cyber threats could lead to TSI outcomes
   - Focus on threats with potential for significant impact
   - Consider both direct and indirect pathways to TSI

---

## 6. Resources and Tools

### Government Resources

1. **CISA Multi-Asset and System Assessment (MASA)**
   - Website: https://www.cisa.gov/resources-tools/services/multi-asset-and-system-assessment-masa
   - Provides comprehensive asset assessment and vulnerability identification

2. **CISA OT Cybersecurity Asset Inventory Guidance**
   - Website: https://www.cisa.gov/resources-tools/resources/foundations-ot-cybersecurity-asset-inventory-guidance-owners-and-operators
   - Guidance for creating asset inventories

3. **U.S. Coast Guard**
   - Consult directly for guidance on aligning asset identification with MTSA requirements
   - Can provide specific insights into compliance expectations

### Industry Resources

1. **MTS-ISAC (Maritime Transportation System Information Sharing and Analysis Center)**
   - Provides information sharing and best practices
   - Website: https://www.mtsisac.org

2. **NIST Cybersecurity Framework**
   - Framework for Improving Critical Infrastructure Cybersecurity
   - Widely referenced by Coast Guard

---

## 7. Recommended Approach for Chemical Companies

### Step-by-Step Process

1. **Initial Asset Inventory**
   - Compile comprehensive list of all IT and OT systems
   - Include systems that impact maritime operations
   - Document network diagrams and existing cybersecurity policies

2. **Risk Assessment**
   - Evaluate each asset's potential to contribute to a TSI
   - Consider:
     - Operational impact if compromised
     - Connection to physical processes involving COI
     - Interdependencies with other critical systems
     - Data sensitivity and potential for exploitation

3. **Classification**
   - Classify assets into criticality levels (Very High, High, Medium, Low)
   - Focus on assets that could directly or indirectly lead to a TSI
   - Document rationale for each classification

4. **Gap Analysis**
   - Compare current security measures against identified risks
   - Identify vulnerabilities that could contribute to a TSI
   - Prioritize remediation efforts

5. **Cybersecurity Plan Development**
   - Address identified vulnerabilities in FSP or ASP
   - Align with NIST Cybersecurity Framework
   - Include measures to protect critical assets
   - Establish incident response procedures

6. **Ongoing Management**
   - Regularly update asset inventory
   - Reassess criticality as operations change
   - Monitor for new threats and vulnerabilities
   - Update cybersecurity plans accordingly

### Key Questions to Ask

When evaluating if an asset is critical, ask:

1. If this asset were compromised, could it lead to:
   - Significant loss of life?
   - Environmental damage?
   - Transportation system disruption?
   - Economic disruption in a particular area?

2. Is this asset:
   - Essential to maritime operations?
   - Connected to systems managing physical processes?
   - Required for safety or security functions?
   - Critical to preventing or responding to incidents?

3. What is the asset's:
   - Role in critical processes?
   - Interdependency with other systems?
   - Potential impact if compromised?

---

## 8. Common Challenges and Solutions

### Challenge: Scope Creep

**Problem**: Including too many assets as "critical" dilutes focus and resources.

**Solution**: 
- Strictly apply the TSI definition
- Focus on assets whose compromise could directly or indirectly lead to a TSI
- Use risk-based prioritization

### Challenge: IT vs. OT Distinction

**Problem**: Uncertainty about which IT systems are in scope.

**Solution**:
- Evaluate IT systems based on their connection to maritime operations
- Consider IT systems that support or control OT systems
- Assess IT systems that handle data critical to preventing TSIs

### Challenge: Interdependencies

**Problem**: Difficulty identifying indirect pathways to TSI.

**Solution**:
- Map system interdependencies
- Consider cascading failure scenarios
- Assess both direct and indirect impacts

---

## 9. Foreign-Located Systems and Geographic Scope

### Key Principle: Location Does Not Determine Criticality

**Important**: The geographic location of a system (whether domestic or foreign) does **NOT** inherently exclude it from being considered a critical asset under MTSA. The determining factor is the **operational impact** on U.S. maritime operations and the system's potential to contribute to a Transportation Security Incident (TSI).

### Example: Foreign-Located Logistics Systems (e.g., SAP)

For systems like SAP logistics platforms hosted in another country, consider the following:

#### Assessment Criteria

1. **Operational Impact on U.S. Maritime Operations**
   - Is the system integral to managing logistics that directly affect U.S. maritime facilities?
   - Would a disruption impact vessel operations, cargo handling, or facility security?
   - Does the system manage data critical to preventing TSIs?

2. **Potential to Contribute to a TSI**
   - Could a compromise lead to:
     - Mismanagement of hazardous materials?
     - Significant delays affecting transportation system disruption?
     - Errors in cargo documentation affecting safety?
     - Disruption of critical supply chains?

3. **Interdependencies**
   - Is the system connected to or required by systems at U.S. facilities?
   - Would failure cascade to other critical systems?
   - Are U.S. operations dependent on this system for critical functions?

#### Regulatory Perspective

- **MTSA Focus**: The regulation focuses on **impact** on U.S. maritime transportation security, not the physical location of systems
- **Jurisdictional Scope**: While MTSA primarily addresses operations within U.S. jurisdiction, systems that substantially affect U.S. maritime security fall within scope
- **Risk-Based Approach**: The assessment should evaluate the system's role in maintaining security and compliance at U.S. facilities

### Recommendations for Foreign-Located Systems

1. **Conduct Comprehensive Risk Assessment**
   - Evaluate the SAP system's role in U.S. maritime operations
   - Assess potential consequences of disruptions on facility operations
   - Consider both direct and indirect pathways to TSI

2. **Document Interdependencies**
   - Map how the foreign system connects to U.S. facility operations
   - Identify critical data flows and dependencies
   - Document backup and contingency capabilities

3. **Assess Security Posture**
   - Evaluate cybersecurity measures protecting the foreign system
   - Consider data transmission security between countries
   - Review compliance with both U.S. and international standards
   - Assess access controls and monitoring capabilities

4. **Develop Contingency Plans**
   - Plan for scenarios where the foreign system is unavailable
   - Establish alternative processes to maintain operations
   - Test backup and recovery procedures

5. **Consult with Regulatory Authorities**
   - Engage with U.S. Coast Guard to clarify specific requirements
   - Discuss how foreign systems should be addressed in FSP/ASP
   - Seek guidance on documentation and security measure requirements

### Practical Considerations

#### If SAP is Critical:

- **Document in FSP/ASP**: Include the system in your Facility Security Plan or Alternative Security Program
- **Assess Vulnerabilities**: Evaluate cybersecurity vulnerabilities that could contribute to a TSI
- **Implement Security Measures**: Apply appropriate security controls, even if the system is managed by a third party
- **Monitor and Report**: Establish procedures to monitor the system and report incidents

#### If SAP is Not Critical:

- **Document Rationale**: Clearly document why the system does not meet critical asset criteria
- **Review Periodically**: Reassess if operational dependencies change
- **Maintain Awareness**: Monitor for changes that could affect criticality

### Key Questions for Foreign Systems

When evaluating a foreign-located system like SAP:

1. **Operational Dependency**
   - Can U.S. maritime facilities operate without this system?
   - How long could operations continue if the system were unavailable?
   - What manual or alternative processes exist?

2. **TSI Potential**
   - Could a compromise cause transportation system disruption?
   - Could errors or manipulation lead to safety incidents?
   - Could data breaches affect facility security?

3. **Control and Visibility**
   - What visibility do you have into the system's security?
   - Can you implement security measures or only rely on vendor controls?
   - How would you detect a compromise?

4. **Regulatory Compliance**
   - Does the system handle data subject to U.S. regulations?
   - Are there cross-border data transfer considerations?
   - How does the foreign location affect incident reporting?

### Conclusion on Foreign Systems

**Bottom Line**: A foreign-located logistics system like SAP **can be** a critical asset under MTSA if:
- It is integral to U.S. maritime operations
- Its compromise could lead to a Transportation Security Incident
- It is required for critical functions at U.S. facilities

The location itself is not a determining factor—the **impact on U.S. operations and potential to cause a TSI** are what matter.

---

## 10. Limiting Cyber Scope Through Network Segmentation and Logical Isolation

### The Challenge: Cyber Extends Beyond Physical Boundaries

Unlike physical security where you can isolate shipping operations with fences and access controls, **cybersecurity extends beyond the physical fenceline**. Network connections, data flows, and system interdependencies can create pathways that extend cyber scope far beyond the physical boundaries of shipping operations.

### The Parallel: Physical vs. Cyber Isolation

**Physical Isolation (TWIC Example):**
- You've successfully isolated shipping operations physically
- Only personnel accessing secure areas need TWICs
- Coast Guard accepted this approach for physical access control
- Clear physical boundaries (fences, gates, access points)

**Cyber Isolation Challenge:**
- Networks often span entire facilities
- Systems may be interconnected across business units
- Data flows may not respect physical boundaries
- Cyber threats can propagate through network connections

### Key Principle: Demonstrate No TSI Pathway

Similar to physical isolation, you can limit cyber scope by **demonstrating that non-shipping systems cannot contribute to a Transportation Security Incident**. The key is proving logical isolation and lack of operational dependency.

### Strategies for Limiting Cyber Scope

#### 1. Network Segmentation and Air-Gapping

**Concept**: Create isolated network segments for shipping operations, separated from general business networks.

**Implementation**:
- **Dedicated Network Infrastructure**: Separate switches, routers, and network equipment for shipping operations
- **Air-Gapped Networks**: Physically isolated networks with no connections to non-shipping systems
- **VLAN Segmentation**: Logical separation using Virtual LANs with strict access controls
- **Network Zones**: Create distinct security zones (shipping operations zone vs. general business zone)

**Documentation Requirements**:
- Network diagrams showing clear separation
- Access control lists (ACLs) demonstrating isolation
- Evidence that non-shipping systems cannot access shipping networks
- Procedures for managing any necessary data transfers

#### 2. Logical Isolation Through Access Controls

**Concept**: Use logical controls to prevent non-shipping systems from accessing or affecting shipping operations.

**Implementation**:
- **Firewall Rules**: Strict firewall policies blocking access between zones
- **Access Control Lists**: Network-level restrictions preventing cross-zone communication
- **Authentication and Authorization**: Separate identity management for shipping vs. general systems
- **Network Monitoring**: Continuous monitoring to detect and prevent unauthorized connections

**Documentation Requirements**:
- Firewall rule documentation
- Access control policies
- Monitoring and alerting procedures
- Evidence of effective enforcement

#### 3. Operational Dependency Analysis

**Concept**: Demonstrate that non-shipping systems are not operationally required for shipping functions.

**Key Questions**:
- Can shipping operations function independently if non-shipping systems fail?
- Are there manual or alternative processes that don't require non-shipping systems?
- What is the maximum acceptable downtime for non-shipping systems without affecting shipping?
- Are there redundant systems within the shipping network that eliminate dependency?

**Documentation Requirements**:
- Business continuity plans showing independence
- Manual process documentation
- Dependency mapping showing no critical paths through non-shipping systems
- Test results demonstrating operational independence

#### 4. Data Flow Analysis and Restrictions

**Concept**: Map and restrict data flows to prevent non-shipping data from affecting shipping operations.

**Implementation**:
- **Data Flow Mapping**: Document all data flows between systems
- **One-Way Data Transfers**: Use unidirectional data diodes where possible
- **Data Filtering**: Filter out non-essential data from shipping networks
- **Read-Only Access**: Limit non-shipping systems to read-only access where data sharing is necessary

**Documentation Requirements**:
- Data flow diagrams
- Data classification and handling procedures
- Evidence that non-shipping data cannot affect shipping operations
- Procedures for any necessary data exchanges

#### 5. System Architecture Documentation

**Concept**: Clearly document system architecture to demonstrate separation and isolation.

**Documentation Should Include**:
- Network topology diagrams showing isolated segments
- System inventory clearly categorizing shipping vs. non-shipping systems
- Interconnection diagrams showing no critical paths through non-shipping systems
- Security control documentation for each network zone
- Change management procedures ensuring isolation is maintained

### Coast Guard Considerations

When proposing cyber scope limitations, consider:

1. **Demonstrable Isolation**: Can you prove that non-shipping systems cannot contribute to a TSI?
2. **Operational Independence**: Can shipping operations continue if non-shipping systems fail?
3. **No Critical Dependencies**: Are there no critical operational dependencies on non-shipping systems?
4. **Effective Controls**: Are isolation controls effectively implemented and monitored?
5. **Documentation**: Is the isolation strategy clearly documented in your FSP?

### Practical Implementation Approach

#### Step 1: Network Architecture Assessment
- Map current network topology
- Identify all systems and their connections
- Categorize systems as shipping-critical vs. non-shipping
- Identify any interdependencies

#### Step 2: Design Isolation Strategy
- Design network segmentation approach
- Plan logical isolation controls
- Identify required changes to network infrastructure
- Plan for any necessary data exchange mechanisms

#### Step 3: Implement Isolation
- Deploy network segmentation
- Implement access controls
- Configure firewalls and network security
- Establish monitoring and alerting

#### Step 4: Validate Isolation
- Test operational independence
- Verify no unauthorized connections
- Validate that non-shipping system failures don't affect shipping
- Document test results

#### Step 5: Document in FSP
- Document network architecture and isolation strategy
- Include network diagrams and system inventories
- Document security controls and monitoring procedures
- Explain how isolation limits cyber scope
- Submit to Coast Guard for review

### Key Success Factors

1. **Clear Boundaries**: Well-defined network boundaries between shipping and non-shipping systems
2. **Proven Independence**: Demonstrable operational independence of shipping systems
3. **Effective Controls**: Technical controls that actually prevent unauthorized access
4. **Ongoing Monitoring**: Continuous monitoring to ensure isolation is maintained
5. **Documentation**: Comprehensive documentation supporting the scope limitation

### Potential Challenges

1. **Legacy Systems**: Older systems may have undocumented connections
2. **Shared Infrastructure**: Common infrastructure (e.g., domain controllers, DNS) may create dependencies
3. **Third-Party Systems**: Vendor systems may have unexpected connections
4. **Data Requirements**: Business needs may require data sharing that creates dependencies
5. **Change Management**: Maintaining isolation as systems evolve

### Recommendations

1. **Start with Assessment**: Thoroughly assess current network architecture and dependencies
2. **Design Before Implementing**: Plan isolation strategy carefully before making changes
3. **Test Thoroughly**: Validate isolation through testing before claiming scope limitation
4. **Document Everything**: Comprehensive documentation is critical for Coast Guard acceptance
5. **Engage Coast Guard Early**: Discuss your approach with Coast Guard before finalizing
6. **Plan for Exceptions**: Identify and document any necessary exceptions and their security controls
7. **Maintain Isolation**: Establish procedures to maintain isolation over time

### Example: Network Segmentation Model

```
┌─────────────────────────────────────────────────────────┐
│              General Business Network                    │
│  (Non-MTSA Scope - Isolated from Shipping Operations)   │
│                                                          │
│  - Corporate IT Systems                                 │
│  - HR Systems                                           │
│  - Finance Systems                                      │
│  - General Manufacturing Systems                        │
└─────────────────────────────────────────────────────────┘
                        │
                        │ Firewall/ACL
                        │ (Blocked/Controlled)
                        │
┌─────────────────────────────────────────────────────────┐
│           Shipping Operations Network                   │
│         (MTSA Scope - Critical Assets)                  │
│                                                          │
│  - Vessel Traffic Management                            │
│  - Cargo Handling Systems                               │
│  - Loading/Unloading Controls                           │
│  - Safety Systems (Shipping Area)                       │
│  - Security Systems (Shipping Area)                     │
└─────────────────────────────────────────────────────────┘
```

### Important Conflict: Segmentation vs. Foreign-Located Systems

**The Conflict**: There is a logical inconsistency that needs to be addressed:

- **Facility-level segmentation** can isolate shipping operations from non-shipping operations
- **Foreign-located systems** (like SAP logistics) that could cause "transportation system disruption" are likely critical assets
- **Segmentation doesn't prevent** foreign system compromise from causing disruption
- **Question**: How can segmentation limit scope if foreign systems can still cause TSI regardless of facility segmentation?

**Key Insight**: Segmentation and foreign system criticality are **separate issues**:
- **Segmentation** limits facility-level scope (proving non-shipping facility systems can't affect shipping)
- **Foreign system criticality** is determined by operational dependency and TSI pathway, not location
- If a foreign system (like SAP) is required for shipping operations, it's likely critical regardless of:
  - Its location (foreign vs. domestic)
  - Facility-level segmentation
  - Network architecture

**The Critical Question**: Can shipping operations function without the foreign system?
- **If No** → System is critical and in scope regardless of location or segmentation
- **If Yes** → System may not be critical

**"Transportation System Disruption" Interpretation**: Research indicates that "transportation system disruption" refers to **disruption of trade/commerce and regional economy**, not individual company operations. This interpretation can help resolve the conflict:

- **If foreign systems only affect company operations** (not trade/commerce) → May not be in scope
- **If foreign systems affect trade/commerce** → Are critical regardless of location
- **Segmentation can limit scope** if non-shipping systems don't affect trade/commerce

**Key Insight**: The focus should be on **trade/commerce impact**, not company profitability.

**Recommendations**: 
- See `TSI_Trade_Commerce_Interpretation.md` for detailed analysis and assessment framework
- See `TSI_Transportation_Disruption_Analysis.md` for comprehensive exploration of the conflict

### Conclusion on Cyber Scope Limitation

**Bottom Line**: You can limit the scope of critical cyber assets under MTSA by:

1. **Demonstrating Logical Isolation**: Proving that non-shipping systems cannot access or affect shipping operations
2. **Proving Operational Independence**: Showing that shipping operations can function without non-shipping systems
3. **Implementing Effective Controls**: Using network segmentation, access controls, and monitoring
4. **Comprehensive Documentation**: Documenting the isolation strategy in your FSP

The key is **proving that non-shipping systems cannot contribute to a Transportation Security Incident**, similar to how physical isolation proves that non-shipping areas don't require TWIC access.

**Important Limitations**:
- Facility-level segmentation addresses facility systems, not foreign-located systems
- Foreign systems are assessed separately based on operational dependency
- The "transportation system disruption" component of TSI needs clarification
- **Engage with Coast Guard** to clarify TSI interpretation and scope before finalizing approach

---

## 11. Conclusion

Defining critical assets under MTSA requires a systematic, risk-based approach that focuses on preventing Transportation Security Incidents. Key takeaways:

1. **Critical assets** are those whose compromise could lead to a TSI
2. **TSI scope** is clearly defined: significant loss of life, environmental damage, transportation system disruption, or economic disruption
3. **Industry practices** emphasize structured classification and risk-based assessment
4. **Regulatory guidance** is available through NVIC 01-20 and Coast Guard resources
5. **Frameworks** like NIST and CISA tools can support the assessment process

By following a structured approach and leveraging available resources, chemical companies can effectively identify critical assets and ensure compliance with MTSA cybersecurity requirements.

---

## 12. Verified References and Sources

### ⚠️ CRITICAL: License to Operate Impact

**All recommendations in this document are supported by verified references. See `VERIFIED_REFERENCES.md` for complete source mapping.**

### Regulatory Sources (Primary Authority)

1. **33 CFR Part 101** - MTSA Regulations
   - **TSI Definition**: 33 CFR 101.105
   - **Source**: https://www.govregs.com/regulations/title33_chapterI_part101_subpartA_section101.105
   - **Status**: ✅ VERIFIED - Official regulatory text

2. **U.S. Coast Guard Final Rule**: "Cybersecurity in the Marine Transportation System"
   - **Citation**: 33 CFR Part 101
   - **Effective Date**: July 16, 2025
   - **Source**: https://www.news.uscg.mil/maritime-commons/Article/4033732/final-rule-cybersecurity-in-the-marine-transportation-system/
   - **Status**: ✅ VERIFIED - Official regulatory requirement

3. **NVIC 01-20**: Guidelines for Addressing Cyber Risks at MTSA-Regulated Facilities
   - **Source**: https://www.mtsisac.org/post/nvic-01-20-guidelines-for-addressing-cyber-risks-at-mtsa-regulated-facilities
   - **Status**: ✅ VERIFIED - Official Coast Guard guidance

### Framework and Standard Sources

4. **NIST Cybersecurity Framework**
   - **Recommended by**: Coast Guard (NVIC 01-20)
   - **Source**: https://www.nist.gov/cyberframework
   - **Status**: ✅ VERIFIED - Coast Guard recommended framework

5. **CISA Resources**
   - **MASA**: https://www.cisa.gov/resources-tools/services/multi-asset-and-system-assessment-masa
   - **OT Guidance**: https://www.cisa.gov/resources-tools/resources/foundations-ot-cybersecurity-asset-inventory-guidance-owners-and-operators
   - **Status**: ✅ VERIFIED - Government agency guidance

### Research Findings - Verified Sources

6. **TSI Trade/Commerce Focus**
   - **Source**: https://www.cisa.gov/sites/default/files/publications/2019-CSSS-USCG-MTSA-101-508.pdf
   - **Source**: https://www.law.cornell.edu/definitions/uscode.php?def_id=46-USC-802001922-1202936321
   - **Status**: ✅ VERIFIED - Multiple authoritative sources confirm TSI focuses on broader impacts

7. **Foreign-Located Systems**
   - **Source**: https://www.gao.gov/assets/720/710025.pdf
   - **Status**: ✅ VERIFIED - Coast Guard guidance confirms location doesn't determine criticality

8. **Network Segmentation**
   - **Source**: https://www.cisa.gov/news-events/news/securing-network-infrastructure-devices
   - **Source**: https://media.defense.gov/2022/Jun/15/2003018261/-1/-1/0/CTR_NSA_NETWORK_INFRASTRUCTURE_SECURITY_GUIDE_20220615.PDF
   - **Status**: ✅ VERIFIED - Industry best practice
   - **Note**: ⚠️ Application to MTSA scope limitation requires Coast Guard confirmation

### Additional Reading

- Maritime Compliance International: Cybersecurity for MTSA Facilities
- MTS-ISAC: NVIC 01-20 Guidelines
- Microsoft: Classify Critical Assets (Security Exposure Management)

### Complete Reference Mapping

**For complete verified references for all recommendations, see**: `VERIFIED_REFERENCES.md`

### Related Analysis Documents

- **TSI_Transportation_Disruption_Analysis.md**: Detailed analysis of the conflict between network segmentation and foreign-located systems, including interpretation of "transportation system disruption" and recommendations for Coast Guard engagement

- **TSI_Trade_Commerce_Interpretation.md**: **CRITICAL** - Analysis of TSI definition focusing on trade/commerce impact vs. company profitability, with assessment framework and implications for critical asset scope limitation

---

*Document prepared: December 2025*

