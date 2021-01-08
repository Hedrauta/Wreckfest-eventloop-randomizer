﻿[System.Collections.Generic.List[System.Object]]$rmaps = @('speedway2_oval_loop';'loop';'triangle_r1';'crash_canyon_main_circuit';'bonebreaker_valley_main_circuit';'fields09_1';'forest12_2';'urban06';'sandpit2_2';'sandpit2_2_rev';'tarmac3_short_circuit';'tarmac3_short_circuit_rev';'mixed1_main_circuit';'mixed1_main_circuit_rev';'mixed2_main_circuit';'mixed2_main_circuit_rev';'mixed7_r3';'mixed7_r3_rev';'mixed9_r1';'mixed9_r1_rev';'mixed8_r2';'mixed8_r3_rev';'fields08_1';'fields08_1_rev';'orest11_1';'forest11_1_rev';'forest11_2';'forest11_2_rev';'sandpit1_long_loop';'sandpit1_long_loop_rev';'sandpit1_alt_loop';'sandpit1_alt_loop_rev';'sandpit2_full_circuit';'sandpit2_full_circuit_rev';'sandpit3_long_loop';'sandpit3_long_loop_rev';'sandpit3_short_loop';'sandpit3_short_loop';'tarmac1_main_circuit';'tarmac1_main_circuit_rev';'tarmac2_main_circuit';'tarmac2_main_circuit_rev';'tarmac3_main_circuit';'tarmac3_main_circuit_rev';'mixed3_long_loop';'mixed3_long_loop_rev';'mixed5_outer_loop';'mixed5_outer_loop_rev';'mixed5_inner_loop';'mixed5_inner_loop_rev';'mixed5_free_route';'urban08_1';'urban08_1_rev';'fields13_1_rev';'fields13_1';'gravel1_main_loop';'gravel1_main_loop_rev ';'sandpit1_short_loop';'sandpit1_short_loop_rev';'tarmac1_short_circuit';'tarmac1_short_circuit_rev';'mixed3_short_loop';'mixed3_short_loop_rev';'mixed4_main_circuit';'mixed4_main_circuit_rev';'mixed7_r1';'mixed7_r1_rev';'mixed8_r1';'dirt_speedway_dirt_oval';'speedway1_oval';'speedway2_inner_oval';'speedway2_outer_oval';'bigstadium_figure_8';'speedway1_figure_8';'speedway2_figure_8';'dirt_speedway_figure_8';'fields12_2')
# defined Racing-maps, for later use
[System.Collections.Generic.List[System.Object]]$dmaps = @('urban07';'fields10_2';'fields11_1';'bigstadium_demolition_arena';'field_derby_arena';'mudpit_demolition_arena';'grass_arena_demolition_arena';'smallstadium_demolition_arena';'fields13_2';'triangle_r2';'speedway2_demolition_arena';'speedway2_classic_arena')
# defined Demolition-Maps
[System.Collections.Generic.List[System.Object]]$modes = @('racing';'derby';'derby deathmatch';'team derby';'team race';'elimination race')
# yeah!!!... gamemodes!!! now the fun-part :D
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
"______________"
[System.Collections.ArrayList]$types = $(Get-ChildItem -Exclude WreckFest_ERS.ps1,eventloop.txt) #fetching .txt-files, and define them in an array
if ( $types.Count -eq 0  ){
    Write-Warning "No files found. Please define the maps into files or download the predefined ones from the GitHub"
    sleep 7
    exit
    }
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Rounds -Value 0 } #Adding Rounds to Array and set to 0 for later use
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Maps -Value @() } #Adding empty Array for maps. So there will be only one Array for everything
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name race_mode -Value "none" } # separate race from demo-modes, so booth kind of tracks can written inside map-file
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name demo_mode -Value "none" }
for ($i=0; $i -le $($types.Count - 1) ; $i++) { #starting to ask for each entry in array
    Write-Host "$($($types[$i]).Name) found"
        $rh_i = $null
    do {
        $rh_i = $null #set this to NULL to avoid issues in later use ( maybe i could use try/catch, but it's a string so no can do )
        $rh_i = Read-Host -Prompt "Do you want load $($($types[$i]).Name)?"
        if ($rh_i -eq 'y') {
            [System.Collections.Generic.List[System.Object]]$($types[$i]).Maps =  Get-Content $($($types[$i]).Name) #type is picked: load the Maps-Sub-List with the maps-content!!
            ""
            Write-Host "File with $($($($types[$i]).Maps).Count) Maps loaded"
            "+++++" #spacer <.<
            do {
                $rh_i_r = $null
                try{[Int]$rh_i_r = Read-Host -Prompt "How much rounds shall $($($types[$i]).BaseName)-Maps have? [1-60]"} #ye, try/catch, because this should be int
                catch { "Only Integers between 1-60!!"} #tried something else than an integer?
                } until ($rh_i_r -ge "1" -and $rh_i_r -le "60") #is it between 1 and 60?
            $($types[$i]).Rounds = $rh_i_r #Set the rounds !
            "______________" #moar spacer!!! o.O
                }
        } until ($rh_i -eq 'y' -or $rh_i -eq 'n')
    }
