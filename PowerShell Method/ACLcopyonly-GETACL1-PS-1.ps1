#script loops through directories and copies only ACL's to the copied files
#file paths for source and destination no trailing slash 
$source="FILEPATH"
$destination="FILEPATH"
foreach($obj in get-childitem $source -recurse)
{
    $acl = get-acl $obj.FullName
    set-acl $obj.FullName.Replace($source,$destination) -Confirm:$false  $acl
}
