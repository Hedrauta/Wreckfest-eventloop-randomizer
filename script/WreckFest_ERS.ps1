﻿" __          __            _     __          _   ______ _____   _____ "
" \ \        / /           | |   / _|        | | |  ____|  __ \ / ____|"
"  \ \  /\  / / __ ___  ___| | _| |_ ___  ___| |_| |__  | |__) | (___  "
"   \ \/  \/ / '__/ _ \/ __| |/ /  _/ _ \/ __| __|  __| |  _  / \___ \ "
"    \  /\  /| | |  __/ (__|   <| ||  __/\__ \ |_| |____| | \ \ ____) |"
"     \/  \/ |_|  \___|\___|_|\_\_| \___||___/\__|______|_|  \_\_____/ "
"Wreckfest Eventloop-Randomizer-Script"

"Preparing types"
# Start fetching files

[System.Collections.ArrayList]$Script:types = $(Get-ChildItem -Exclude WreckFest_ERS.ps1,eventloop.txt,WreckfestERS.cer)

if ( $types.Count -eq 0  ){
    Write-Warning "No files found. Please define the maps into files or download the predefined ones from the GitHub"
    #Exit
    Break
}

# Defining Maps and Modes

[System.Array]$Script:rmaps = @('speedway2_inner_oval','speedway2_outer_oval','dirt_speedway_dirt_oval','speedway1_oval','fields12_1','fields12_1_rev','fields10_1','fields09_1','speedway2_figure_8','dirt_speedway_figure_8','speedway1_figure_8','fields12_2','bigstadium_figure_8','sandpit3_short_loop','sandpit3_short_loop_rev','tarmac3_main_circuit','tarmac3_main_circuit_rev','tarmac1_main_circuit','tarmac1_main_circuit_rev','tarmac1_short_circuit','tarmac1_short_circuit_rev','mixed7_r1','mixed7_r1_rev','mixed7_r2','mixed7_r2_rev','urban08_1','urban08_1_rev','gravel1_main_loop','gravel1_main_loop_rev','mixed5_outer_loop','mixed5_outer_loop_rev','mixed5_inner_loop','mixed5_inner_loop_rev','mixed5_free_route','mixed3_long_loop','mixed3_long_loop_rev','mixed3_short_loop','mixed3_short_loop_rev','mixed3_r3','mixed3_r3_rev','fields14_1','fields14_2','mixed4_main_circuit','mixed4_main_circuit_rev','sandpit1_long_loop','sandpit1_long_loop_rev','sandpit1_short_loop','sandpit1_short_loop_rev','sandpit1_alt_loop','sandpit1_alt_loop_rev','sandpit2_full_circuit','sandpit2_full_circuit_rev','sandpit2_2','sandpit2_2_rev','crm01_1','crm01_5','sandpit3_long_loop','sandpit3_long_loop_rev','crm02_1','tarmac2_main_circuit','tarmac2_main_circuit_rev','tarmac2_main_circuit_tourney','mixed9_r1','mixed9_r1_rev','triangle_r1','fields08_1','fields08_1_rev','tarmac3_short_circuit','tarmac3_short_circuit_rev','mixed1_main_circuit','mixed1_main_circuit_rev','mixed7_r3','mixed7_r3_rev','mixed2_main_circuit','mixed2_main_circuit_rev','mixed8_r1','mixed8_r2','mixed8_r3_rev','forest12_1','forest12_1_rev','forest12_2','forest13_1','forest13_1_rev','forest13_2','forest13_2_rev','forest11_1','forest11_1_rev','forest11_2','forest11_2_rev','rt01_1','speedway2_oval_loop','bonebreaker_valley_main_circuit','crash_canyon_main_circuit','loop','fields13_1','fields13_1_rev','urban06','urban09_1')
# Racing-maps
[System.Array]$Script:dmaps = @('crm01_3','crm01_2','crm02_2','triangle_r2','fields13_2','smallstadium_demolition_arena','mudpit_demolition_arena','grass_arena_demolition_arena','field_derby_arena','bigstadium_demolition_arena','fields11_1','fields10_2','urban07','wrecker01_1','urban09_2')
# Demolition-Maps
[System.Array]$Script:maps = $Script:rmaps + $Script:dmaps
# Summary of both

[System.Array]$Script:dmodes = @('derby';'derby deathmatch';'team derby')
[System.Array]$Script:rmodes = @('racing';'team race';'elimination race')
# Defined Gamemodes
[System.Array]$Script:eli_secs = @('0';'20';'30';'45';'60';'90';'120')
[System.Array]$Script:derby_secs = @('2';'4';'6';'8';'10';'12';'14';'16';'18';'20')
# Defined "special" Settings for certain Gamemodes

