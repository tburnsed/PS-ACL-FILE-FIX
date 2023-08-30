#fixes windows ACL by giving files in a folder the same ACLs (or where you point the scrtip to get parent acls
$objUser = New-Object System.Security.Principal.NTAccount(“DOMAINNAME”, “USERNAME”)
#file path that you are copying FROM. no trailing slash
$objFile = Get-Acl "FILEPATH"
$objFile.SetOwner($objUser)
#File path for files you want to change. No trailing slash
$files get-childitem "FILEPATH" -recurse 
foreach($obj in $files )
{

 Set-Acl -aclobject $objFile 

 )