""
Write-Host "Files are loaded. Start randomizing!!"
sleep 1
"" | Out-File -FilePath .\eventloop.txt #Clearing Content from or create the eventloop.txt to save the randomizer
do {
    for ($i=0; $i -le $($types.Count - 1) ; $i++){ # before randomizing, check the Content
        if ($($types[$i].Rounds) -ge 1 -and $($types[$i].Maps.Count) -eq 0){ # if Maps-Content is empty and round is greater or equal 1
            Write-Host "$($($types[$i]).BaseName)-Maps are empty." 
            do {
                $rh_rm = $null
                $rh_rm = Read-Host -Prompt "Do you want to load $($($types[$i]).Name) again? [y/n]" 
                if ($rh_rm -eq 'y'){
                    $($types[$i]).Maps =  Get-Content $($($types[$i]).Name) #Reloading: load the Maps-Sub-array with the maps-content!!
                    Write-Host "File with $($($($types[$i]).Maps).Count) Maps reloaded"
                    }
                if ($rh_rm -eq 'n'){ # no more of this Type? Set Rounds to zero, so the file will never get loaded again
                    $types[$i].Rounds = 0
                    }
                } until ($rh_rm -eq 'y' -or $rh_rm -eq 'n')
            }
        if ($($($types[$i]).Rounds) -eq 0){ # remove the file from the array, so it's faster ;)
            $types.RemoveAt($i)
            }
        }
    if ($types.Count -ge 1){ # are there still files in the array?
        $rt = Get-Random -Maximum $($types.Count - 1) # pick a random file
        $rt_map = Get-Random $($types[$rt].Maps) # pick a random map out of the file
        "el_add=$rt_map" | Out-File -FilePath .\eventloop.txt -Append
        "el_gamemode=racing" | Out-File -FilePath .\eventloop.txt -Append
        "el_laps=$($types[$rt].Rounds)" | Out-File -FilePath .\eventloop.txt -Append
        $null = $types[$rt].Maps.Remove($rt_map) # remove the picked map from the Maps-List, so it may not repeat anymore
            }
    } until ($types.Count -eq 0) # until the types-array is empty
Write-Host "Randomizing finished" # Finally!!!
""
do {
    $cl_c = Read-Host -Prompt "do you want the loop copied into your Clipboard? [y/n] " # faster copy-paste for you
    if ($cl_c -eq 'y'){
        Get-Content .\eventloop.txt | Set-Clipboard
        }
    } until ($cl_c -eq 'y' -or $cl_c -eq 'n')

"";"";"" # DONE!!!
Write-Host "Thanks for using my Script."
Write-Host "Keep updated on https://github.com/Hedrauta/wreckfest-eventloop-randomizer for new features, updates or if you have new ideas"
""
Write-Host "This script is licensed under MIT. For more Informations, please visit my Github (link above)"
cmd /c pause

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
