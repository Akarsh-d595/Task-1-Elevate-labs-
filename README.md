# Task-1-Elevate-labs-
# Cyber Security Internship — Network Port Scanning Task

This repository contains scripts, documentation and templates to perform an authorized internal network port scan task:
*Task goal:* Discover open ports on devices in your local network and prepare a short report summarizing findings and risks.

*Disclaimer / Legal*
Only run these tools against systems you own or where you have explicit written permission. Unauthorized scanning or intrusion is illegal and unethical.

## Contents
- scripts/ — handy scan & export scripts (Bash + PowerShell + MySQL export example)
- docs/ — guides for analyzing captures, mounting SMB shares, research steps
- examples/ — example scan output and report
- report_template.md — template to use for your submission

## Quick usage examples
1. Find your local subnet (example): ip addr (Linux) or ipconfig (Windows).
2. Run the primary nmap script for TCP SYN scan:
   - Linux/macOS: bash scripts/nmap_scan.sh 192.168.29.0/24
   - Windows PowerShell: .\scripts\powershell_scan.ps1 -Target 192.168.29.0/24

3. Save/save outputs in examples/ and use report_template.md to prepare your final report.

## What to include when you submit
- scan_results.txt or nmap HTML output
- report.md following the template
- brief remediation notes

## Contact / Contributing
See CONTRIBUTING.md.
