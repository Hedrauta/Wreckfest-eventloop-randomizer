[System.Array]$rmaps = @('speedway2_oval_loop';'loop';'triangle_r1';'crash_canyon_main_circuit';'bonebreaker_valley_main_circuit';'fields09_1';'forest12_2';'urban06';'sandpit2_2';'sandpit2_2_rev';'tarmac3_short_circuit';'tarmac3_short_circuit_rev';'mixed1_main_circuit';'mixed1_main_circuit_rev';'mixed2_main_circuit';'mixed2_main_circuit_rev';'mixed7_r3';'mixed7_r3_rev';'mixed9_r1';'mixed9_r1_rev';'mixed8_r2';'mixed8_r3_rev';'fields08_1';'fields08_1_rev';'orest11_1';'forest11_1_rev';'forest11_2';'forest11_2_rev';'sandpit1_long_loop';'sandpit1_long_loop_rev';'sandpit1_alt_loop';'sandpit1_alt_loop_rev';'sandpit2_full_circuit';'sandpit2_full_circuit_rev';'sandpit3_long_loop';'sandpit3_long_loop_rev';'sandpit3_short_loop';'sandpit3_short_loop';'tarmac1_main_circuit';'tarmac1_main_circuit_rev';'tarmac2_main_circuit';'tarmac2_main_circuit_rev';'tarmac3_main_circuit';'tarmac3_main_circuit_rev';'mixed3_long_loop';'mixed3_long_loop_rev';'mixed5_outer_loop';'mixed5_outer_loop_rev';'mixed5_inner_loop';'mixed5_inner_loop_rev';'mixed5_free_route';'urban08_1';'urban08_1_rev';'fields13_1_rev';'fields13_1';'gravel1_main_loop';'gravel1_main_loop_rev ';'sandpit1_short_loop';'sandpit1_short_loop_rev';'tarmac1_short_circuit';'tarmac1_short_circuit_rev';'mixed3_short_loop';'mixed3_short_loop_rev';'mixed4_main_circuit';'mixed4_main_circuit_rev';'mixed7_r1';'mixed7_r1_rev';'mixed8_r1';'dirt_speedway_dirt_oval';'speedway1_oval';'speedway2_inner_oval';'speedway2_outer_oval';'bigstadium_figure_8';'speedway1_figure_8';'speedway2_figure_8';'dirt_speedway_figure_8';'fields12_2')
# defined Racing-maps, for later use
[System.Array]$dmaps = @('urban07';'fields10_2';'fields11_1';'bigstadium_demolition_arena';'field_derby_arena';'mudpit_demolition_arena';'grass_arena_demolition_arena';'smallstadium_demolition_arena';'fields13_2';'triangle_r2';'speedway2_demolition_arena';'speedway2_classic_arena')
# defined Demolition-Maps
[System.Array]$maps = @('speedway2_oval_loop';'loop';'triangle_r1';'crash_canyon_main_circuit';'bonebreaker_valley_main_circuit';'fields09_1';'forest12_2';'urban06';'sandpit2_2';'sandpit2_2_rev';'tarmac3_short_circuit';'tarmac3_short_circuit_rev';'mixed1_main_circuit';'mixed1_main_circuit_rev';'mixed2_main_circuit';'mixed2_main_circuit_rev';'mixed7_r3';'mixed7_r3_rev';'mixed9_r1';'mixed9_r1_rev';'mixed8_r2';'mixed8_r3_rev';'fields08_1';'fields08_1_rev';'orest11_1';'forest11_1_rev';'forest11_2';'forest11_2_rev';'sandpit1_long_loop';'sandpit1_long_loop_rev';'sandpit1_alt_loop';'sandpit1_alt_loop_rev';'sandpit2_full_circuit';'sandpit2_full_circuit_rev';'sandpit3_long_loop';'sandpit3_long_loop_rev';'sandpit3_short_loop';'sandpit3_short_loop';'tarmac1_main_circuit';'tarmac1_main_circuit_rev';'tarmac2_main_circuit';'tarmac2_main_circuit_rev';'tarmac3_main_circuit';'tarmac3_main_circuit_rev';'mixed3_long_loop';'mixed3_long_loop_rev';'mixed5_outer_loop';'mixed5_outer_loop_rev';'mixed5_inner_loop';'mixed5_inner_loop_rev';'mixed5_free_route';'urban08_1';'urban08_1_rev';'fields13_1_rev';'fields13_1';'gravel1_main_loop';'gravel1_main_loop_rev ';'sandpit1_short_loop';'sandpit1_short_loop_rev';'tarmac1_short_circuit';'tarmac1_short_circuit_rev';'mixed3_short_loop';'mixed3_short_loop_rev';'mixed4_main_circuit';'mixed4_main_circuit_rev';'mixed7_r1';'mixed7_r1_rev';'mixed8_r1';'dirt_speedway_dirt_oval';'speedway1_oval';'speedway2_inner_oval';'speedway2_outer_oval';'bigstadium_figure_8';'speedway1_figure_8';'speedway2_figure_8';'dirt_speedway_figure_8';'fields12_2';'urban07';'fields10_2';'fields11_1';'bigstadium_demolition_arena';'field_derby_arena';'mudpit_demolition_arena';'grass_arena_demolition_arena';'smallstadium_demolition_arena';'fields13_2';'triangle_r2';'speedway2_demolition_arena';'speedway2_classic_arena')
[System.Array]$dmodes = @('derby';'derby deathmatch';'team derby')
[System.Array]$rmodes = @('racing';'team race';'elimination race')
[System.Array]$eli_secs = @('0';'20';'30';'45';'60';'90';'120')
[System.Array]$derby_secs = @('2';'4';'6';'8';'10';'12';'14';'16';'18';'20')
# yeah!!!... gamemodes!!! 
Write-Host " █████   ███   █████                             █████         ██████                    █████   "
Write-Host "░░███   ░███  ░░███                             ░░███         ███░░███                  ░░███    "
Write-Host "░███   ░███   ░███  ████████   ██████   ██████  ░███ █████  ░███ ░░░   ██████   █████  ███████  "
Write-Host "░███   ░███   ░███ ░░███░░███ ███░░███ ███░░███ ░███░░███  ███████    ███░░███ ███░░  ░░░███░   "
Write-Host "░░███  █████  ███   ░███ ░░░ ░███████ ░███ ░░░  ░██████░  ░░░███░    ░███████ ░░█████   ░███    "
Write-Host " ░░░█████░█████░    ░███     ░███░░░  ░███  ███ ░███░░███   ░███     ░███░░░   ░░░░███  ░███ ███"
Write-Host "   ░░███ ░░███      █████    ░░██████ ░░██████  ████ █████  █████    ░░██████  ██████   ░░█████ "
Write-Host "    ░░░   ░░░      ░░░░░      ░░░░░░   ░░░░░░  ░░░░ ░░░░░  ░░░░░      ░░░░░░  ░░░░░░     ░░░░░"
Write-Host "Eventloop-Randomizer-Script"

