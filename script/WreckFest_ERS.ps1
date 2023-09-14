" __          __            _     __          _   ______ _____   _____ "
" \ \        / /           | |   / _|        | | |  ____|  __ \ / ____|"
"  \ \  /\  / / __ ___  ___| | _| |_ ___  ___| |_| |__  | |__) | (___  "
"   \ \/  \/ / '__/ _ \/ __| |/ /  _/ _ \/ __| __|  __| |  _  / \___ \ "
"    \  /\  /| | |  __/ (__|   <| ||  __/\__ \ |_| |____| | \ \ ____) |"
"     \/  \/ |_|  \___|\___|_|\_\_| \___||___/\__|______|_|  \_\_____/ "
"Wreckfest Eventloop-Randomizer-Script"
"Now with Mod-Support"

$maps = Get-Content .\sheets_and_more\wf_tracks.csv | ConvertFrom-Csv
$preset = Get-ChildItem .\sheets_and_more\presets\

do {
    $cl_c = Read-Host -Prompt "do you want the loop copied into your Clipboard? [y/n] " # faster copy-paste for you
    if ($cl_c -eq 'y'){
        Get-Content .\eventloop.txt | Set-Clipboard
    }
} until ($cl_c -eq 'y' -or $cl_c -eq 'n')

Clear-Host; # DONE!!!
"Thanks for using my Script."
"Keep updated on https://github.com/Hedrauta/wreckfest-eventloop-randomizer for new features, updates or if you have new ideas"
""
"This script is licensed under MIT. For more Informations, please visit my Github (link above)"
Start-Sleep -Seconds 10
# TODO: add funny animation?

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
