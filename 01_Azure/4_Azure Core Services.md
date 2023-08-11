# Azure Core Services

You can consider this document as a sort of guide to your AZ-900 certification. It includes the services that you need to know in a bit more detail. This document also describes how to handle the other services that you may encounter in the (practice) exam.

There are many services in Azure, but some are more important than others. Azure mentions the following architectural components and services that you should have a reasonably in-depth understanding of what they do:

- Regions: Each Azure region has its own set of data centers interconnected through a robust network. Within a region, customers can deploy Azure resources such as virtual machines, databases, storage accounts, and other services. This gets stored in Data centers. Not every region provides all the services. Azure Subscriptions are not region-specific. On the other hand, for services like Azure Virtual Machines, you can choose a specific data center.

- Region Pairs: Pairing of two Azure regions within a geographic area. By deploying resources in a Region Pair, organizations can replicate their applications and data across the paired regions, ensuring that if one region becomes unavailable, the other region can seamlessly take over operations.

- Availability Zones: :Is a physically separate and independent data center within an Azure region that offers high availability and fault tolerance
 
- Resource Groups:  Resource groups are like containers for organizing your resources in Azure. Typically used to organize sets of resources that are deployed together as a part of an application or service.
You cannot put one resource group inside another resource group. They are separate and cannot be nested.
Before you create any resource (like a virtual machine or a database) in Azure, you need to have a resource group to put it in. It's like having a box (resource group) before you can put things (resources) inside it.  if you delete a resource group, all resources contained within are also deleted. 
Resource Groups are also a scope for applying role-based access control (RBAC) permissions. By applying RBAC permissions to a resource group, you can ease administration and limit access to allow only what is needed. Azure Portal, Azure PowerShell, Azure CLI, Templates, Azure SDKs (.NET, Java, etc.)

- Subscriptions: a subscription is like an account that you create with Microsoft to use Azure services. It is the fundamental building block for organizing and managing resources in the Azure cloud. When you sign up for Azure, you start with a default subscription, and you can create additional subscriptions as needed. 
Azure subscriptions play a central role in managing and governing your cloud resources effectively. They enable you to control access, track costs, and organize resources based on your specific needs and requirements. With multiple subscriptions, you can isolate workloads, manage resources for different projects, or enforce separate billing for various departments or teams within your organization.

- Management Groups: Management Groups are logical containers that allow you to group multiple subscriptions together. You can think of them as folders or directories that help you organize subscriptions based on different criteria, such as projects, business units, regions, or departments.

- Azure Resource Manager: : Azure Resource Manager is like a special tool that helps you manage all your things in Azure.
It lets you easily create, change, and remove resources in your Azure account.
It also helps you control who can access and modify your resources and keeps track of changes with auditing.
You can use tags to organize and group your resources, making it easier to find and manage them.

- Virtual Machines:Hosted in Azure(IaaS), VMs are like virtual computers that mimic real Windows or Linux machines.
They have virtual versions of a processor, memory, storage, and network, just like a regular computer.
You can install software and use them as if they were physical computers.
When you capture(Snapshot) a picture of a running VM, it's called an image.
This image is like a template that you can use to create new VMs with the same setup, including the operating system and other software you need, like web hosting tools or development software.

- Azure App Services:(PaaS) offering in Azure that is designed to host enterprise-grade web-oriented applications. You can meet rigorous performance, scalability, security, and compliance requirements while using a fully managed platform to perform infrastructure maintenance. 
Enables you to build and host web apps, background jobs, mobile backends, and RESTful APIS in the programming language of your choice without managing infrastructure. 
It offers auto-scaling and high availability, supports both Windows and Linux, and enables automated deployments from GitHub, Azure DevOps, or any Git repo to support a continuous deployment model. You pay for the Azure compute resources your app uses, while it processes requests based on the App Service Plan you choose. The App Service Plan determines how much hardware is devoted to your host.
App Service includes full support for hosting web apps using ASP.NET, ASP.NET Core, Java, Ruby, Node.js, PHP, or Python. You can choose either Windows or Linux as the host OS.

- Azure Container Instances (ACI): 

- Azure Kubernetes Service (AKS)
- Azure Virtual Desktop
- Virtual Networks
- VPN Gateway
- Virtual Network Peering
- ExpressRoute
- Container (Blob) Storage
- Disk Storage
- File Storage
- Storage Tiers
- Cosmos DB
- Azure SQL Database
- Azure Database for MySQL
- Azure Database for PostgreSQL
- SQL Managed Instance
- Azure Marketplace

Of course, there are many more services that may appear in your exam. For these services, it is sufficient to be familiar with the product page (see here an example of an Azure product page).

In addition to the services, you can also expect questions about various cloud concepts, such as High Availability, the consumption-based pricing model, and the shared responsibility model.


## Key-terms


## Opdracht

Study:

De Exam Guide voor Microsoft Azure Fundamentals (AZ-900)

### Gebruikte bronnen

[https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE3VwUY]
[https://azure.microsoft.com/en-us/products/devops/pipelines/]


### Ervaren problemen

Alot of reading

### Resultaat
