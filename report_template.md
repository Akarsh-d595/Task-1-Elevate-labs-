# Scan Report Template

Tester: Akarsh Dubey
Date: [2025-09-22]
Target subnet/IP: [e.g., 192.168.29.207/24]
*Authorization:* [attach or reference written permission]

---

## Summary
Short summary of what was scanned and high-level findings.

## Methodology
Tools and commands run (e.g., nmap -sS -sV -T4 -Pn -p 135,139,445,3306 -oA scan_results 192.168.29.0/24).

## Findings
List of hosts with open ports and services (table):

| IP Address | Open Ports (service) | Notes / CVE / Version |
|------------|----------------------|------------------------|
| 192.168.29.207 | 135 (msrpc), 139 (netbios-ssn), 445 (microsoft-ds), 3306 (mysql) | e.g., SMB v2, MySQL 5.7.31 |

## Risk Assessment
Briefly classify risk (Low/Medium/High) and reasoning.

## Recommendations
Patching, firewall rules, disabling services, change passwords, restrict access.

## Appendices
- examples/scan_results.txt (raw nmap output)
- PCAPs (if captured)
- Commands used
