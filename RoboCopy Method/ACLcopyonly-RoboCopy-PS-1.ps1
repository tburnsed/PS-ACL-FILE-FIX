#script loops through directories and copies only ACL's to the copied files
# copies any files that were not copied but does not copy or overwrite exisiting files. only updates their ACL to match source
#file paths for source and destination no trailing slash 
robocopy "FILEPATH" "FILEPATH" /e /copy:s /secfix /xo /xn /xc 