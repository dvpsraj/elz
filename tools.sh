#!/bin/bash
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:/usr/local/bin:$PATH"

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
[ -d ~/tools/MicroBurst ] && echo "FOUND at ~/tools/MicroBurst" || echo "NOT FOUND"

echo -e "\n--- ROADtools (roadrecon) ---"
~/.local/bin/roadrecon --version 2>/dev/null || pip show roadrecon 2>/dev/null | grep Version || echo "NOT FOUND"

echo -e "\n--- AzureHound ---"
azurehound --version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- BloodHound CE (bloodhound-cli) ---"
bloodhound-cli version 2>/dev/null || bloodhound-cli --help 2>/dev/null | head -3 || echo "NOT FOUND"

echo -e "\n--- PowerZure (git repo) ---"
[ -d ~/tools/PowerZure ] && echo "FOUND at ~/tools/PowerZure" || echo "NOT FOUND"

echo -e "\n--- CloudSploit (git repo) ---"
[ -d ~/tools/cloudsploit ] && echo "FOUND at ~/tools/cloudsploit" || echo "NOT FOUND"

echo -e "\n--- Stratus Red Team ---"
stratus version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- Prowler ---"
~/.local/bin/prowler -v 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- ScoutSuite ---"
~/.local/bin/scout --version 2>/dev/null || pip show scoutsuite 2>/dev/null | grep Version || echo "NOT FOUND"

echo -e "\n--- Azucar (git repo) ---"
[ -d ~/tools/azucar ] && echo "FOUND at ~/tools/azucar" || echo "NOT FOUND"

echo -e "\n--- SkyArk (git repo) ---"
[ -d ~/tools/SkyArk ] && echo "FOUND at ~/tools/SkyArk" || echo "NOT FOUND"

echo -e "\n--- Stormspotter (git repo - DEFERRED) ---"
[ -d ~/tools/Stormspotter ] && echo "FOUND at ~/tools/Stormspotter (deps incomplete)" || echo "NOT FOUND"

echo -e "\n--- Nuclei ---"
nuclei -version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- Semgrep ---"
~/.local/bin/semgrep --version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- TruffleHog ---"
trufflehog --version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- Docker (for BloodHound CE) ---"
docker --version 2>/dev/null || echo "NOT FOUND"

echo -e "\n--- Azure Storage Explorer (snap) ---"
snap list storage-explorer 2>/dev/null || echo "NOT FOUND"

echo -e "\n=================================================="
echo "CHECK COMPLETE"
echo "=================================================="
