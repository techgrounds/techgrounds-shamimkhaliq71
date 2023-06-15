# Subnetting

A network is defined as two or more devices connected together so that they can exchange data. A Local Area Network (LAN) is often expressed as a range of IP addresses. Each device (host) gets its own address within that range.

To support this, networks have a subnet mask (prefix) that defines how many bits of the IP address are part of the network address, and how many bits are reserved for the host.

A subnet is a smaller network that is part of a larger network. Subnets can be used to logically isolate part of the network. By definition, a subnet has a larger prefix than the network in which the subnet is located.

To make all this readable for humans, we use CIDR notation.

## Key-terms

- LAN: Local Area Network, it refers to a computer network that spans a relatively small geographic area, typically within a building or a limited area in close proximity. 
- Subnet mask: also referred to as a prefix or subnet prefix, is a 32-bit value used in IP addressing to define the network portion and host portion of an IP address. It works in conjunction with an IP address to determine which part of the address represents the network and which part represents the host. 
- Subnetting: Subnetting stands for subnet partitioning or subnet division. It is the process of dividing a larger network into smaller subnetworks, known as subnets. Subnetting allows for more efficient and organized utilization of IP addresses within a network and enables better control over network traffic and security.
- Private Subnet: A private subnet refers to a range of IP addresses that are reserved for use within a private network. Private subnets are typically used within local area networks (LANs) or private network environments and are not directly accessible from the public internet.
- Public Subnet: A public subnet refers to a range of IP addresses that are publicly routable and accessible from the internet. Unlike private subnets, public subnets can be reached directly from external networks and are typically used for hosting services or resources that need to be accessible to users or systems outside of a private network.
- AWS VPC: AWS VPC stands for Amazon Virtual Private Cloud (Amazon VPC). With this service , you can launch AWS resources in a logically isolated virtual network that you've defined. This virtual network closely resembles a traditional network that you'd operate in your own data center, with the benefits of using the scalable infrastructure of AWS.
- Internet Gateway: An internet gateway is a network component in Amazon Web Services (AWS) that facilitates communication between an Amazon Virtual Private Cloud (VPC) and the internet. It serves as a gateway for traffic to enter or leave the VPC, enabling resources within the VPC to access the internet and allowing the internet to access resources within the VPC. 
- Network Diagrams: Network diagrams are graphical representations of a computer network, illustrating the physical and logical connections between network devices, systems, and components. These diagrams help visualize the network infrastructure, its layout, and the relationships between different network elements. 
- EC2 instances:  An Amazon EC2 instance is a virtual server in Amazon's Elastic Compute Cloud.


## Opdracht

Maak een netwerkarchitectuur die voldoet aan de volgende eisen:

1 private subnet dat alleen van binnen het LAN bereikbaar is. Dit subnet moet minimaal 15 hosts kunnen plaatsen.


1 private subnet dat internet toegang heeft via een NAT gateway. Dit subnet moet minimaal 30 hosts kunnen plaatsen (de 30 hosts is exclusief de NAT gateway).

1 public subnet met een internet gateway. Dit subnet moet minimaal 5 hosts kunnen plaatsen (de 5 hosts is exclusief de internet gateway).

Plaats de architectuur die je hebt gemaakt inclusief een korte uitleg in de Github repository die je met de learning coach hebt gedeeld.

### Gebruikte bronnen
[https://app.diagrams.net/]
[https://chat.openai.com/]
[https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html]
[https://www.youtube.com/watch?v=u7obme-h3bc]
[https://www.youtube.com/watch?v=5WfiTHiU4x8&list=PLIhvC56v63IKrRHh3gvZZBAGvsvOhwrRF]



### Ervaren problemen
[Geef een korte beschrijving van de problemen waar je tegenaan bent gelopen met je gevonden oplossing.]

### Resultaat
[Omschrijf hoe je weet dat je opdracht gelukt is (gebruik screenshots waar nodig).]