Write-Host "Preparing types"
# Start fetching files

[System.Collections.ArrayList] $types = $(Get-ChildItem -Exclude WreckFest_ERS.ps1,eventloop.txt)  #fetching .txt-files, and define them in an array

if ( $types.Count -eq 0  ){
    Write-Warning "No files found. Please define the maps into files or download the predefined ones from the GitHub"
    #Exit
    Break
}

$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Set1 -Value 0 } # Adding first kind of settings to Array and set to 0 for later use
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Set2 -Value 0 } # second kind of settings ( elimination-secs or number of teams )
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Maps -Value @() } #Adding empty Array for maps. Filled with maps laterly
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Maps_Array -Value @() } #Adding empty Array for maps. Filled with maps laterly
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name rmode -Value "none" } # separate race from demo-modes
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name dmode -Value "none" }

# End fetching files 
# define functions
function load_maps($a) {
    #starting to ask for each entry in array
    Write-Host "`n$($($a).Name) found"
            $rh_l = $null
            do {
                $rh_l = Read-Host -Prompt "Do you want load $($a.Name)? [y/n]"
                if ($rh_l -eq 'y'){
                    [System.Collections.Generic.List[System.Object]]$($a).Maps =  Get-Content $($($a))
                    [System.Array]$($a).Maps_Array =  Get-Content $($($a))
                    $($a).Maps_Array | ForEach-Object  {
                        if ($maps.Contains("$($_)") -eq $FALSE){
                            $a.Maps.Remove($_) | Out-Null 
                            Write-Host "$($_) is not part of the offical maplist. Removed Entry from Randomizer"
                            sleep 1
                        }
                    }
                    [System.Array]$($a).Maps_Array = $($a).Maps # for use in further functions
        }
    } until ($rh_l -eq 'y' -or $rh_l -eq 'n')
}
function mc_race($a) {
    $rh_l = $null
    $($a).Maps_Array | ForEach-Object {
    if ($rmodes.Contains("$($a.rmode)") -eq $False) {
        if ($rmaps.Contains("$($_)") -eq $TRUE){
            ""
            Write-Host "Racing maps found"
            ""
            do {
                Write-Host "Racing-gamemodes: 'team race' ; 'elimination race' ; 'racing'"
                $rh_l = Read-Host -Prompt "Enter Gamemode"
                ""
                if ($rmodes.Contains("$($rh_l)") -eq $TRUE) {
                    $a.rmode = $rh_l
                    if ($rh_l -eq "racing") {
                        $rh_m = $null
                        do { 
                            [int]$rh_m = Read-Host -Prompt "Enter Number of Laps for choosen mode [1-60]"
                            if ($rh_m -ge 1 -or $rh_m -le 60) {
                                $a.Set1 = $rh_m
                                Write-Host "$($rh_m) laps set"
                            }
                        } until ($rh_m -le 60 -or $rh_m -ge 1)
                    }
                    if ($rh_l -eq "team race") {
                        $rh_m = $null
                        $rh_n = $null
                        do {
                            [int]$rh_m = Read-Host -Prompt "Enter NUmer of Teams [2-4]"
                            ""
                            if ($rh_m -ge 2 -or $rh_m -le 4) {
                                $a.Set2 = $rh_m
                                Write-Host "$($rh_m) Teams set."
                                do {
                                    [int]$rh_n = Read-Host -Prompt "Set Number of laps [1-60]"
                                    ""
                                    if ($rh_n -ge 1 -or $rh_n -le 60) {
                                        $a.Set1 = $rh_n
                                        Write-Host "$($rh_n) laps set"
                                    }
                                } until ($rh_n -ge 1 -or $rh_n -le 60)
                            }
                        } until ($rh_m -ge 2 -or $rh_m -le 4)
                    }
                    if ($rh_l -eq "elimination race") {
                        $a.Set1 = 1
                        $rh_m = $null
                        "";""
                        do {
                            Write-Host "$($eli_secs)"
                            $rh_m = Read-Host "Choose seconds of elimination from above (0=every round)"
                            if ($eli_secs.Contains("$($rh_m)") -eq $FALSE) {
                                Write-Host "Only Pick one of the following numbers"
                                $rh_m = $null
                            }
                            if ($eli_secs.Contains("$($rh_m)") -eq $TRUE) {
                                $a.Set2 = $rh_m
                                Write-Host "$($rh_m) seconds set ( 0 = every round)"
                            }
                        } until ($eli_secs.Contains("$($rh_m)") -eq $TRUE)
                    }
                }
            } until ($rmodes.Contains("$($rh_l)") -eq $true)
        }
    }
    }
}
function mc_demo($a) {
    $rh_l = $null
    $($a).Maps_Array | ForEach-Object {
    if ($dmodes.Contains("$($a.dmode)") -eq $False) {
        if ($dmaps.Contains("$($_)") -eq $TRUE){
            ""
            Write-Host "Demolition-maps found"
            do {
                Write-Host "Demolition-gamemodes: 'derby' (Last man Standing) ; 'derby deathmatch' ; 'team derby'"
                $rh_l = Read-Host -Prompt "Enter Gamemode"
                ""
                if ($dmodes.Contains("$($rh_l)") -eq $TRUE) {
                    $a.dmode = $rh_l
                    if ($rh_l -eq 'derby') {
                        $a.Set1 = 1
                        Write-Host "Last man Standing picked. No further setup"
                    }
                    if ($rh_l -eq 'derby deathmatch') {
                        $rh_m = $null
                        do {
                            ""
                            Write-Host "$($derby_secs)"
                            $rh_m = Read-Host -Prompt "Pick time in minutes from above"
                            ""
                            if ($derby_secs.Contains("$($rh_m)") -eq $False) {
                                Write-Host "Wrong Number picked. Please enter a correct Value"
                                $rh_m = $null
                            }
                            if ($derby_secs.Contains("$($rh_m)") -eq $TRUE) {
                                $a.Set1 = $rh_m
                                Write-Host "$($rh_m) minutes set."
                            }
                        } until ($derby_secs.Contains("$($rh_m)") -eq $TRUE)
                    }
                    if ($rh_l -eq 'team derby') {
                        $rh_m = $null
                        $rh_n = $null
                        do {
                            ""
                            Write-Host "$($derby_secs)"
                            $rh_m = Read-Host -Prompt "Pick time in minutes from above"
                            ""
                            if ($derby_secs.Contains("$($rh_m)") -eq $FALSE) {
                                Write-Host "Wrong Number picked. Please enter a correct value"
                                $rh_m = $null
                            }
                            if ($derby_secs.Contains("$($rh_m)") -eq $TRUE) {
                                $a.Set1 = $rh_m
                                Write-Host "$($rh_m) minutes set."
                                do {
                                    [int]$rh_n = Read-Host -Prompt "Pick number of teams [2-4]"
                                    ""
                                    if ($rh_n -ge 2 -or $rh_n -le 4) {
                                        $a.Set2 = $rh_n
                                        Write-Host "$($rh_n) teams set."
                                    }
                                } until ($rh_n -ge 2 -or $rh_n -le 4)
                            }
                        } until ($derby_secs.Contains("$($rh_m)") -eq $TRUE)
                    }
                }
            } until ($dmodes.Contains("$($rh_l)") -eq $true)
        }
    }
    }
}
# Start Defining variables: loading maps, getting modes per file
for ($i=0; $i -le $($types.Count - 1) ; $i++) {
    load_maps $types[$i]
    mc_race $types[$i]
    mc_demo $types[$i]
}               

# Write-Host "Randomizing finished" # Finally!!!
# ""
# do {
    # $cl_c = Read-Host -Prompt "do you want the loop copied into your Clipboard? [y/n] " # faster copy-paste for you
    # if ($cl_c -eq 'y'){
        # Get-Content .\eventloop.txt | Set-Clipboard
        # }
    # } until ($cl_c -eq 'y' -or $cl_c -eq 'n')

# "";"";"" # DONE!!!
# Write-Host "Thanks for using my Script."
# Write-Host "Keep updated on https://github.com/Hedrauta/wreckfest-eventloop-randomizer for new features, updates or if you have new ideas"
# ""
# Write-Host "This script is licensed under MIT. For more Informations, please visit my Github (link above)"
# pause




# !! Signature-Part below !! Do not edit or remove completly ( Script "may" not work again ) !!

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