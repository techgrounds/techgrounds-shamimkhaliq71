# Network detection

In order to prevent or stop attacks on a network, you must be able to analyse your network. There are many tools available to do this, but this exercise will focus on two very popular ones: nmap and Wireshark.

Nmap (Network Mapper) is a tool that scans a network to find information about it. For example, what ports are open in a host in your network.

Wireshark is a protocol analyzer. It looks at network traffic and shows information about packets like protocol and destination (among other things).

## Key-terms

Nmap (network Mapper): A network scanner to discover hosts and services on a computer network by sending packets and analyzing the responses.

Wireshark: An open source tool for profiling network traffic and analyzing packets.

Packets: Packets in networking are units of data that contain information, such as source and destination addresses, used for communication between devices over a network.

## Opdracht

- Scan the network of your Linux machine using nmap. What do you find?

Nmap is not installed on Linux, so therefore first I need to install Nmap using the following command in Linux: sudo apt install nmap

![Nmap_installed](/00_includes/Sec-1/Nmap_installed.PNG) ![Network_scan](/00_includes/Sec-1/Network_scan.PNG)

To double check if Nmap is installed type the following command: nmap -v
I can see that I am currently running Nmap 7.8

In order to scan my network, I have to type in the following command: ifconfig
In the second scan you can see that the network adress is 10.105.175.144
After that I typed the following command to scan my network:
Nmap followed by the network adress: nmap 10.105.175.144 
![Nmap_scan_IP](/00_includes/Sec-1/Nmap_scan_IP.PNG)

I can see in te 3rd line that it shows nest-sh-khaliq.lxd this is the fully qualified domein name, in my case that's mine. Host is up, means this server is online.
And I can also see which ports are open. 
Open ssh and http

Instead of the network adress, I can also use the hostname or domein name if I know that, in order to get the same result. See screenshot below.

![Nmap_scan_hostname](/00_includes/Sec-1/Nmap_scan_hostname.PNG)

- Open Wireshark in Windows/MacOS Machine. 
Opened Wireshark to proceed with this assignment.

- Analyse what happens when you open an internet browser. (Tip: you will find that Zoom is constantly sending packets over the network. You can either turn off Zoom for a minute, or look for the packets sent by the browser between the packets sent by Zoom.)


### Gebruikte bronnen

[https://www.google.com/search?q=Scan+the+network+of+your+Linux+machine+using+nmap.&rlz=1C1YTUH_nlNL998NL998&oq=Scan+the+network+of+your+Linux+machine+using+nmap.&aqs=chrome..69i57j33i160l4.1691j0j7&sourceid=chrome&ie=UTF-8#fpstate=ive&vld=cid:1431faba,vid:5tzp9QzwnUQ]
[https://nmap.org/]
[https://www.wireshark.org/]
[https://securitytrails.com/blog/nmap-commands]

### Ervaren problemen
[Geef een korte beschrijving van de problemen waar je tegenaan bent gelopen met je gevonden oplossing.]

### Resultaat
[Omschrijf hoe je weet dat je opdracht gelukt is (gebruik screenshots waar nodig).]