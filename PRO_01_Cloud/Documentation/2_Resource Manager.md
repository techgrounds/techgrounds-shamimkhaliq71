# Azure Resource Manager

Azure Resource Manager is the service that's used to deploy and manage resources in Azure. You can use Resource Manager to create, update, and delete resources in your Azure subscription. 

You can interact with Resource Manager by using many tools, including the Azure portal. Resource Manager also provides a series of other features, like access control, auditing, and tagging, to help manage your resources after deployment.

As you begin your cloud journey with Resource Manager, it's important to understand some terms and concepts:

# Key Terms

- Resource: A manageable item that is available on the Azure platform. Virtual networks, virtual machines, storage accounts, web apps, and databases are examples of resources.

- Resource group: A logical container that holds related resources for an Azure solution. The resource group includes resources you want to manage as a group. Most Azure resources are contained in a resource group. You decide which resources belong in a resource group based on what makes the most sense for your solution.

- Subscription: A logical container and billing boundary for your resources and resource groups. Each Azure resource and resource group is associated with only one subscription.

- Management group: A logical container that you use to manage more than one subscription. You can define a hierarchy of management groups, subscriptions, resource groups, and resources to efficiently manage access, policies, and compliance through inheritance.


# Azure Resource Manager template (ARM template)

A template file that defines one or more resources to deploy to a resource group, subscription, management group, or tenant. 

You can use the template to deploy the resources in a consistent and repeatable way. There are two types of ARM template files: JSON and Bicep. We will be focussing on Bicep.

# Benefits

Resource Manager provides many benefits and capabilities related to infrastructure-as-code resource provisioning:

- You can deploy, manage, and monitor the resources in your solution as a group instead of individually.

- You can redeploy your solution throughout the development lifecycle and have confidence that your resources are deployed in a consistent state.

- You can manage your infrastructure through declarative templates instead of by using scripts.

- You can specify resource dependencies to ensure that resources are deployed in the correct order.

# Operations: Control plane and data plane

You can execute two types of operations in Azure: 

1. Control plane operations, these are used to manage the resources in your subscription.
2. Data plane operations are used to access features that are exposed by a resource.

For example, you use a control plane operation to create a virtual machine, but you use a data plane operation to connect to the virtual machine by using Remote Desktop Protocol (RDP).

1. Control plane

When you send a request from any of the Azure tools, APIs, or SDKs, Resource Manager receives, authenticates, and authorizes the request. Then, it sends the request to the Azure resource provider, which takes the requested action. Because all requests are handled through the same API, you see consistent results and capabilities in all the different tools that are available in Azure.

The following image shows the role Resource Manager plays in handling Azure requests:

![Alt text](<../../00_includes/PRO_01_Cloud/Azure resource manager.jpg>)

Diagram that shows how Azure Resource Manager accepts requests from all Azure clients and libraries.

All control plane operation requests are sent to a Resource Manager URL. For example, the create or update operation for virtual machines is a control plane operation. Here's the request URL for this operation:

HTTP

PUT https://management.azure.com/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.Compute/virtualMachines/{virtualMachineName}?api-version=2022-08-01

The control plane understands which resources need to be created and which resources already exist. Resource Manager understands the difference between these requests and won't create identical resources or delete existing resources, although there are ways to override this behavior.

2. Data plane

When a data plane operation starts, the requests are sent to a specific endpoint in your Azure subscription. For example, the Detect Language operation in Cognitive Services is a data plane operation because the request URL is:

HTTP

POST https://eastus.api.cognitive.microsoft.com/text/analytics/v2.0/languages

Resource Manager features like access control and locks don't always apply to data plane operations. For example, a user might not have permissions to manage a virtual machine by using the control plane, but the user can sign in to the operating system.

# What are ARM templates?

ARM templates are files that define the infrastructure and configuration for your deployment. When you write an ARM template, you take a declarative approach to your resource provisioning. 

These templates describe each resource in the deployment, but they don't describe how to deploy the resources. When you submit a template to Resource Manager for deployment, the control plane can deploy the defined resources in an organized and consistent manner. 


# Benefits

There are many benefits to using ARM templates, both JSON and Bicep, for your resource provisioning:

- Repeatable results: ARM templates are idempotent, which means that you can repeatedly deploy the same template and get the same result. The template doesn't duplicate resources.

- Orchestration: When a template deployment is submitted to Resource Manager, the resources in the template are deployed in parallel. This process allows deployments to finish faster. Resource Manager orchestrates these deployments in the correct order if one resource depends on another.

- Preview: The *what-if tool*, available in Azure PowerShell and Azure CLI, allows you to preview changes to your environment before template deployment. This tool will detail any creations, modification, and deletions that will be made by your template.

- Testing and Validation: You can use tools like the *Bicep linter* to check the quality of your templates before deployment. ARM templates submitted to Resource Manager are validated before the deployment process. This validation alerts you to any errors in your template before resource provisioning.

- Modularity: You can break up your templates into smaller components and link them together at deployment.

- CI/CD integration: Your ARM templates can be integrated into multiple CI/CD tools, like Azure DevOps and GitHub Actions. You can use these tools to version templates through source control and build release pipelines.

- Extensibility: With deployment scripts, you can run Bash or PowerShell scripts from within your ARM templates. These scripts perform tasks, like data plane operations, at deployment. Through extensibility, you can use a single ARM template to deploy a complete solution.

# JSON and Bicep templates

Two types of ARM templates are available for use today: JSON templates and Bicep templates. 

1. JavaScript Object Notation (JSON) is an open-standard file format that multiple languages can use. 

2. Bicep is a new domain-specific language that was recently developed for authoring ARM templates by using an easier syntax. 

You can use either template format for your ARM templates and resource deployments.

# Resouces

[https://learn.microsoft.com/en-us/training/modules/introduction-to-infrastructure-as-code-using-bicep/3-what-azure-resource-manager]

[https://www.youtube.com/watch?v=MP60ND7Upn4&list=PLlrxD0HtieHjzqIRjPoERUGj49rve3rCM]

