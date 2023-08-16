# Processes in Linux

How to manage processes in Linux. Processes in Linux can be divided into three categories: Daemons, Services, and Programs. A daemon runs in the background and is non-interactive. A Service responds to requests from programs. A service may be interactive. A program is run and used by users (e.g. Vim).


## Key-terms

Daemons, Services, and Programs, Telnetd, Inetd, ssh (secure shell), PID (Process ID) number, systemctl, 

## Opdracht 6

- Start the telnet daemon.
- Find out the PID of the telnet daemon.
- Find out how much memory telnetd is using.

![PID_Memory](/00_includes/Linux/Linux_opdracht6/PID_Memory.PNG)

- Stop or kill the telnetd process.

![Stop_telnetd_process](/00_includes/Linux/Linux_opdracht6/Stop_telnetd_process.PNG)


### Gebruikte bronnen

[https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units] 


### Ervaren problemen

Couldn't open Telnetd afterinstalling it, but found out that on my Linux it's a different named differetly,De Service and after using the right commands with sudo at the start, I was good to go.

### Resultaat
1st 3 questions see 1st screenshot, and 4th question see 2nd screenshot.
