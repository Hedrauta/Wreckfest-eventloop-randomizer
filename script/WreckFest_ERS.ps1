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
Write-Host ""
Write-Host ""
[System.Collections.ArrayList]$types = @()
Write-Host "Picking type of maps"
Write-Host ""
sleep 1
do {
    Write-Host "Read and edit special.txt for specific maps"
    $rh_sp = Read-Host -Prompt "Do you want SPECIAL-Maps? [y/n]"
    
    if ($rh_sp -eq 'y') {
            [System.Collections.Generic.List[System.Object]]$special = Get-Content .\special.txt
            Write-Host "Loaded $($special.count) SPECIAL-Maps"
            
        do {
            Write-Host ""
            $rh_sp_r = 0
            try{[int]$rh_sp_r = Read-Host -Prompt "How much rounds shall Special-Maps have [1-60] [Only Integer]"}
            catch{""}
            } until ($rh_sp_r -is [int] -and $rh_sp_r -ge "1" -and $rh_sp_r -le "60")
        $types += 'sp'
        }
    } until ( $rh_sp -eq 'n' -or $rh_sp -eq 'y')
Write-Host ""
do {
    Write-Host "Read and edit figure8.txt for specific maps"
    $rh_f8 = Read-Host -Prompt "Do you want FIGURE8-Maps? [y/n]"
    
    if ($rh_f8 -eq 'y') {
        [System.Collections.Generic.List[System.Object]]$figure8 = Get-Content .\figure8.txt
        Write-Host "Loaded $($figure8.Count) FIGURE8-Maps"
        do {
            Write-Host ""
            $rh_f8_r = 0
            try{[int]$rh_f8_r = Read-Host -Prompt "How much rounds shall FIGURE8-Maps have [1-60] [Only Integer]"}
            catch{""}
            } until ($rh_f8_r -is [int] -and $rh_f8_r -ge "1" -and $rh_f8_r -le "60")
        $types += 'f8'
        }
    } until ( $rh_f8 -eq 'n' -or $rh_f8 -eq 'y')
Write-Host ""
do {
    Write-Host "Read and edit oval.txt for specific maps"
    $rh_ov = Read-Host -Prompt "Do you want OVAL-Maps? [y/n]"
    
    if ($rh_ov -eq 'y') {
        [System.Collections.Generic.List[System.Object]]$oval = Get-Content .\oval.txt
        Write-Host "Loaded $($oval.Count) Oval-Maps"
           do {
             Write-Host ""
            $rh_ov_r = 0
            try{[int]$rh_ov_r = Read-Host -Prompt "How much rounds shall Oval-Maps have [1-60] [Only Integer]"}
            catch{""}
            } until ($rh_ov_r -is [int] -and $rh_ov_r -ge "1" -and $rh_ov_r -le "60")
        $types += 'ov'
        }
    } until ( $rh_ov -eq 'n' -or $rh_ov -eq 'y')
    Write-Host ""
do {
    Write-Host "Read and edit racing_s.txt for specific maps"
    $rh_rs = Read-Host -Prompt "Do you want short ( <1.2km per round) RACING-Maps? [y/n]"
    Write-host ""
    if ($rh_rs -eq 'y') {
        [System.Collections.Generic.List[System.Object]]$racing_s = Get-Content .\racing_s.txt
        Write-Host "Loaded $($racing_s.Count) short length Racing-Maps"
            do {
            Write-Host ""
            $rh_rs_r = 0
            try{[int]$rh_rs_r = Read-Host -Prompt "How much rounds shall the normal length RACING-Maps have [1-60] [Only Integer]"}
            catch{""}
            } until ($rh_rs_r -is [int] -and $rh_rs_r -ge "1" -and $rh_rs_r -le "60")
        $types += 'rs'
        }
    Write-Host ""
do {
    Write-Host "Read and edit racing.txt for specific maps"
    $rh_r = Read-Host -Prompt "Do you want normal length (1.2km-1.9km per round) RACING-Maps? [y/n]"
    
    if ($rh_r -eq 'y') {
        [System.Collections.Generic.List[System.Object]]$racing = Get-Content .\racing.txt
        Write-Host "Loaded $($racing.Count) normal length Racing-Maps"
            do {
            Write-Host ""
            $rh_r_r = 0
            try{[int]$rh_r_r = Read-Host -Prompt "How much rounds shall the normal length RACING-Maps have [1-60] [Only Integer]"}
            catch{""}
            } until ($rh_r_r -is [int] -and $rh_r_r -ge "1" -and $rh_r_r -le "60")
        $types += 'r'
        }
    } until ( $rh_r -eq 'n' -or $rh_r -eq 'y')
    Write-Host ""
do {
    Write-Host "Read and edit racing_l.txt for specific maps"
    $rh_rl = Read-Host -Prompt "Do you want long (1.9km+ per round) RACING-Maps? [y/n]"
    
    if ($rh_rl -eq 'y') {
        [System.Collections.Generic.List[System.Object]]$racing_l = Get-Content .\racing_l.txt
        Write-Host "Loaded $($racing_l.Count) long length Racing-Maps"
            do {
            Write-Host ""
            $rh_rl_r = 0
            try{[int]$rh_rl_r = Read-Host -Prompt "How much rounds shall the normal length RACING-Maps have [1-60] [Only Integer]"}
            catch{""}
            } until ($rh_rl_r -is [int] -and $rh_rl_r -ge "1" -and $rh_rl_r -le "60")
        $types += 'rl'
        }
    } until ( $rh_rl -eq 'n' -or $rh_rl -eq 'y')
    Write-Host ""
    } until ( $rh_rs -eq 'n' -or $rh_rs -eq 'y')
