#!/bin/bash
echo "=================================================="
echo "SECURITY TOOLS VERSION CHECK"
echo "=================================================="

echo -e "\n--- Azure CLI ---"
az --version 2>/dev/null | head -1 || echo "NOT FOUND"

echo -e "\n--- PowerShell ---"
pwsh -Command '$PSVersionTable.PSVersion' 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- Az PowerShell Module ---"
pwsh -Command "Get-InstalledModule -Name Az | Select-Object Name,Version" 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- Microsoft Graph Module ---"
pwsh -Command "Get-InstalledModule -Name Microsoft.Graph | Select-Object Name,Version" 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- AADInternals Module ---"
pwsh -Command "Get-InstalledModule -Name AADInternals | Select-Object Name,Version" 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- jq ---"
jq --version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- MicroBurst (git repo) ---"
[ -d ~/tools/MicroBurst ] && echo "Present at ~/tools/MicroBurst" || echo "NOT FOUND"

echo -e "\n--- ROADtools (roadrecon) ---"
roadrecon --version 2>/dev/null || pip show roadrecon 2>/dev/null | grep Version || echo "NOT FOUND"

echo -e "\n--- AzureHound ---"
azurehound --version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- BloodHound CE (bloodhound-cli) ---"
bloodhound-cli --version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- PowerZure (git repo) ---"
[ -d ~/tools/PowerZure ] && echo "Present at ~/tools/PowerZure" || echo "NOT FOUND"

echo -e "\n--- CloudSploit (git repo) ---"
[ -d ~/tools/cloudsploit ] && echo "Present at ~/tools/cloudsploit" || echo "NOT FOUND"

echo -e "\n--- Stratus Red Team ---"
stratus version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- Prowler ---"
prowler -v 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- ScoutSuite ---"
scout --version 2>/dev/null || pip show scoutsuite 2>/dev/null | grep Version || echo "NOT FOUND"

echo -e "\n--- Azucar (git repo) ---"
[ -d ~/tools/azucar ] && echo "Present at ~/tools/azucar" || echo "NOT FOUND"

echo -e "\n--- SkyArk (git repo) ---"
[ -d ~/tools/SkyArk ] && echo "Present at ~/tools/SkyArk" || echo "NOT FOUND"

echo -e "\n--- Stormspotter (git repo - DEFERRED) ---"
[ -d ~/tools/Stormspotter ] && echo "Present at ~/tools/Stormspotter (dependencies not fully installed)" || echo "NOT FOUND"

echo -e "\n--- Nuclei ---"
nuclei -version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- Semgrep ---"
semgrep --version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- TruffleHog ---"
trufflehog --version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- Docker (for BloodHound CE) ---"
docker --version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- Azure Storage Explorer (snap) ---"
snap list storage-explorer 2>/dev/null || echo "NOT FOUND"

echo -e "\n=================================================="
echo "CHECK COMPLETE"
echo "=================================================="
