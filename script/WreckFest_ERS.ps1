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
[System.Collections.ArrayList]$types = $(Get-ChildItem -Exclude WreckFest_ERS.ps1,eventloop.txt) #fetching .txt-files, and define them in an array

for ($i=0; $i -le $($types.Count - 1) ; $i++) {
    Write-Host "$($($types[$i]).Name) found"
        $rh_i = $null
    do {
        $rh_i = $null
        $rh_i = Read-Host -Prompt "Do you want load $($($types[$i]).Name)?"
        if ($rh_i -eq 'y') {
            Set-Variable $($($types[$i]).BaseName) -Value $(Get-Content $($($types[$i]).Name)) #define the map-variable and load them with the maps-content!!
            Write-Host "File with $($($(Get-Variable $($($types[$i]).BaseName)).Value).Count) Maps loaded" # .this).took).me).a).while)).to).get).it)
            }
        } until ($rh_i -eq 'y' -or $rh_i -eq 'n')
    }


#Testing-Area
"Types $($types.Count)"
"Fig8 $($figure8.Count)"
"oval $($oval.Count)"
"Rac $($racing.Count)"
"rac_l $($racing_l.Count)"
"rac_s $($racing_s.Count)"