Write-Host "Starting Randomizing"
sleep 1
"" | Out-File -FilePath .\eventloop.txt
do {
    $rd = $null
    $rdt = $null

    if ($special.Count -eq 0 -and $types.Contains('sp'))
        {
        Write-Host "No more Special-Maps are found"
        do {
            $rh_sp_a = Read-Host -Prompt "Do you want Special-Maps loaded again? [y/n]"
            if ($rh_sp_a -eq 'y'){
                [System.Collections.Generic.List[System.Object]]$special = Get-Content .\special.txt
                Write-Host "Loaded $($special.Count) Special-Maps. Continue Randomizing..."
                }
            if ($rh_sp_a -eq 'n') {
                $null = $types.Remove('sp')
                Write-Host "Removed Type 'Special'. Continue Randomzing..."
                }
            } until ($rh_sp_a -eq 'n' -or $rh_sp_a -eq 'y')
        }

    if ($figure8.Count -eq 0 -and $types.Contains('f8'))
        {
        Write-Host "No more Figure8-Maps are found"
        do {
            $rh_f8_a = Read-Host -Prompt "Do you want Figure8-Maps loaded again? [y/n]"
            if ($rh_f8_a -eq 'y'){
                [System.Collections.Generic.List[System.Object]]$figure8 = Get-Content .\figure8.txt
                Write-Host "Loaded $($figure8.Count) Figure8-Maps. Continue Randomizing..."
                }
            if ($rh_f8_a -eq 'n') {
                $null = $types.Remove('f8')
                Write-Host "Removed Type 'Figure8'. Continue Randomzing..."
                }
            } until ($rh_f8_a -eq 'n' -or $rh_f8_a -eq 'y')
        }

    if ($oval.Count -eq 0 -and $types.Contains('ov'))
        {
        Write-Host "No more Oval-Maps are found"
        do {
            $rh_ov_a = Read-Host -Prompt "Do you want Oval-Maps loaded again? [y/n]"
            if ($rh_ov_a -eq 'y'){
                [System.Collections.Generic.List[System.Object]]$oval = Get-Content .\oval.txt
                Write-Host "Loaded $($oval.Count) Oval-Maps. Continue Randomizing..."
                }
            if ($rh_ov_a -eq 'n') {
                $null = $types.Remove('ov')
                Write-Host "Removed Type 'Oval'. Continue Randomzing..."
                }
            } until ($rh_ov_a -eq 'n' -or $rh_ov_a -eq 'y')
        }
    if ($racing_s.Count -eq 0 -and $types.Contains('rs'))
        {
        Write-Host "No more short length Racing-Maps are found"
        do {
            $rh_rs_a = Read-Host -Prompt "Do you want short length Racing-Maps loaded again? [y/n]"
            if ($rh_rs_a -eq 'y'){
                [System.Collections.Generic.List[System.Object]]$racing_s = Get-Content .\racing_s.txt
                Write-Host "Loaded $($racing_s.Count) short length Racing-Maps. Continue Randomizing..."
                }
            if ($rh_rs_a -eq 'n') {
                $null = $types.Remove('rs')
                Write-Host "Removed Type 'Short length Racing'. Continue Randomzing..."
                }
            } until ($rh_rs_a -eq 'n' -or $rh_rs_a -eq 'y')
        }
    if ($racing.Count -eq 0 -and $types.Contains('r'))
        {
        Write-Host "No more normal length Racing-Maps are found"
        do {
            $rh_r_a = Read-Host -Prompt "Do you want normal length Racing-Maps loaded again? [y/n]"
            if ($rh_r_a -eq 'y'){
                [System.Collections.Generic.List[System.Object]]$racing = Get-Content .\racing.txt
                Write-Host "Loaded $($racing.Count) normal length Racing-Maps. Continue Randomizing..."
                }
            if ($rh_r_a -eq 'n') {
                $null = $types.Remove('r')
                Write-Host "Removed Type 'Normal length Racing'. Continue Randomzing..."
                }
            } until ($rh_r_a -eq 'n' -or $rh_r_a -eq 'y')
        }

    if ($racing_l.Count -eq 0 -and $types.Contains('rl'))
        {
        Write-Host "No more long length Racing-Maps are found"
        do {
            $rh_rl_a = Read-Host -Prompt "Do you want long length Racing-Maps loaded again? [y/n]"
            if ($rh_rl_a -eq 'y'){
                [System.Collections.Generic.List[System.Object]]$racing_l = Get-Content .\racing_l.txt
                Write-Host "Loaded $($racing_l.Count) long length Racing-Maps. Continue Randomizing..."
                }
            if ($rh_rl_a -eq 'n') {
                $null = $types.Remove('rl')
                Write-Host "Removed Type 'long length Racing'. Continue Randomzing..."
                }
            } until ($rh_rl_a -eq 'n' -or $rh_rl_a -eq 'y')
        }





    $rd = $types | Get-Random
    if ($rd -eq 'sp') {
        $rdt = $special | Get-Random
        "el_add=$rdt" | Out-File -FilePath .\eventloop.txt -Append
        "el_gamemode=racing" | Out-File -FilePath .\eventloop.txt -Append
        "el_laps=$rh_sp_r" | Out-File -FilePath .\eventloop.txt -Append
        "" | Out-File -FilePath .\eventloop.txt -Append
        $null = $special.Remove($rdt)
        } 
    if ($rd -eq 'f8') {
        $rdt = $figure8 | Get-Random
        "el_add=$rdt" | Out-File -FilePath .\eventloop.txt -Append
        "el_gamemode=racing" | Out-File -FilePath .\eventloop.txt -Append
        "el_laps=$rh_f8_r" | Out-File -FilePath .\eventloop.txt -Append
        "" | Out-File -FilePath .\eventloop.txt -Append
        $null = $figure8.Remove($rdt)
        }
    if ($rd -eq 'ov') {
        $rdt = $oval | Get-Random
        "el_add=$rdt" | Out-File -FilePath .\eventloop.txt -Append
        "el_gamemode=racing" | Out-File -FilePath .\eventloop.txt -Append
        "el_laps=$rh_ov_r" | Out-File -FilePath .\eventloop.txt -Append
        "" | Out-File -FilePath .\eventloop.txt -Append
        $null = $oval.Remove($rdt)
        }
    if ($rd -eq 'r') {
        $rdt = $racing | Get-Random
        "el_add=$rdt" | Out-File -FilePath .\eventloop.txt -Append
        "el_gamemode=racing" | Out-File -FilePath .\eventloop.txt -Append
        "el_laps=$rh_r_r" | Out-File -FilePath .\eventloop.txt -Append
        "" | Out-File -FilePath .\eventloop.txt -Append
        $null = $racing.Remove($rdt)
        }
    if ($rd -eq 'rl') {
        $rdt = $racing_l | Get-Random
        "el_add=$rdt" | Out-File -FilePath .\eventloop.txt -Append
        "el_gamemode=racing" | Out-File -FilePath .\eventloop.txt -Append
        "el_laps=$rh_rl_r" | Out-File -FilePath .\eventloop.txt -Append
        "" | Out-File -FilePath .\eventloop.txt -Append
        $null = $racing_l.Remove($rdt)
        }
    if ($rd -eq 'rs') {
        $rdt = $racing_s | Get-Random
        "el_add=$rdt" | Out-File -FilePath .\eventloop.txt -Append
        "el_gamemode=racing" | Out-File -FilePath .\eventloop.txt -Append
        "el_laps=$rh_rs_r" | Out-File -FilePath .\eventloop.txt -Append
        "" | Out-File -FilePath .\eventloop.txt -Append
        $null = $racing_s.Remove($rdt)
        }
    } until($types.Count -eq 0)
Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "Randomizing finished"
Write-Host ""
do {
    $cl_c = Read-Host -Prompt "do you want the loop copied into your Clipboard? [y/n] "
    if ($cl_c -eq 'y'){
        Get-Content .\eventloop.txt | Set-Clipboard
        }
    } until ($cl_c -eq 'y' -or $cl_c -eq 'n')

Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "Thanks for using my Script."
Write-Host "Keep updated on https://github.com/Hedrauta/wreckfest-eventloop-randomizer for new features, updates or if you have new ideas"
Write-Host ""
Write-Host "This script is licensed under MIT. For more Informations, please visit my Github (link above)"
cmd /c pause

