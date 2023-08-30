# PS-ACL-FILE-FIX
Scripts that fix file Permissons for directorys and files that were copied without ACL's (Powershell, Robocopy and ICACLS)

* use case is for when you copy a directory and / or files without their ACL's. You can any one of these methods to repalce the ACL's of existing files and then copy any New files
* Does not modify exisiting files expect for their ACL's
* Must have orignal files or direcotrys to copy from
* Copies any new files that does not exist
