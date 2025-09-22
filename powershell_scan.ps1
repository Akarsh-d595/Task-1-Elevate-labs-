# scripts/powershell_scan.ps1
# PowerShell wrapper to call nmap from Windows (if nmap is installed)
param(
  [Parameter(Mandatory=$true)][string]$Target,
  [string]$Prefix = "scan_results"
)

Write-Host "[Local host] Running nmap on $Target"
$nmapExe = "nmap"  # assume in PATH
$arguments = "-sS -sV -T4 -Pn -p- -oA $Prefix $Target"
& $nmapExe $arguments
Write-Host "[Local host] Done. Outputs: $Prefix.nmap, $Prefix.gnmap, $Prefix.xml"
