#List all ePO Client Tasks
$creds = Get-Credential
$Uri = "https://EPO1:8443/remote/clienttask.find"
Invoke-RestMethod -Uri $Uri -Credential $creds

#Search for specific ePO Client Tasks
$creds = Get-Credential
$Uri = "https://EPO1:8443/remote/clienttask.find?searchText=DLP"
Invoke-RestMethod -Uri $Uri -Credential $creds
