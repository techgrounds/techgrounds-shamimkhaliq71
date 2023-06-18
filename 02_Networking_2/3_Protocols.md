# Protocols

A network protocol is an agreement about how to communicate. There are protocols on every layer of the OSI stack.

The layer 4 protocols, TCP and UDP, are responsible for transporting internet packets. UDP utilises a ‘fire and forget’ strategy, whereas TCP utilises a ‘Three-way handshake’. TCP is therefore more reliable, but UDP is significantly faster.

Protocols in higher layers, like HTTPS and SSH, all have their own use cases. Most of these protocols have a default port number.

## Key-terms

- HTTP (hypertext transfer protocol) -This is the workhorse of the Web. HTTP is a fundamental protocol that enables the exchange of data between clients and servers on the web. It plays a crucial role in facilitating web browsing, content delivery, and various web-based applications.

- 4 Layer protocol: The term "4-layer protocol" typically refers to a networking model that divides the communication process into four distinct layers. Most commenly used is model TCP.

- TCP (Transmission control protocol) is a connection orientated protocol and is used to provide a reliable end to end connection.

- UDP (User Datagram Protocol) is a connectionless transport protocol that operates in the transport layer of the TCP/IP model. It is an alternative to the more reliable but connection-oriented TCP (Transmission Control Protocol). UDP offers a simpler and more lightweight approach to data transmission. It provides a best-effort delivery mechanism without establishing a connection between the sender and receiver, therefore less reliable.

- Wireshark is a widely used network protocol analyzer or packet sniffer tool. It allows users to capture, analyze, and inspect network traffic in real-time. With Wireshark, you can monitor and capture packets flowing over a network interface, providing you with detailed information about the data being transmitted.
Wireshark supports various protocols and can decode and display their corresponding packet contents.

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

The following protocols were captured:
- TLSv1.2 (Transport Layer Security version 1.2). Uses for securing the connection with websites.
- TCP(Transmssion Control Protocol) A connection-oriented protocol that provides reliable, orderly, and error-controlled delivery of data.
- SSDP: (Simple Service Discovery Protocol) is a text-based protocol based on HTTPU, which uses UDP as the underlaying transport protocol. This is like a service that helps devices on a network find and communicate with each other.

![Wireshark_capture](/00_includes/Network_divices/Wireshark_capture.PNG)


### Gebruikte bronnen

[https://www.wireshark.org/]  
[https://docs.oracle.com/cd/E19683-01/806-4075/ipov-10/index.html]   
[https://nl.wikipedia.org/wiki/Wireshark] 
[https://afteracademy.com/blog/what-are-protocols-and-what-are-the-key-elements-of-protocols/]  
[http://www.steves-internet-guide.com/internet-protocol-suite-explained/]
[https://www.cloudflare.com/learning/network-layer/what-is-a-protocol/]
[https://www.youtube.com/watch?v=OU-A2EmVrKQ] [https://www.google.com/search?client=firefox-b-d&q=how+to+use+wireshark+to+understand+protocol#fpstate=ive&vld=cid:27ff7d5c,vid:lb1Dw0elw0Q]

### Ervaren problemen

It was quit okay, not to tricky and clear cut language to me. Understanding what the protocols are used for needed more attention.

### Resultaat

See screenshots 