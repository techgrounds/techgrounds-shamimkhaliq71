# File permissions

Manage user rights within Linux

## Key-terms

Permissions, Root Linux, pwd, cd, ls, echo, Redirection, grep, cat, sudo, chmod, chown, rwx

## Opdracht 5

- Create a text file.
![creat a text file](/00_includes/Linux/Linux_opdracht5/Linux_newuser.PNG)
- Make a long listing to view the file’s permissions. Who is the file’s owner and group? What kind of permissions does the file have?
![Listing_file_permission](/00_includes/Linux/Linux_opdracht5/Listing_file_permission.PNG)
- Make the file executable by adding the execute permission (x).
![Excution_xpermission](/00_includes/Linux/Linux_opdracht5/Execution_xpermission.PNG)
- Remove the read and write permissions (rw) from the file for the group and everyone else, but not for the owner. Can you still read it?
![Xpermissions_user_only](/00_includes/Linux/Linux_opdracht5/Xpermissions_user_only.PNG)
![Only_user_permissions](/00_includes/Linux/Linux_opdracht5/Only_user_permissions.PNG) 
![User_can_still_read](/00_includes/Linux/Linux_opdracht5/User_can_still_read.PNG)
- Change the owner of the file to a different user. If everything went well, you shouldn’t be able to read the file unless you assume root privileges with ‘sudo’.
![Change_owner_file](/00_includes/Linux/Linux_opdracht5/Change_owner_file.PNG) 
- Change the group ownership of the file to a different group.
![Keep_permissions_file](/00_includes/Linux/Linux_opdracht5/Keep_permissions_file.PNG)

### Gebruikte bronnen

[https://unstop.com/blog/how-to-create-a-file-in-linux] [https://www.freecodecamp.org/news/linux-chmod-chown-change-file-permissions/] [https://linuxize.com/post/linux-chown-command/]

### Ervaren problemen

I need to understand the different commands for different rights of

### Resultaat

See screenshots