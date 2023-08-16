# Users and groups

Manage Users and User accounts

## Key-terms

The standard input (stdin) is the keyboard 
Root Linux, ssh, PKI, Whoami, pwd, cd, ls, echo, Redirection, grep, cat, sudo, adduser, useradd

## Opdracht 4

- Create a new user in your VM. 
![Newuser_simon](/00_includes/Linux/Linux_opdracht4/Newuser_simon.PNG)
- The new user should be part of an admin group.
![Newuser_mark_admin](/00_includes/Linux/Linux_opdracht4/Newuser_mark_admin.PNG) 
- The new user should have a password.
![Newuser_passwd_group](/00_includes/Linux/Linux_opdracht4/Newuser_passwd_group.PNG)
- The new user should be able to use ‘sudo’
![Sudo_rechten_mark](/00_includes/Linux/Linux_opdracht4/Sudo_Rechten_Mark.PNG)
- Locate the files that store users, passwords
and groups. See if you can find your newly created user’s data in there.
![Newuser_data](/00_includes/Linux/Linux_opdracht4/Newuser_data.PNG)

### Gebruikte bronnen

[https://wiki.archlinux.org/title/Users_and_groups] 

### Ervaren problemen

Same issue as last opdracht 3, command not working,and User mark didsnt have all the right yet, because he was created with a lower command (useradd instead of adduser) and that makes a differencet to the rights a user has

### Resultaat

See screenshots