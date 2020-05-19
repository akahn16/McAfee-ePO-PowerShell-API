#Run Client Task on Systems
$creds = Get-Credential
$OK = "OK"
$EPOError = "Error"
$EPOPRODUCTID="EPOAGENTMETA"
$EPOTASKID="18"
$ComputerNames="Computer1,Computer2,Computer3"
$Uri = "https://EPO1:8443/remote/clienttask.run?names=$ComputerNames&productId=$EPOPRODUCTID&taskId=$EPOTASKID"
Invoke-RestMethod -Uri $Uri -Credential $creds
if($output -match $OK)
{
write-host "Success"
}
if($output -match $EPOError)
{
write-host "Error"
}
