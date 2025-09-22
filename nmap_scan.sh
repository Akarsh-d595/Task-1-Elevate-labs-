#!/usr/bin/env bash
# scripts/nmap_scan.sh
# Usage: ./scripts/nmap_scan.sh 192.168.29.0/24
# Performs a TCP SYN scan (-sS) and saves output in multiple formats via -oA

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <target-subnet-or-ip> [output-prefix]"
  echo "Example: $0 192.168.29.207/24 scan_results"
  exit 1
fi

TARGET="$1"
PREFIX="${2:-scan_results}"

echo "[*] Running nmap TCP SYN scan on ${TARGET}"
# -sS : TCP SYN
# -Pn : treat hosts as online (remove if you want host discovery)
# -sV : service/version detection (optional, can be noisy)
# -T4 : faster timing (use T3 if worried about network impact)
# -oA : save to all formats (nmap normal, gnmap, xml)
nmap -sS -sV -T4 -Pn -p- -oA "${PREFIX}" "${TARGET"

echo "[*] Done. Outputs: ${PREFIX}.nmap ${PREFIX}.gnmap ${PREFIX}.xml"
