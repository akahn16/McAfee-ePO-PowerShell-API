#List all ePO web API capabilities
$creds = Get-Credential
$Uri = "https://EPO1:8443/remote/core.help"
Invoke-RestMethod -Uri $Uri -Credential $creds
