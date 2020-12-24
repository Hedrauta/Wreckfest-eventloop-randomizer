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
Write-Host ""
[System.Collections.ArrayList]$types = @()
Write-Host "Picking type of maps"
Write-Host ""
sleep 1
do {
    Write-Host "Read and edit special.txt for specific maps"
    $rh_sp = Read-Host -Prompt "Do you want SPECIAL-Maps? [y/n]"
    
    if ($rh_sp -eq 'y') {
        do {
            Write-Host "Loaded SPECIAL-Map-file"
            $special = Get-Content .\special.txt
            Write-Host ""
            $rh_sp_r = 0
            [int]$rh_sp_r = Read-Host -Prompt "How much rounds shall Special-Maps have [1-60] [Only Integer]"
            } until ($rh_sp_r -is [int] -and $rh_sp_r -ge "1" -and $rh_sp_r -le "60")
        $types += 'sp'
        }
    } until ( $rh_sp -eq 'n' -or $rh_sp -eq 'y')
Write-Host ""
do {
    Write-Host "Read and edit figure8.txt for specific maps"
    $rh_f8 = Read-Host -Prompt "Do you want FIGURE8-Maps? [y/n]"
    
    if ($rh_f8 -eq 'y') {
        do {
            Write-Host "Loaded FIGURE8-Map-file"
            $figure8 = Get-Content .\figure8.txt
            Write-Host ""
            $rh_f8_r = 0
            [int]$rh_f8_r = Read-Host -Prompt "How much rounds shall FIGURE8-Maps have [1-60] [Only Integer]"
            } until ($rh_f8_r -is [int] -and $rh_f8_r -ge "1" -and $rh_f8_r -le "60")
        $types += 'f8'
        }
    } until ( $rh_f8 -eq 'n' -or $rh_f8 -eq 'y')
Write-Host ""
do {
    Write-Host "Read and edit oval.txt for specific maps"
    $rh_ov = Read-Host -Prompt "Do you want OVAL-Maps? [y/n]"
    
    if ($rh_ov -eq 'y') {
        do {
            Write-Host "Loaded FIGURE8-Map-file"
            $oval = Get-Content .\oval.txt
            Write-Host ""
            $rh_ov_r = 0
            [int]$rh_ov_r = Read-Host -Prompt "How much rounds shall FIGURE8-Maps have [1-60] [Only Integer]"
            } until ($rh_ov_r -is [int] -and $rh_ov_r -ge "1" -and $rh_ov_r -le "60")
        $types += 'ov'
        }
    } until ( $rh_ov -eq 'n' -or $rh_ov -eq 'y')
    Write-Host ""
do {
    Write-Host "Read and edit racing.txt for specific maps"
    $rh_r = Read-Host -Prompt "Do you want normal length (1.2km-1.9km per round) RACING-Maps? [y/n]"
    
    if ($rh_r -eq 'y') {
        do {
            Write-Host "Loaded Racing-Map-file"
            $racing = Get-Content .\racing.txt
            Write-Host ""
            $rh_r_r = 0
            [int]$rh_r_r = Read-Host -Prompt "How much rounds shall the normal length RACING-Maps have [1-60] [Only Integer]"
            } until ($rh_r_r -is [int] -and $rh_r_r -ge "1" -and $rh_r_r -le "60")
        $types += 'r'
        }
    } until ( $rh_r -eq 'n' -or $rh_r -eq 'y')
    Write-Host ""
do {
    Write-Host "Read and edit racing_l.txt for specific maps"
    $rh_rl = Read-Host -Prompt "Do you want long (1.9km+ per round) RACING-Maps? [y/n]"
    
    if ($rh_rl -eq 'y') {
        do {
            Write-Host "Loaded Racing_l-Map-file"
            $racing_l = Get-Content .\racing_l.txt
            Write-Host ""
            $rh_rl_r = 0
            [int]$rh_rl_r = Read-Host -Prompt "How much rounds shall the normal length RACING-Maps have [1-60] [Only Integer]"
            } until ($rh_rl_r -is [int] -and $rh_rl_r -ge "1" -and $rh_rl_r -le "60")
        $types += 'rl'
        }
    } until ( $rh_rl -eq 'n' -or $rh_rl -eq 'y')
    Write-Host ""
do {
    Write-Host "Read and edit racing_s.txt for specific maps"
    $rh_rs = Read-Host -Prompt "Do you want short ( <1.2km per round) RACING-Maps? [y/n]"
    
    if ($rh_rs -eq 'y') {
        do {
            Write-Host "Loaded Racing_s-Map-file"
            $racing_s = Get-Content .\racing_s.txt
            Write-Host ""
            $rh_rs_r = 0
            [int]$rh_rs_r = Read-Host -Prompt "How much rounds shall the normal length RACING-Maps have [1-60] [Only Integer]"
            } until ($rh_rs_r -is [int] -and $rh_rs_r -ge "1" -and $rh_rs_r -le "60")
        $types += 'rs'
        }
    } until ( $rh_rs -eq 'n' -or $rh_rs -eq 'y')
    $types