# Protocols

A network protocol is an agreement about how to communicate. There are protocols on every layer of the OSI stack.

The layer 4 protocols, TCP and UDP, are responsible for transporting internet packets. UDP utilises a ‘fire and forget’ strategy, whereas TCP utilises a ‘Three-way handshake’. TCP is therefore more reliable, but UDP is significantly faster.

Protocols in higher layers, like HTTPS and SSH, all have their own use cases. Most of these protocols have a default port number.

## Key-terms

- HTTP (hypertext transfer protocol) -This is the workhorse of the Web.
- 4 Layer protocol 
- TCP (Transmission control protocol) is a connection orientated protocol and is used to provide a reliable end to end connection.
- UDP (used datagram protocol) is a connection less protocol and doesn't guarantee delivery.
- Wireshark ia a network protocol analyser.

## Opdracht

- Identify several other protocols and their associated OSI layer. 
- Name at least one for each layer.

Application Layer:

HTTP (Hypertext Transfer Protocol) - Layer 7
SMTP (Simple Mail Transfer Protocol) - Layer 7
FTP (File Transfer Protocol) - Layer 7
DNS (Domain Name System) - Layer 7
Presentation Layer:

SSL/TLS (Secure Sockets Layer/Transport Layer Security) - Layer 6
MIME (Multipurpose Internet Mail Extensions) - Layer 6
Session Layer:

SIP (Session Initiation Protocol) - Layer 5
NetBIOS (Network Basic Input/Output System) - Layer 5
Transport Layer:

TCP (Transmission Control Protocol) - Layer 4
UDP (User Datagram Protocol) - Layer 4
Network Layer:

IP (Internet Protocol) - Layer 3
ICMP (Internet Control Message Protocol) - Layer 3
Data Link Layer:

Ethernet - Layer 2
Wi-Fi (IEEE 802.11) - Layer 2
Physical Layer:

RS-232 (Recommended Standard 232) - Layer 1
Ethernet (IEEE 802.3) - Layer 1

![Protocol_stacks](/00_includes/Network_divices/Protocol_stacks.PNG)

- Figure out who determines what protocols we use.

Protocols are needed in every field like society, science & technology, Data Communication, media, etc. Protocols are a fundamental aspect of digital communication as they dictate how to format, transmit and receive data. They are a set of rules that determines how the data will be transmitted over the network.

It can also be defined as a communication standard followed by the two key parties(sender and receiver) in a computer network to communicate with each other.

It specifies what type of data can be transmitted, what commands are used to send and receive data, and how data transfers are confirmed.
Therefore, Protocols are developed by industry-wide organizations.

- What is needed to introduce your own protocol.

Introducing your own protocol involves a comprehensive process that requires careful planning, technical expertise, and collaboration with the networking community.

- Look into wireshark and install this program. - Try and capture a bit of your own network data.

![Wireshark_installed](/00_includes/Network_divices/Wireshark_installed.PNG)


- Search for a protocol you know and try to understand how it functions. 

IP protocol, the Internet protocol. is responsible for routing data by indicating where data packets come from and what their destination is. IP makes network-to-network communications possible. Hence, IP is considered a network layer (layer 3) protocol.


### Gebruikte bronnen

[https://www.wireshark.org/]  
[https://docs.oracle.com/cd/E19683-01/806-4075/ipov-10/index.html]   
[https://nl.wikipedia.org/wiki/Wireshark] 
[https://afteracademy.com/blog/what-are-protocols-and-what-are-the-key-elements-of-protocols/]  
[http://www.steves-internet-guide.com/internet-protocol-suite-explained/]
[https://www.cloudflare.com/learning/network-layer/what-is-a-protocol/]

### Ervaren problemen

It was quit okay, not to tricky and clear cut language to me.

### Resultaat

See screenshots 