# SIG # Begin signature block
# MIIFuQYJKoZIhvcNAQcCoIIFqjCCBaYCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUxjcwmpk6ZjzasGOQWdziN4S6
# WfmgggNCMIIDPjCCAiqgAwIBAgIQtUDBeoA5ZoxHKwxPgr6tWDAJBgUrDgMCHQUA
# MCwxKjAoBgNVBAMTIVBvd2VyU2hlbGwgTG9jYWwgQ2VydGlmaWNhdGUgUm9vdDAe
# Fw0yMDEyMjUxMjQ3MTFaFw0zOTEyMzEyMzU5NTlaMBoxGDAWBgNVBAMTD1Bvd2Vy
# U2hlbGwgVXNlcjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANq5cy0m
# PVXJBUQ6skulPwGZsxnyI5xspUbYfG64+/c5oADa89/8s3qjhwdZdjZ1rUb1H5bO
# s5VIGYRbnh/X6iLXynih5eH5Yw/dZ9dnhDrNvwP0Wjl1GCXoJF31+aq2f2fCIXb1
# ko6Ravd2cpaDf2PXbvAJZIrePDbjuVpO/Gm7BK92/vzxttZGgfx3W/MOxXFdFmw0
# NmwL/+D3QK37M7vPUtT0V3348BtZg4JTxGYpKIrPdmq8jfhSgkJFpEaSAO3ei3wk
# jUIqsnjbN3cZ1B8BaU/W/5QfsfhB9qzwNhJrxVkUj/iYasTln+UpoLrDOnWf6S5j
# 5BbsWfzP3kRy76kCAwEAAaN2MHQwEwYDVR0lBAwwCgYIKwYBBQUHAwMwXQYDVR0B
# BFYwVIAQgUNKSbK968MRQaAMOlUfiKEuMCwxKjAoBgNVBAMTIVBvd2VyU2hlbGwg
# TG9jYWwgQ2VydGlmaWNhdGUgUm9vdIIQzNIUZFiajIdAM2pxuNUrHjAJBgUrDgMC
# HQUAA4IBAQBWtVFhm2KWxPqtnc2Zvsv5kkrF4yP2pgmt2a277g9d7LE/nS14pK9U
# qDk5xCUt5nXk2Z+JOraMcp8J7ZTzrPk2cgE/PsajpvhuWVKNWfv20V6YqFM7+QJK
# qn6n8NM+P/kKO3mrnBvP7WayyCVbbeQEt32q8JascIStuK5Uke+vRRAwh9LQ/JN4
# 8fdkaL8J6LAFpIJUYCj9hf/vNdp/jVtYq0/AWTedHoFmdSrGeogEt/JHUVhOktfC
# Ht57PVEn9okmqnH7cMLXJyMDDxraPmeUOcbP6qchieRcy+yyu8IQAPgXWwaoVh35
# nYMGPaFjIVovxmii2HQhK0INxo6vVXCDMYIB4TCCAd0CAQEwQDAsMSowKAYDVQQD
# EyFQb3dlclNoZWxsIExvY2FsIENlcnRpZmljYXRlIFJvb3QCELVAwXqAOWaMRysM
# T4K+rVgwCQYFKw4DAhoFAKB4MBgGCisGAQQBgjcCAQwxCjAIoAKAAKECgAAwGQYJ
# KoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQB
# gjcCARUwIwYJKoZIhvcNAQkEMRYEFNT8pXoOF5drOVG/1nppCP5bdnUDMA0GCSqG
# SIb3DQEBAQUABIIBAC6/0ouxAeUKjALphJGSOYEaSJ6m9aaOcMgvL1yH8m2gLNOz
# aSpXhdCU/IeTSSgKcK7VE+15wdNN6nd1fVSTxw6m0vX72w33dmQsi00YybSoOhj5
# 8AM2WTJYMCN9wPEr+LoiCh0pbF1XUmPTcYZiMpj4OFJQbZ15NdYsF++FJw5G0+ib
# PG3ZPBPWPkSOCTSCOe9M+aNdbnx5Hhqsy2I1ik53NfoBxN/kCGb8kZbfOcUSw+gX
# FBvYzI/duWitAVx3+xLAIVW1F82UNQDMPhaJEWAusHorVHJpT0aO/DViMIA9B++h
# v9sxL7YMFrpZGYVuhtazc5hRiP2vJlkWuK6aFqI=
# SIG # End signature block
