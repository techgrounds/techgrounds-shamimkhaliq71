# Firewalls

Firewalls is software dat netwerkverkeer filtert. Een firewall kan dit verkeer filteren op protocol, poortnummer, bron en bestemming van een pakket. Meer geavanceerdere firewalls kunnen ook de inhoud inspecteren om eventuele gevaren te blokkeren.

CentOS en REHL hebben een standaard firewall daemon (firewalld) geïnstalleerd. Voor Ubuntu is de standaard firewall ufw. Een oudere nog veel voorkomende firewall in Linux is iptables.
 
Firewalls kunnen stateful of stateless zijn. Stateful firewalls onthouden de verschillende states van vertrouwde actieve sessies. Hierbij hoeft een stateful firewall niet elke pakketje te scannen voor deze verbindingen.

In een cloud omgeving zal je firewalls veel tegenkomen als een van de vele verdedigingslinies tegen het publieke internet.


## Key-terms

Firewall: A firewall is a network security device or software that acts as a barrier between a trusted internal network and an untrusted external network, such as the internet. Its main purpose is to monitor and control incoming and outgoing network traffic based on predetermined security rules.

CentOS(The Community Enterprise Operating System): A popular Linux distribution that serves as an open-source, community-supported version of the enterprise operating system. CentOS is a robust and reliable Linux distribution that caters to various server and computing needs. Its stability, security, and compatibility with RHEL make it a popular choice for organizations and individuals seeking a free and open-source operating system.

REHL(Red Hat Enterprise Linux) Is a commercial operating system for professional surroundings. A leading provider of open-source enterprise software solutions. They offer a range of products and services designed to meet the needs of businesses and organizations. Red Hat plays a crucial role in the open-source ecosystem, providing enterprise-grade software solutions that empower organizations with security, stability, and flexibility. Their products and services are widely used in various industries, including finance, healthcare, government, and telecommunications.

ufw (Uncomplicated Firewall): is a front-end tool for managing firewall rules in Linux-based operating systems, particularly those using the Ubuntu distribution. It provides a simplified and user-friendly interface for configuring the underlying netfilter firewall system, which is a part of the Linux kernel.

iptables: is a command-line utility in Linux-based operating systems for configuring and managing the netfilter firewall system. Netfilter is a framework built into the Linux kernel that enables packet filtering, network address translation (NAT), and other network-related operations.

De verschillende types firewall
- stateful: Stateful firewalls monitor all aspects of the traffic streams, their characteristics and communication channels. These firewalls can integrate encryption or tunnels, identify TCP connection stages, packet state and other key status updates.
- stateless: Stateful firewalls monitor all aspects of the traffic streams, their characteristics and communication channels. These firewalls can integrate encryption or tunnels, identify TCP connection stages, packet state and other key status updates.

- hardware: Hardware firewalls are network security devices that are implemented as dedicated hardware appliances. They are designed to provide robust and high-performance firewall protection for networks.

Hardware firewalls operate at the network level (Layer 3) of the OSI model, and they can analyze and control network traffic based on various parameters such as source and destination IP addresses, ports, protocols, and application-layer data. They often include additional features such as intrusion detection/prevention, virtual private network (VPN) support, content filtering, and advanced threat protection. Hardware firewalls are deployed at the network perimeter, typically between an internal network and the internet.

- software: 
Software firewalls are network security applications or programs that run on individual computers or servers. They provide a layer of protection by monitoring and controlling network traffic at the operating system or software level.

Software firewalls work by analyzing network packets and applying predefined security rules to determine whether to allow or block the traffic. They can filter incoming and outgoing connections based on factors such as source and destination IP addresses, ports, protocols, and application-level information. Software firewalls often provide additional features like intrusion detection/prevention, application control, and logging capabilities. Software firewalls are commonly used on personal computers and servers to protect against unauthorized network access, malware, and other security threats.

Apache: Apache web server is a popular open source web server software that is used to host websites and web applications. It is a powerful and reliable web server that can be used to serve static and dynamic content.


## Opdracht

Study the following:
Different types firewall
stateful / stateless
hardware / software

- Install a webserver on your VM.

In another assignment I had to install apache2 using the following command: (apt install apache2 -y)
Therefor, I will check if it's still installed usig the following command: sudo service apache2 status
I can see it's active and runnung.

![Apache2_installed](/00_includes/Sec_2/Apache2%20installed.jpg)

- Checkout the standard page which is installed with the webserver. To answer this we need [ipnummer]:[web_port] provided by Techground in nested_list and type that in the webbrouwser.
servername:3.121.130.219
web_port: 58007
3.121.130.219:58007  

![Webpage_linked_apache2](/00_includes/Sec_2/Webpage_linked_apache2.jpg)

- Configure the firewall to block web traffic, but allow ssh traffic.

We are using Ubunto, so therefor the firewall deamon ufw will be used. I made sure to check whether the firewall was active using the following command: ufw status. It showed inactive
and followed by the next command: sudo ufw enable
and proceded with:  sudo default deny incoming
This blocked all incoming traffic. However, I had to allow SSH, so the next command was put in place:
sudo ufw allow OpenSSH and check status with 
sudo ufw status.

See all the steps in the screenshots.

![Block incoming_except SSH](/00_includes/Sec_2/Block%20incomming_except%20SSH.jpg)
![Check status SSH](/00_includes/Sec_2/Check%20status%20SSH.jpg)

- Check if Firewall is working properly.
To check this I try to reload the Apache default page and it showed the following in the screenshot.

![Blocking Apache default page worked](/00_includes/Sec_2/Blocking%20Apache%20default%20page%20worked.jpg)

### Gebruikte bronnen

[https://www.cdw.com/content/cdw/en/articles/security/stateful-versus-stateless-firewalls.html]
[https://nl.wikipedia.org/wiki/CentOS]
[https://www.alibabacloud.com/tech-news/web-server/gipuaq2qin-how-to-open-apache-web-server-in-browser]
[https://askubuntu.com/questions/1368071/iptables-that-only-allow-incoming-traffic-to-openssh-and-block-all-other-traffic]
[Chatgpt]

### Ervaren problemen

I didn't know the to answer this question we needed [ipnummer]:[web_port] provided by Techground in nested_list. But once Kaman pointed me in the right direction and I used instructions on different websites, I was able to complete the assignement without any further issues.


### Resultaat

See all screenshots