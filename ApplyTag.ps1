#Apply Tag
$creds = Get-Credential
$OK = "OK"
$EPOError = "Error"
$EPOTAG="<Place_Tag_Here>"
$ComputerNames="System1,System2,System3"
$Uri = "https://EPO1:8443/remote/system.applyTag?names=$ComputerNames&tagName=$EPOTAG"
$output = Invoke-RestMethod -Uri $Uri -Credential $creds
if($output -match $OK)
{
write-host "Success"
}
if($output -match $EPOError)
{
write-host "Error"
}
