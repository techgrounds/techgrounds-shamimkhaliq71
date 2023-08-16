# Advantages of the cloud

Azure highlights 6 benefits of cloud computing, which are fundamental characteristics that make the cloud appealing to businesses. It's important to note that these are also marketing tools to introduce Azure to new customers, and they are a significant part of the AZ-900 exam.

The six benefits of cloud computing are:

1. High Availability: Depending on the service-level agreement (SLA)
2. Scalability: Both vertically and horizontally
3. Elasticity
4. Agility
5. Geo-distribution
6. Disaster recovery

Azure follows a consumption-based model, meaning you only pay for the resources you use. This replaces Capital Expenditure (CapEx) with Operational Expenditure (OpEx).

## Key-terms

AZ-900 
Consumption-based model
CapEX
OpEX
SLA(Service-level agreement)


## Opdracht

Study:

1. The 6 advantages of cloud computing are:

- High Availability: Cloud services are designed to be always available, so your applications and data can be accessed anytime without interruptions or downtime.
Service Level Agreement (SLA): An SLA is a contractual agreement between a cloud provider and its customers that outlines the level of service that will be provided. It defines the performance metrics, availability targets, and support commitments that the provider guarantees. The SLA specifies the uptime percentage that the service will strive to achieve, such as 99.9% or 99.99%. If the cloud provider fails to meet the agreed-upon SLA targets, they may be required to provide compensation or service credits to the customer. SLAs provide transparency and assurance to customers regarding the reliability and availability of the cloud services they are using.

In summary, high availability ensures that cloud services are continuously accessible and operational, minimizing downtime and disruptions. SLAs establish the agreed-upon levels of service and availability, providing customers with confidence in the reliability and performance of the cloud provider's services.

- Scalability: Cloud services can easily adjust to meet your needs. If you need more resources, you can quickly add them. If you need less, you can reduce them. It's like having a flexible resource that can grow or shrink as needed.
There are two types of scalability: vertical scalability and horizontal scalability.

1. Vertical Scalability: Vertical scalability, also known as scaling up, refers to increasing the capacity of a single resource, such as a server or virtual machine, to handle higher workloads. This can be achieved by adding more processing power, memory, or storage to the existing resource. For example, if a server is experiencing increased demand, you can vertically scale it by upgrading its hardware components to handle the additional workload. Vertical scalability is useful when the resource requires more capacity to meet performance requirements.

2. Horizontal Scalability: Horizontal scalability, also known as scaling out, involves increasing the number of resources to distribute the workload across multiple instances. Instead of adding more capacity to a single resource, horizontal scalability adds more instances of the resource, such as servers or virtual machines, and distributes the workload among them. This approach allows for better load balancing, improved fault tolerance, and increased overall capacity. For example, if a web application is experiencing high traffic, you can horizontally scale it by adding more servers and load balancing the incoming requests across them.

Both vertical and horizontal scalability offer benefits depending on the specific requirements and challenges faced by an application or service. Vertical scalability allows for resource expansion on a single instance, providing increased performance and capacity. Horizontal scalability, on the other hand, enables distributed processing, improved fault tolerance, and the ability to handle larger workloads by adding more instances. The choice between vertical and horizontal scalability depends on factors such as the nature of the application, the expected growth in demand, and the desired cost-effectiveness of the scaling solution.

![Horizontal and Vertical Scaling](/00_includes/Cloud/Opdracht%203/Horizontal%20and%20Vertical%20Scaling.jpg)

- Elasticity: Cloud services can automatically adjust their resources based on demand. So, if there's a sudden increase in traffic or workload, the cloud can quickly allocate more resources to handle it. Similarly, when the demand decreases, it can release those resources to save costs.

- Agility: Cloud computing allows you to set up and deploy your applications and services quickly. It's like having a fast and easy way to create and manage your IT infrastructure without having to go through long and complex processes.

- Geo-distribution: Cloud providers have data centers in different parts of the world. This means you can store your data and run your applications closer to your users, which improves performance and reduces delays. It also ensures that even if one location experiences a problem, your data and services are still available from other locations.

- Disaster Recovery: Cloud services have built-in mechanisms to protect your data and applications from disasters. They create copies of your data and store them in different locations. So, even if something goes wrong, you can quickly recover and continue your business operations.

These advantages make cloud computing a convenient and reliable choice for businesses. It offers flexibility, cost-effectiveness, and peace of mind knowing that your applications and data are secure, accessible, and easily adaptable to your changing needs.


2. The consumption-based model: 

Consumption-based models and Fixed price are two pricing models commonly used in cloud computing.

Consumption-Based Model: In a consumption-based model, you pay for the resources or services you actually use. It's like paying for utilities such as electricity or water, where you're billed based on your consumption. In the cloud context, you're charged based on factors like storage used, data transferred, computing power utilized, and the duration of resource usage. This model offers flexibility and cost optimization, as you only pay for what you need and can easily scale resources up or down based on demand.

Fixed Price Model: In a fixed price model, you pay a set amount for specific resources or services regardless of your actual usage. It's like a subscription or flat fee where you have a predetermined cost for a defined set of resources. This model is often used for services with stable and predictable usage patterns. It provides cost certainty, as you know exactly how much you'll be charged regardless of variations in usage.

The choice between fixed price and consumption-based models depends on your specific requirements and usage patterns. Fixed price models are suitable when you have predictable and consistent resource needs, while consumption-based models are beneficial when your resource usage fluctuates or when you want more control over your costs. Cloud providers often offer a combination of both models, allowing you to choose the one that best suits your business needs.

![Consumption based model](/00_includes/Cloud/Opdracht%203/Consumption%20based%20model.jpg)

### Gebruikte bronnen
[Chat GPT]
[https://www.youtube.com/watch?v=NdqncsMtryY]
[https://learn.microsoft.com/en-us/azure/well-architected/cost/design-price]
[https://www.geeksforgeeks.org/system-design-horizontal-and-vertical-scaling/]
[https://dealhub.io/glossary/consumption-based-pricing/]


### Ervaren problemen

none

### Resultaat
I have a better understanding of the cloud computing benefits and their fundamental characteristics. Furthetmore, which pricing model Azure uses and why.
