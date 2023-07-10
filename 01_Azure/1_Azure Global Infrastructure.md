# Azure Global Infrastructure

Alles in de cloud, van servers tot networking, is virtualized. Als klant van een cloud provider hoef je je geen zorgen te maken over de onderliggende fysieke infrastructuur. De fysieke locatie van je applicatie of data kan echter wel belangrijk zijn.

De global infrastructure van Azure bestaat uit de volgende componenten:
Regions
Availability Zones
Region Pairs

Je hebt zelf controle over welke regio je gebruikt, maar niet elke service is beschikbaar in elke regio. Sommige services zijn ook niet gebonden aan een specifieke regio. Denk hierbij bijvoorbeeld aan Azure Subscriptions. Voor andere diensten als Azure Virtual Machines kan je juist een specifiek datacenter kiezen.


## Key-terms

Cloud
Azure data center
Azure geography
Azure Region
Azure Availability Zone
Azure Region Pair



## Opdracht

Study:

- What is an Azure datacenter:

Is an unique physical building that contains thousands of physical  servers with it's own power, cooling and networking infrastructure. These data centers are located all over the globe. It is these data centers that are the building blocks of the global azure infrastructure.

- What is Azure geography:

An area of the world that contains one or more azure regions. (eg. India, USA, UK). 

Why are geographies important:

1. Nearby geographies are important, because you want application and data to be hosted as geographically close to your customer base as possible. Far away geographies could cause unneccesary latency, delay and poor performance. 

2. Another resaon is Compliance with regulations:
Regulated data like finance, health care and credit card data for example may not be allowed to leave the country. Legally, your organization is required to store such data in the same country were the operations are being carried out.

- What is an Azure Region?

An Azure Region is a geographical location where Microsoft Azure services are hosted and provided. Each region consists of multiple data centers strategically placed to ensure high availability and reliability. Azure regions are spread across the globe, allowing customers to deploy their applications and services close to their users to reduce latency and ensure data sovereignty.

Each Azure region has its own set of data centers interconnected through a robust network. Within a region, customers can deploy Azure resources such as virtual machines, databases, storage accounts, and other services. Azure regions are designed to meet stringent security standards, providing physical security, redundant infrastructure, and compliance with regional and country-specific regulatory requirements.

Customers can choose Azure regions based on their specific requirements related to data location, performance, availability, and compliance with legal and regulatory standards. Using Azure regions enables organizations to build and manage scalable, reliable, and secure cloud solutions that meet the needs of their users and the requirements of their business.

Simple put, it's a set of data centers and data centers are connected through a dedicated low latency network. Each region can have a different size, it can be made of one or multiple data centers.

- What is an Azure Availability Zone?

An Azure Availability Zone is a physically separate and independent data center within an Azure region that offers high availability and fault tolerance. It provides protection against single points of failure by distributing resources across multiple zones, each with its own power, cooling, and networking infrastructure. By deploying applications and services across multiple Availability Zones, customers can ensure business continuity and minimize the impact of potential failures. Azure guarantees a 99.99% uptime for resources deployed in Availability Zones, offering a reliable and resilient infrastructure for highly available applications. With the ability to choose specific Availability Zones and leverage availability sets, Azure empowers customers to build robust and fault-tolerant solutions that deliver consistent performance and reliability.

- What is an Azure Region Pair?

An Azure Region Pair is a concept in Microsoft Azure that represents a specific pairing of two Azure regions within a geographic area. Region Pairs are strategically selected and designed to provide high availability and disaster recovery capabilities for Azure services and applications. The regions within a pair are physically separated by a considerable distance to ensure resilience against localized failures or disasters.

The primary purpose of Region Pairs is to enable customers to implement robust business continuity and disaster recovery strategies. By deploying resources in a Region Pair, organizations can replicate their applications and data across the paired regions, ensuring that if one region becomes unavailable, the other region can seamlessly take over operations. This redundancy and failover capability provided by Region Pairs enhance the overall resilience and availability of Azure services, allowing customers to maintain continuity of their critical workloads even in the face of unexpected disruptions.

- Why would you choose one region over the other?

The choice of one Azure region over another depends on various factors and considerations based on the specific requirements of an organization. Here are some reasons why one region may be preferred over another:

Proximity to Users: Selecting a region closer to the target user base can help reduce network latency and improve overall performance of applications and services.

Compliance and Data Sovereignty: Different regions may have specific data privacy and regulatory requirements. Organizations may choose a region that aligns with their compliance needs and ensures data sovereignty.

Availability and Redundancy: Some regions may offer a higher number of Availability Zones or data centers, providing greater redundancy and fault tolerance for critical applications.

Service Availability: Not all Azure services are available in every region. Choosing a region that supports the required services ensures compatibility and access to the desired features and capabilities.

Pricing and Cost: Azure pricing may vary across regions, and choosing a region with favorable pricing structures can help optimize costs for organizations.

Disaster Recovery: If disaster recovery is a priority, selecting a region that is geographically distant from the primary region can provide better resilience against regional outages or disasters.

Regulatory and Legal Considerations: Different regions may have varying legal and regulatory frameworks that impact data governance, security, and compliance. Choosing a region that aligns with the organization's legal requirements is crucial.

Ultimately, the choice of an Azure region should be based on a careful evaluation of the organization's specific needs, taking into account factors such as performance, compliance, availability, cost, and disaster recovery requirements.


### Gebruikte bronnen

[Chat GPT]
[https://learn.microsoft.com/en-us/azure/reliability/availability-zones-overview]
[https://www.youtube.com/watch?v=jANncCLInm8]





### Ervaren problemen

Not really, just a lot of reading, but understand it better, I found that watching youtube videos worked better for me.

### Resultaat
Bettter understanding of Azure