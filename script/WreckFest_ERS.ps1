[System.Collections.Generic.List[System.Object]]$special = @()
[System.Collections.Generic.List[System.Object]]$figure8 = @()
[System.Collections.Generic.List[System.Object]]$oval = @()
[System.Collections.Generic.List[System.Object]]$racing = @()
[System.Collections.Generic.List[System.Object]]$racing_l = @()
[System.Collections.Generic.List[System.Object]]$racing_s = @()

Write-Host " █████   ███   █████                             █████         ██████                    █████   "
Write-Host "░░███   ░███  ░░███                             ░░███         ███░░███                  ░░███    "
Write-Host "░███   ░███   ░███  ████████   ██████   ██████  ░███ █████  ░███ ░░░   ██████   █████  ███████  "
Write-Host "░███   ░███   ░███ ░░███░░███ ███░░███ ███░░███ ░███░░███  ███████    ███░░███ ███░░  ░░░███░   "
Write-Host "░░███  █████  ███   ░███ ░░░ ░███████ ░███ ░░░  ░██████░  ░░░███░    ░███████ ░░█████   ░███    "
Write-Host " ░░░█████░█████░    ░███     ░███░░░  ░███  ███ ░███░░███   ░███     ░███░░░   ░░░░███  ░███ ███"
Write-Host "   ░░███ ░░███      █████    ░░██████ ░░██████  ████ █████  █████    ░░██████  ██████   ░░█████ "
Write-Host "    ░░░   ░░░      ░░░░░      ░░░░░░   ░░░░░░  ░░░░ ░░░░░  ░░░░░      ░░░░░░  ░░░░░░     ░░░░░"
Write-Host "Eventloop-Randomizer-Script"
sleep 1
"" ; "" ; ""
Write-Host "Preparing types"
""
[System.Collections.ArrayList]$types = $(Get-ChildItem -Exclude WreckFest_ERS.ps1,eventloop.txt).BaseName #fetching .txt-files, and define them in an array
for ($i=0; $i -le $($types.Count - 1) ; $i++) {
    Write-Host "$($types[$i]).txt found" # oh boy, this one is working fine.... i will get this possible
    }
