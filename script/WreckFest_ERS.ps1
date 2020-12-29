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
sleep 2
Write-Host "Preparing types"  ##Fetching .txt-files except eventloop, and define the types
[System.Collections.ArrayList]$types = $(Get-ChildItem -Exclude WreckFest_ERS.ps1,eventloop.txt).BaseName
ForEach-Object -Process (write-Host "$_ found") -InputObject $types # it doesnt work..... thinking otherwise.... later!