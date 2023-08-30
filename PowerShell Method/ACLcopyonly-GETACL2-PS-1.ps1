#script loops through directories and copies only ACL's to the copied files
#file paths for source and destination no trailing slash 
$source = "FILEPATH"
$destination = "FILEPATH"

Get-ChildItem $source -Directory | ForEach-Object {
    $param = @{
        AclObject = $_ | Get-Acl
        Path      = $_.FullName.Replace($source, $destination)
    }
    Set-Acl @param
}