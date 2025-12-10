# GitHub Resources for MTSA Compliance

> **Status**: ✅ Complete  
> **Priority**: 🟠 P1 - High  
> **Last Updated**: December 2025 Support

## Purpose

This document catalogs GitHub repositories that may support MTSA cybersecurity compliance efforts. These resources were identified through systematic searches of GitHub for maritime security, cybersecurity compliance frameworks, and related tools.

**Search Date**: January 2025  
**Search Method**: GitHub CLI (`gh search repos`) and web searches

---

## Maritime Security Repositories

### OWASP Maritime Security Project
- **Repository**: [OWASP/www-project-top-10-for-maritime-security](https://github.com/OWASP/www-project-top-10-for-maritime-security)
- **Stars**: 3
- **Description**: OWASP Foundation web repository for maritime security top 10
- **Relevance**: OWASP security standards applicable to maritime systems
- **Use Case**: Security best practices, vulnerability assessment frameworks

### Maritime Security Overview
- **Repository**: [ObiWan666/maritime](https://github.com/ObiWan666/maritime)
- **Stars**: 9
- **Description**: Maritime Security overview
- **Relevance**: General maritime security resources
- **Use Case**: Reference materials, security overview

### Maritime Security IDS
- **Repository**: [FraDrago/Maritime_Security_IDS](https://github.com/FraDrago/Maritime_Security_IDS)
- **Stars**: 0
- **Description**: Developing & testing IDS for maritime security, focusing on DoS & data injection attacks. Leveraging MaCySTe simulator.
- **Relevance**: Intrusion detection systems for maritime environments
- **Use Case**: OT security monitoring, threat detection

### Vessel Anomaly Behavior Detection
- **Repository**: [ABDULSABOOR1995/Vessel-s-Anomaly-Behaviour-Detection](https://github.com/ABDULSABOOR1995/Vessel-s-Anomaly-Behaviour-Detection)
- **Stars**: 23
- **Description**: Vessel traffic data, or Automatic Identification System (AIS) data, are collected by the U.S. Coast Guard through an onboard navigation safety device
- **Relevance**: AIS data analysis, anomaly detection for vessel behavior
- **Use Case**: Monitoring vessel operations, detecting suspicious activities

### USCG NAIS Data Project
- **Repository**: [jordanbell2357/uscg-nais-data](https://github.com/jordanbell2357/uscg-nais-data)
- **Stars**: 5
- **Description**: U.S. Coast Guard Nationwide Automatic Identification System (NAIS) Data Project
- **Relevance**: Coast Guard AIS data tools
- **Use Case**: Data analysis, compliance monitoring

---

## NIST Cybersecurity Framework Repositories

### NIST-CSF Management Tool
- **Repository**: [brianwifaneye/NIST-CSF](https://github.com/brianwifaneye/NIST-CSF)
- **Stars**: 166
- **Description**: NIST CyberSecurity Framework management tool
- **Relevance**: **HIGH** - Direct NIST CSF implementation tool
- **Use Case**: Framework management, compliance tracking, implementation guidance
- **Note**: Coast Guard recommends NIST CSF for MTSA compliance (NVIC 01-20)

### NIST-to-Tech Mapping
- **Repository**: [mikeprivette/NIST-to-Tech](https://github.com/mikeprivette/NIST-to-Tech)
- **Stars**: 127
- **Description**: An open-source listing of cybersecurity technology mapped to the NIST Cybersecurity Framework (CSF)
- **Relevance**: **HIGH** - Technology mapping to NIST CSF controls
- **Use Case**: Technology selection, control implementation, vendor evaluation

### NIST CSF 2.0 MCP Server
- **Repository**: [rocklambros/nist-csf-2-mcp-server](https://github.com/rocklambros/nist-csf-2-mcp-server)
- **Stars**: 35
- **Description**: MCP server implementation for NIST Cybersecurity Framework 2.0
- **Relevance**: NIST CSF 2.0 implementation tool
- **Use Case**: Framework implementation, automation

### NIST Cybersecurity Framework 2.0
- **Repository**: [fixitgearware/NIST-Cybersecurity-Framework-2.0-](https://github.com/fixitgearware/NIST-Cybersecurity-Framework-2.0-)
- **Stars**: 5
- **Description**: The NIST Cybersecurity Framework 2.0 outlines steps to be taken by the industry, government agencies, and small businesses in organization risk management.
- **Relevance**: Framework documentation and guidance
- **Use Case**: Framework reference, implementation planning

### NIST CSF 2.0 Checklist
- **Repository**: [sivolko/NIST-CSF-2.0-Checklist](https://github.com/sivolko/NIST-CSF-2.0-Checklist)
- **Stars**: 0
- **Description**: NIST Cybersecurity Framework Compliance to Mitigate Cyber Risk
- **Relevance**: Compliance checklist tool
- **Use Case**: Compliance verification, gap analysis

---

## CISA (Cybersecurity and Infrastructure Security Agency) Repositories

### CISA Cyber.dhs.gov
- **Repository**: [cisagov/cyber.dhs.gov](https://github.com/cisagov/cyber.dhs.gov)
- **Stars**: 167
- **Description**: A site for CISA directives
- **Relevance**: **HIGH** - Official CISA resources and directives
- **Use Case**: Regulatory guidance, official CISA resources, directive tracking
- **Note**: CISA provides critical infrastructure security guidance referenced in MTSA implementation

### CISA ScubaGear
- **Repository**: [cisagov/ScubaGear](https://github.com/cisagov/ScubaGear)
- **Stars**: 2,376
- **Description**: Automation to assess the state of your M365 tenant against CISA's baselines
- **Relevance**: Security assessment automation
- **Use Case**: Security baseline assessment, compliance checking

### CISA CSAF Security Advisories
- **Repository**: [cisagov/CSAF](https://github.com/cisagov/CSAF)
- **Stars**: 90
- **Description**: CISA CSAF Security Advisories
- **Relevance**: Security advisory tracking
- **Use Case**: Threat intelligence, security advisory monitoring

### CISA KEV (Known Exploited Vulnerabilities)
- **Repository**: [Ostorlab/KEV](https://github.com/Ostorlab/KEV)
- **Stars**: 594
- **Description**: One-command to detect most remotely known exploitable vulnerabilities. Sourced from CISA KEV, Google's Tsunami, Ostorlab's Asteroid and Bug Bounty programs.
- **Relevance**: **HIGH** - Vulnerability detection using CISA KEV database
- **Use Case**: Vulnerability scanning, threat detection, risk assessment

### CISA Bad Practices Catalog
- **Repository**: [cisagov/bad-practices](https://github.com/cisagov/bad-practices)
- **Stars**: 211
- **Description**: CISA's catalog of bad practices that are exceptionally risky.
- **Relevance**: **HIGH** - Security anti-patterns to avoid
- **Use Case**: Security guidance, risk mitigation, compliance planning

### CISA ICS Network Protocol Parsers
- **Repositories**: 
  - [cisagov/icsnpp-bacnet](https://github.com/cisagov/icsnpp-bacnet) (22 stars)
  - [cisagov/icsnpp-ethercat](https://github.com/cisagov/icsnpp-ethercat) (18 stars)
  - [cisagov/icsnpp-modbus](https://github.com/cisagov/icsnpp-modbus) (19 stars)
- **Description**: Zeek parsers for industrial control system protocols
- **Relevance**: **HIGH** - OT/ICS security monitoring tools
- **Use Case**: OT network monitoring, protocol analysis, threat detection
- **Note**: Critical for MTSA OT security requirements

### CISA CHIRP (DFIR Tool)
- **Repository**: [cisagov/CHIRP](https://github.com/cisagov/CHIRP)
- **Stars**: 1,052
- **Description**: A DFIR tool written in Python
- **Relevance**: Digital forensics and incident response
- **Use Case**: Incident response, forensic analysis, MTSA incident reporting support

### CISA Sparrow
- **Repository**: [cisagov/Sparrow](https://github.com/cisagov/Sparrow)
- **Stars**: 1,431
- **Description**: Sparrow.ps1 was created by CISA's Cloud Forensics team to help detect possible compromised accounts and applications in the Azure/m365 environment.
- **Relevance**: Cloud security assessment
- **Use Case**: Cloud security monitoring, account compromise detection

---

## Critical Infrastructure Security Repositories

### UK Critical Infrastructure
- **Repository**: [BushidoUK/UK-Critical-Infrastructure](https://github.com/BushidoUK/UK-Critical-Infrastructure)
- **Stars**: 40
- **Description**: A collection of reports and case studies to understand the threat landscape for UK critical infrastructure
- **Relevance**: Critical infrastructure threat intelligence
- **Use Case**: Threat landscape analysis, case studies, risk assessment

### Critical Infrastructure Spatial Index (CISI)
- **Repository**: [snirandjan/CISI](https://github.com/snirandjan/CISI)
- **Stars**: 29
- **Description**: Code to calculate the Critical Infrastructure Spatial Index (CISI)
- **Relevance**: Critical infrastructure risk assessment
- **Use Case**: Risk modeling, spatial analysis

### SWaT Dataset - Anomaly Detection
- **Repository**: [ngoclesydney/Anomaly-Detection-with-Swat-Dataset](https://github.com/ngoclesydney/Anomaly-Detection-with-Swat-Dataset)
- **Stars**: 50
- **Description**: Develop novel security metric using Deep-Learning to detect anomaly attacks into the critical infrastructure systems. This metric will be tested by Secure Water Treatment (SWaT) Dataset.
- **Relevance**: OT/ICS anomaly detection research
- **Use Case**: OT security research, anomaly detection models

---

## Cybersecurity Compliance Framework Repositories

### IBM GRC Compliance Frameworks
- **Repository**: [nasamoah-cybergrc/3-IBM-GRC-Compliance-Frameworks](https://github.com/nasamoah-cybergrc/3-IBM-GRC-Compliance-Frameworks)
- **Stars**: 0
- **Description**: Governance, Risk & Compliance (GRC) projects based on the IBM Cybersecurity Compliance Frameworks and Standards course.
- **Relevance**: GRC framework implementation
- **Use Case**: Compliance framework templates, GRC implementation

---

## How to Use These Resources

### 1. NIST CSF Implementation
- **Primary Resources**: `brianwifaneye/NIST-CSF`, `mikeprivette/NIST-to-Tech`
- **Use Case**: Implement NIST CSF as recommended by Coast Guard (NVIC 01-20)
- **Integration**: Map NIST CSF controls to MTSA requirements (see `implementation/strategies/ISO_27001_MTSA_Alignment_Guide.md`)

### 2. OT/ICS Security Monitoring
- **Primary Resources**: CISA ICSNPP parsers (`icsnpp-bacnet`, `icsnpp-modbus`, `icsnpp-ethercat`)
- **Use Case**: Monitor OT networks for MTSA technical cybersecurity measures
- **Integration**: Support network segmentation and monitoring requirements

### 3. Vulnerability Management
- **Primary Resources**: `Ostorlab/KEV`, `cisagov/kev-data`
- **Use Case**: Identify and remediate known exploited vulnerabilities
- **Integration**: Support risk management and technical measures requirements

### 4. Security Best Practices
- **Primary Resources**: `cisagov/bad-practices`, `OWASP/www-project-top-10-for-maritime-security`
- **Use Case**: Avoid security anti-patterns, implement best practices
- **Integration**: Inform Cybersecurity Plan development

### 5. Incident Response
- **Primary Resources**: `cisagov/CHIRP`
- **Use Case**: Digital forensics and incident response
- **Integration**: Support MTSA incident reporting and response requirements

### 6. Threat Intelligence
- **Primary Resources**: `BushidoUK/UK-Critical-Infrastructure`, `cisagov/CSAF`
- **Use Case**: Threat landscape analysis, security advisory tracking
- **Integration**: Inform Cybersecurity Assessment and threat identification

---

## Recommendations

### High-Priority Resources for MTSA Compliance

1. **NIST CSF Tools** (`brianwifaneye/NIST-CSF`, `mikeprivette/NIST-to-Tech`)
   - **Why**: Coast Guard recommends NIST CSF (NVIC 01-20)
   - **Action**: Review and adapt for MTSA Cybersecurity Plan development

2. **CISA Bad Practices Catalog** (`cisagov/bad-practices`)
   - **Why**: Avoid common security mistakes
   - **Action**: Review during Cybersecurity Assessment

3. **CISA ICSNPP Parsers** (BACnet, Modbus, EtherCAT)
   - **Why**: OT network monitoring required for MTSA
   - **Action**: Evaluate for OT security monitoring implementation

4. **CISA KEV Tools** (`Ostorlab/KEV`)
   - **Why**: Vulnerability management required for risk management
   - **Action**: Integrate into vulnerability scanning and remediation processes

5. **OWASP Maritime Security** (`OWASP/www-project-top-10-for-maritime-security`)
   - **Why**: Maritime-specific security guidance
   - **Action**: Review for maritime-specific vulnerabilities and controls

---

## Integration with MTSA Project

### Mapping to MTSA Requirements

| MTSA Requirement | Relevant GitHub Resources |
|-----------------|-------------------------|
| **Cybersecurity Plan** | NIST CSF tools, CISA bad practices, OWASP maritime security |
| **Technical Cybersecurity Measures** | CISA ICSNPP parsers, CISA KEV, NIST-to-Tech |
| **Risk Management** | CISA KEV, UK Critical Infrastructure, CISI |
| **Incident Response** | CISA CHIRP, CISA Sparrow |
| **Network Segmentation** | CISA ICSNPP parsers, Maritime Security IDS |
| **Vulnerability Management** | CISA KEV, CISA CSAF |

---

## Notes

- **Verification Required**: Review all repositories for license compatibility and security before integration
- **Official Sources**: Prefer official CISA/NIST repositories over third-party implementations
- **License Compliance**: Ensure any code integration complies with repository licenses
- **Security Review**: Conduct security review of any tools before deployment in production environments
- **Maintenance Status**: Check repository activity and maintenance status before adoption

---

## Search Methodology

- **GitHub CLI**: Used `gh search repos` for systematic repository discovery
- **Search Terms**: "MTSA", "maritime security", "coast guard", "cybersecurity compliance framework", "NIST cybersecurity framework", "CISA", "critical infrastructure"
- **Filtering**: Focused on repositories with relevant descriptions and active maintenance
- **Verification**: Cross-referenced with official CISA/NIST resources

---

*Document created: January 2025*  
*Last updated: January 2025*  
*For integration with MTSA compliance project*