$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Set1 -Value 0 } # Adding first kind of settings to Array and set to 0 for later use
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Set2 -Value 0 } # second kind of settings ( elimination-secs or number of teams )
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Maps -Value @() } #Adding empty Array for maps. Filled with maps laterly
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Maps_Array -Value @() } #Adding empty Array for maps. Filled with maps laterly
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name rmode -Value "none" } # separate race from demo-modes
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name dmode -Value "none" }

# define functions
function load_maps($a) {
    "`n$($($a).Name) found"
            $rh_l = $null
            do {
                $rh_l = Read-Host -Prompt "Do you want load $($a.Name)? [y/n]"
                if ($rh_l -eq 'y'){
                    [System.Collections.Generic.List[System.Object]]$($a).Maps =  Get-Content $($($a))
                    [System.Array]$($a).Maps_Array =  Get-Content $($($a))
                    $($a).Maps_Array | ForEach-Object  {
                        if ($maps.Contains("$($_)") -eq $FALSE){
                            $a.Maps.Remove($_) | Out-Null 
                            "$($_) is not part of the offical maplist. Removed Entry from Randomizer"
                            Start-Sleep -Milliseconds 500
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
            "Racing maps found"
            ""
            while ($rmodes.Contains("$($rh_l)") -eq $FALSE) {
                "Racing-gamemodes: 'team race' ; 'elimination race' ; 'racing'"
                $rh_l = Read-Host -Prompt "Enter Gamemode"
            }
            ""
            $a.rmode = $rh_l
            if ($rh_l -eq "racing") {
                $rh_m = 0
                while ($($rh_m -ge 1 -and $rh_m -le 60) -eq $FALSE) {
                    try {[int]$rh_m = Read-Host -Prompt "Enter Number of Laps for choosen mode [1-60]"}
                    catch {Write-Warning "Please enter a valid number"}
                }
                $a.Set1 = $rh_m
                "$($rh_m) lap(s) set"
            }
            if ($rh_l -eq "team race") {
                $rh_m = 0
                $rh_n = $null
                while ($($rh_m -ge 2 -and $rh_m -le 4) -eq $FALSE) {
                    try{[int]$rh_m = Read-Host -Prompt "Enter Number of Teams [2-4]"}
                    catch {Write-Warning "Please enter a valid number"}
                }
                ""
                $a.Set2 = $rh_m
                "$($rh_m) Teams set."
                while ($($rh_n -ge 1 -and $rh_n -le 60) -eq $FALSE) {
                    try{[int]$rh_n = Read-Host -Prompt "Set Number of laps [1-60]"}
                    catch {Write-Warning "Please enter a valid number"}
                }
                ""
                $a.Set1 = $rh_n
                "$($rh_n) lap(s) set"
            }
            if ($rh_l -eq "elimination race") {
                $a.Set1 = 1
                $rh_m = $null
                ""
                while ($eli_secs.Contains("$($rh_m)") -eq $FALSE){
                    "$($eli_secs)"
                    $rh_m = Read-Host "Choose seconds of elimination from above (0=every round)"
                    if ($eli_secs.Contains("$($rh_m)") -eq $FALSE) {
                        Write-Warning "Only Pick one of the following numbers"
                        $rh_m = $null
                    }
                }
                $a.Set2 = $rh_m
                "$($rh_m) seconds set"
            }
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
            "Demolition-maps found"
            While ($dmodes.Contains("$($rh_l)") -eq $FALSE){
                "Demolition-gamemodes: 'derby' (Last man Standing) ; 'derby deathmatch' ; 'team derby'"
                $rh_l = Read-Host -Prompt "Enter Gamemode"
            }
            ""
            if ($dmodes.Contains("$($rh_l)") -eq $TRUE) {
                $a.dmode = $rh_l
                if ($rh_l -eq 'derby') {
                    $a.Set1 = 1
                    "Last man Standing picked. No further setup"
                }
                if ($rh_l -eq 'derby deathmatch') {
                    $rh_m = $null
                    while ($derby_secs.Contains("$($rh_m)") -eq $FALSE) {
                        ""
                        "$($derby_secs)"
                        $rh_m = Read-Host -Prompt "Pick time in minutes from above"
                        ""
                        if ($derby_secs.Contains("$($rh_m)") -eq $False) {
                            Write-Warning "Wrong Number picked. Please enter a correct Value"
                            $rh_m = $null
                        }
                    }
                    $a.Set1 = $rh_m
                    "$($rh_m) minutes set."
                }
                if ($rh_l -eq 'team derby') {
                    $rh_m = $null
                    $rh_n = $null
                    while ($derby_secs.Contains("$($rh_m)") -eq $FALSE) {
                        "$($derby_secs)"
                        $rh_m = Read-Host -Prompt "Pick time in minutes from above"
                        ""
                        if ($derby_secs.Contains("$($rh_m)") -eq $FALSE) {
                            Write-Warning "Wrong Number picked. Please enter a correct value"
                            $rh_m = $null
                        }
                    }
                    $a.Set1 = $rh_m
                    "$($rh_m) minutes set."
                    while ($($rh_n -ge 2 -and $rh_n -le 4) -eq $FALSE) {
                        try{[int]$rh_n = Read-Host -Prompt "Pick number of teams [2-4]"}
                        catch {Write-Warning "Please enter a valid value"}
                    }
                    $a.Set2 = $rh_n
                    "$($rh_n) teams set."
                }
            }
        }
        }
    }
}
function count_maps {
    $count_maps = 0
    for ($i=0;$i -le $($types.Count - 1);$i++){
        $count_maps += $types[$i].Maps.Count
    }
    "$($count_maps) Maps left"
    [int]$Script:count_m = $count_maps
}
function random_file {
    if ($count_m -gt 1) {
        $rand = Get-Random -Minimum 1 -Maximum $count_m
        $cup = 0
        for ($i=0; $rand -ge $cup; $i++) {
            $cup += $types[$i].Maps.Count
            if ($rand -le $cup) {
                $Script:p = $i
            }
        }
    }
    else {$Script:p = 0}
    
}
function random_map {
    $Script:map = $null
    if ($types[$p].Maps.Count -gt 1) {
        $Script:map = Get-Random -InputObject $types[$p].Maps
    }
    else {$Script:map = $types[$p].Maps[0]}
}
function reload_or_remove { # Check if content of object is empty. Ask for Reload, or remove if not.
    for ($i=0; $i -le $($types.Count - 1) ; $i++){
        if ($($types[$i].Set1) -ge 1 -and $($types[$i].Maps.Count) -eq 0){
            "$($types[$i].BaseName)-Maps are empty." 
            do {
                $rh_rm = $null
                $rh_rm = Read-Host -Prompt "Do you want to load $($($types[$i]).Name) again? [y/n]" 
                if ($rh_rm -eq 'y'){
                    [System.Collections.Generic.List[System.Object]]$($types[$i]).Maps =  $types[$i].Maps_Array 
                    "$($types[$i].Maps.Count) Maps reloaded"
                }
                if ($rh_rm -eq 'n'){ 
                    $types[$i].Set1 = 0
                }
            } until ($rh_rm -eq 'y' -or $rh_rm -eq 'n')
        }
        if ($($($types[$i]).Set1) -eq 0){ 
            $types.RemoveAt($i) | Out-Null
        }
    }
}
function write_file {
    "el_add=$Script:map" | Out-File -FilePath .\eventloop.txt -Append
    if ($rmaps.Contains("$($map)") -eq $true){
        "el_gamemode=$($types[$p].rmode)" | Out-File -FilePath .\eventloop.txt -Append
        if ($types[$p].rmode -eq "racing") {
            "el_laps=$($types[$p].Set1)" | Out-File -FilePath .\eventloop.txt -Append
        }
        if ($types[$p].rmode -eq "team race") {
            "el_num_teams=$($types[$p].Set2)" | Out-File -FilePath .\eventloop.txt -Append
            "el_laps=$($types[$p].Set1)" | Out-File -FilePath .\eventloop.txt -Append
        }
        if ($types[$p].rmode -eq "elimination race") {
            "el_elimination_interval=$($types[$p].Set2)" | Out-File -FilePath .\eventloop.txt -Append
        }
    }
    if ($dmaps.Contains("$($map)") -eq $true) {
        "el_gamemode=$($types[$p].dmode)" | Out-File -FilePath .\eventloop.txt -Append
        if ($types[$p].dmode -eq "derby deathmatch") {
            "el_time_limit=$($types[$p].Set1)" | Out-File -FilePath .\eventloop.txt -Append
        }
        if ($types[$p].dmode -eq "team derby") {
            "el_num_teams=$($types[$p].Set2)" | Out-File -FilePath .\eventloop.txt -Append
            "el_time_limit=$($types[$p].Set1)" | Out-File -FilePath .\eventloop.txt -Append
        }
    }
    "" | Out-File -FilePath .\eventloop.txt -Append
    $types[$p].Maps.Remove("$($Script:map)") | Out-Null
}

# Start Defining variables: loading maps, getting modes per file
for ($i=0; $i -le $($types.Count - 1) ; $i++) {
    load_maps $types[$i]
    mc_race $types[$i]
    mc_demo $types[$i]
}
"Setup Complete. Start Randomizing <.<"
Start-Sleep -Milliseconds 500
"" | Out-File .\eventloop.txt
while ($types.Count -ge 1) {
    count_maps
    random_file
    random_map
    write_file
    reload_or_remove
}
"";"";""
"Randomizing finished" # Finally!!! ""
do {
    $cl_c = Read-Host -Prompt "do you want the loop copied into your Clipboard? [y/n] " # faster copy-paste for you
    if ($cl_c -eq 'y'){
        Get-Content .\eventloop.txt | Set-Clipboard
    }
} until ($cl_c -eq 'y' -or $cl_c -eq 'n')

"";"";"" # DONE!!!
"Thanks for using my Script."
"Keep updated on https://github.com/Hedrauta/wreckfest-eventloop-randomizer for new features, updates or if you have new ideas"
""
"This script is licensed under MIT. For more Informations, please visit my Github (link above)"
Start-Sleep -Seconds 5

# Please do not edit or remove the following lines. It'll need the WreckfestERS.crt installed on your PC to run properly
# SIG # Begin signature block
# MIIFZAYJKoZIhvcNAQcCoIIFVTCCBVECAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUysE5bYoqC+7ewOnT10SSsUAh
# kGGgggMCMIIC/jCCAeagAwIBAgIQSb1S4BP9Rr1Bp3x2CHYX6jANBgkqhkiG9w0B
# AQsFADAXMRUwEwYDVQQDDAxXcmVja2Zlc3RFUlMwHhcNMjEwMjEwMTYxOTIyWhcN
# MjIwMjEwMTYzOTIyWjAXMRUwEwYDVQQDDAxXcmVja2Zlc3RFUlMwggEiMA0GCSqG
# SIb3DQEBAQUAA4IBDwAwggEKAoIBAQC5H52vw2/ilgWc3Q1eFu7xsJdhmopeQ+hI
# d7U9+qCRBvgx9mXJX0NKwvloy8IwDCea2CUXXaFQFIACdyb/+FYjusDUGcXc8Nz9
# u1mAVpYTxzcweqQSntdY7IBUiXQnJcxGRKtjmKc3/N/OK9ZX2Y8E/4YKFw50TVnE
# 0Z25zIKJvZa9ue02kIW+l/ukAP+sql6Sq/zX7p/fyXf5KcuLdRvHEkiT1CZLav8n
# uV9REmJo+EMORIHAqwPfeUojAOpqg29eHDP5Q1xIjQlYFaQY54mOedpaRdy+Cwex
# Rw3AP2fu1+ZtX/y6J+NxJQDQADRdYvhsXl+CWey833B/dQlk8F4JAgMBAAGjRjBE
# MA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzAdBgNVHQ4EFgQU
# MACzacu3u7dO4GAnC8++1eCLCccwDQYJKoZIhvcNAQELBQADggEBAJPE3UZP9p+u
# I3ai4kSpzrrX7j2PqYmUUEacRviboaaV1dlrH/vSiAy3ejeY3N6gvvsr1WBdC0Dx
# JHrV9IvOepmqLK1GI3Nzuez0r/6ws+MIBvbbtgWiGAz3YvlCa3AF8Q+ueixSJV8H
# RGB4mqIzF/PZEW2EOJaUTS5HNhJTdVmDpfkKL/0BYpp9JVOI6Iy01On7OTDDFvGO
# NMND/F/TNmEsi1t7Uz1UBvSZr73/7FuSBkNGRJqEz16INgVEfKk9dzp7qj5k6x66
# IPbHkSZVGy/f6mY6D6BxM+vjf6cGd1YMFU5aa9dg/DGmK87g1xNTtvAaGRZEiAtd
# Ok2qbomaTfwxggHMMIIByAIBATArMBcxFTATBgNVBAMMDFdyZWNrZmVzdEVSUwIQ
# Sb1S4BP9Rr1Bp3x2CHYX6jAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAig
# AoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgEL
# MQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQUtXEa/LEBgCB7KwaPS7X7
# whFO52EwDQYJKoZIhvcNAQEBBQAEggEAsK7SdFpk3XsrtZgsgpuvg0+l8M1o+xZu
# yJ5f6pv5P/cpfCuUD0TH38H5rKRm1uxhBXEAhBq/C7amwLZiKGIMGkLS3nBXm1sC
# tO4ojRxOVRh8Epwh1fvxXhE1h+6o/iywrOYeaLDME7NDhl3BDLQA26qPQkmKXczA
# rMLsJeYoOGB6mdfS9BDb8Ram68PrDaKPdQLrhonxRXJmN90pe14vGuuepy/zMQBf
# BD8Qzix6+QJkoWPyFz4ZLaGE9oaDUnAHwVIwJ3X/dOFoB9lO9843db1G2z9qWPOq
# mu7wywLL/AJYyoVVgj92JOBiOHcJKy6Cs9EeOnlDtSkKpeD8L/z5wA==
# SIG # End signature block
