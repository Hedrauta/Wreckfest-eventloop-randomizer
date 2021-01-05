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
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Rounds -Value 0 } #Adding Rounds to Array and set to 0 for later use
$types | ForEach-Object{ $_ | Add-Member -MemberType NoteProperty -Name Maps -Value @() } #Adding empty Array for maps. So there will be only one Array for everything
for ($i=0; $i -le $($types.Count - 1) ; $i++) { #starting to ask for each entry in array
    Write-Host "$($($types[$i]).Name) found"
        $rh_i = $null
    do {
        $rh_i = $null #set this to NULL to avoid issues in later use ( maybe i could use try/catch, but it's a string so no can do )
        $rh_i = Read-Host -Prompt "Do you want load $($($types[$i]).Name)?"
        if ($rh_i -eq 'y') {
            Set-Variable $($($types[$i]).BaseName) -Value $(Get-Content $($($types[$i]).Name)) #type is picked: define the map-variable and load them with the maps-content!!
            ""
            Write-Host "File with $($($(Get-Variable $($($types[$i]).BaseName)).Value).Count) Maps loaded" # .this).took).me).a).while)).to).get).it)
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


#Testing-Area
"Types $($types.Count)"
"Fig8 $($figure8.Count) Rounds $($($types[0]).Rounds)"
"oval $($oval.Count) Rounds $($($types[1]).Rounds)"
"Rac $($racing.Count) Rounds $($($types[2]).Rounds)"
"rac_l $($racing_l.Count) Rounds $($($types[3]).Rounds)"
"rac_s $($racing_s.Count) Rounds $($($types[4]).Rounds)"
"spec $($special.Count) Rounds $($($types[5]).Rounds)"