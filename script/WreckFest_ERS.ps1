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
            [System.Collections.Generic.List[System.Object]]$special = Get-Content .\special.txt
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
            [System.Collections.Generic.List[System.Object]]$figure8 = Get-Content .\figure8.txt
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
            [System.Collections.Generic.List[System.Object]]$oval = Get-Content .\oval.txt
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
            [System.Collections.Generic.List[System.Object]]$racing = Get-Content .\racing.txt
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
            [System.Collections.Generic.List[System.Object]]$racing_l = Get-Content .\racing_l.txt
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
            [System.Collections.Generic.List[System.Object]]$racing_s = Get-Content .\racing_s.txt
            Write-Host ""
            $rh_rs_r = 0
            [int]$rh_rs_r = Read-Host -Prompt "How much rounds shall the normal length RACING-Maps have [1-60] [Only Integer]"
            } until ($rh_rs_r -is [int] -and $rh_rs_r -ge "1" -and $rh_rs_r -le "60")
        $types += 'rs'
        }
    } until ( $rh_rs -eq 'n' -or $rh_rs -eq 'y')
Write-Host "Starting Randomizing"
sleep 1
write-host "" > eventloop.txt
do {
    $rd = $null
    $rdt = $null

    if ($special[0] -eq $null -and $types.Contains('sp'))
        {
        $y = 0
        if ($types[0] -ne 'sp')
            {
            do {
                $y += 1
               } until ($types[$y] -eq 'sp')
            }
        $types.RemoveAt($y)
        }

    if ($figure8[0] -eq $null -and $types.Contains('f8'))
        {
        $y = 0
        if ($types[0] -ne 'f8')
            {
            do {
                $y += 1
               } until ($types[$y] -eq 'f8')
            }
        $types.RemoveAt($y)
        }

    if ($oval[0] -eq $null -and $types.Contains('ov'))
        {
        $y = 0
        if ($types[0] -ne 'ov')
            {
            do {
                $y += 1
               } until ($types[$y] -eq 'ov')
            }
        $types.RemoveAt($y)
        }

    if ($racing[0] -eq $null -and $types.Contains('r'))
        {
        $y = 0
        if ($types[0] -ne 'r')
            {
            do {
                $y += 1
               } until ($types[$y] -eq 'r')
            }
        $types.RemoveAt($y)
        }

    if ($racing_l[0] -eq $null -and $types.Contains('rl'))
        {
        $y = 0
        if ($types[0] -ne 'rl')
            {
            do {
                $y += 1
               } until ($types[$y] -eq 'rl')
            }
        $types.RemoveAt($y)
        }

    if ($racing_s[0] -eq $null -and $types.Contains('rs'))
        {
        $y = 0
        if ($types[0] -ne 'r')
            {
            do {
                $y += 1
               } until ($types[$y] -eq 'rs')
            }
        $types.RemoveAt($y)
        }



    $rd = $types | Get-Random
    if ($rd -eq 'sp') {
        $rdt = $special | Get-Random
        Write-Host "el_add=$rdt" >> eventloop.txt
        Write-Host "el_gamemode=racing" >> eventloop.txt
        Write-Host "el_laps=$rh_sp_r" >> eventloop.txt
        Write-Host "" >> eventloop.txt
        $x = 0
        if ( $special[0] -ne $rdt ) {
            do {
                $x += 1
               } until ($special[$x] -eq $rdt)
            }
        $special.RemoveAt($x)
        } 
    if ($rd -eq 'f8') {
        $rdt = $figure8 | Get-Random
        Write-Host "el_add=$rdt" >> eventloop.txt
        Write-Host "el_gamemode=racing" >> eventloop.txt
        Write-Host "el_laps=$rh_f8_r" >> eventloop.txt
        Write-Host "" >> eventloop.txt
        $x = 0
        if ($figure8[0] -ne $rdt)
            {
            do {
                $x += 1
               } until ($figure8[$x] -eq $rdt)
            }
        $figure8.RemoveAt($x)
        }
    if ($rd -eq 'ov') {
        $rdt = $oval | Get-Random
        Write-Host "el_add=$rdt" >> eventloop.txt
        Write-Host "el_gamemode=racing" >> eventloop.txt
        Write-Host "el_laps=$rh_ov_r" >> eventloop.txt
        Write-Host "" >> eventloop.txt
        $x = 0
        if ($oval[0] -ne $rdt)
            {
            do {
                $x += 1
               } until ($oval[$x] -eq $rdt)
            }
        $oval.RemoveAt($x)
        }
    if ($rd -eq 'r') {
        $rdt = $racing | Get-Random
        Write-Host "el_add=$rdt" >> eventloop.txt
        Write-Host "el_gamemode=racing" >> eventloop.txt
        Write-Host "el_laps=$rh_r_r" >> eventloop.txt
        Write-Host "" >> eventloop.txt
        $x = 0
        if ($racing[0] -ne $rdt)
            {
            do {
                $x += 1
               } until ($racing[$x] -eq $rdt)
            }
        $racing.RemoveAt($x)
        }
    if ($rd -eq 'rl') {
        $rdt = $racing_l | Get-Random
        Write-Host "el_add=$rdt" >> eventloop.txt
        Write-Host "el_gamemode=racing" >> eventloop.txt
        Write-Host "el_laps=$rh_rl_r" >> eventloop.txt
        Write-Host "" >> eventloop.txt
        $x = 0
        if ($racing_l[0] -ne $rdt)
            {
            do {
                $x += 1
               } until ($racing_l[$x] -eq $rdt)
            }
        $racing_l.RemoveAt($x)
        }
    if ($rd -eq 'rs') {
        $rdt = $racing_s | Get-Random
        Write-Host "el_add=$rdt" >> eventloop.txt
        Write-Host "el_gamemode=racing" >> eventloop.txt
        Write-Host "el_laps=$rh_rs_r" >> eventloop.txt
        Write-Host "" >> eventloop.txt
        $x = 0
        if ($racing_s[0] -ne $rdt)
            {
            do {
                $x += 1
               } until ($racing_s[$x] -eq $rdt)
            }
        $racing_s.RemoveAt($x)
        }
    if ($rd -eq $null){}

    } until ($types[0] -eq $null)
