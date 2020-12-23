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
Write-Host "Preparing script"
$special = Get-Content .\special.txt
$figure8 = Get-Content .\figure8.txt
$oval = Get-Content .\oval.txt
$racing = Get-Content .\racing.txt
$racing_l = Get-Content .\racing_l.txt
$racing_s = Get-Content .\racing_s.txt
sleep 1
clear
$types = ""
Write-Host "Picking type of maps"
Write-Host ""
sleep 1
do {
    Write-Host "Read/edit special.txt for maps"
    $rh_sp = Read-Host -Prompt "Do you want SPECIAL-Maps? [y/n]"
    
    if ($rh_sp -eq 'y') {
        do {
            Read-Host -Prompt "How muich rounds shall Special-Maps have [1-60]

        $types += "sp"
        }
    } until ($rh_sp -eq 'n' -or $rh_sp -eq 'y')


do {
    Write-Host "Read/edit special.txt for maps"
    $rh_f8 = Read-Host -Prompt "Do you want FIGURE8-Maps? [y/n]"
    
    if ($rh_sp -eq 'y') {
        $types += "sp"
        }
    } until ($rh_sp -eq 'n' -or $rh_sp -eq 'y')