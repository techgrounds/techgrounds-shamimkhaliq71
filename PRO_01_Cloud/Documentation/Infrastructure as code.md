# Infrastructure as code

IaC as being an instruction manual of your infrastructure. The manual details the end configurtion of your resources and how to reach the configuration state.

# Benefits of using IaC

- Using infrastructure as code makes it  possible for you to automate your infrastructure provisioning and configuration. 

- It helps you and your organization gain higher confidence in your deployments by providing consistency and reducing human error. 
This can be achieved by the following:

1. Secret managment by using Key Vaults(a service that's used to securely store solution secrets such as connection strings, encryptions keys, client ssecrets and certificates)

2. Access control with this youahve the option of using managed identities or service accounts to automate resource provisioning. But, if really neccesary, you can override this process by using an emergency access account( break glass account) or by using Azure Active Directory Identity Management feature to do things manually and when the problem is resolved you update your IaC and bring it back into line with whatever configuration change you have made.

3. Avoid configuration drift means your deployments will always be consistend.When a system is idempotence, you can run the same operation over and over again and it will give you the same result.

- Infrastructure as code can help you manage multiple environments, including new environments and non-production environments. You can gain a better understanding of your cloud resources by using infrastructure as code.

- Infrastructure as code can help you define your resources in a single place and then apply the same configuration to all your environments.

# Defining Infrastructure as Code:

Infrastructure as Code (IaC) is the process of automating infrastructure provisioning using a coding language and versioning system similar to source code.
IaC ensures automated, consistent, and repeatable deployments of infrastructure resources like virtual networks, virtual machines, applications, and storage.
It's like an instruction manual for infrastructure, detailing the desired configuration state of resources.
Benefits of Using Infrastructure as Code:

- Increase Confidence:

Integration with established software development practices enhances consistency and security.
Consistency is improved, reducing human errors and ensuring uniform deployments.
Automated scanning tools can identify errors and enforce security and performance practices.
Secret management and access control are streamlined using managed identities and secure storage.

- Manage Multiple Environments:

IaC supports dynamic provisioning of environments, aiding scalability and agility.
Maintaining consistent configurations across various environments minimizes differences.
It aids in disaster recovery, allowing quick provisioning of alternative instances in case of outages.

- Better Understanding of Cloud Resources:

IaC enables an audit trail and version history for configuration changes.
Documentation through comments and metadata enhances understanding.
It unifies understanding between applications and infrastructure.

- Imperative and Declarative Code:

Imperative Code: Specifies both the tasks and how to perform them step by step.

Declarative Code: Specifies the desired outcome without detailing the steps to achieve it.

1. Imperative Approach:

Involves scripting languages like Bash or Azure PowerShell.
Scripts execute steps to create, modify, and remove resources.
Can fully automate provisioning but may become complex and require frequent updates.

With imperative code, you execute a sequence of commands, in a specific order, to reach an end configuration. This process defines what the code should accomplish, and it also defines how to accomplish the task.


2. Declarative Approach:

Utilizes templates (e.g., JSON, Bicep) to define desired configurations.
Templates describe what resources should look like, not how to create them.
Provides greater flexibility and maintains a clear distinction between desired state and execution.

When you use declarative code, you specify only the end configuration. Declarative code doesn't define how to accomplish the task.

- Bicep Template Example:

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: 'mystorageaccount'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
    supportsHttpsTrafficOnly: true
  }
}


In summary, Infrastructure as Code is a methodology that automates infrastructure provisioning using code, providing benefits like increased confidence, better environment management, and improved understanding of cloud resources. 

The choice between imperative and declarative approaches depends on existing practices and desired flexibility. 

Bicep templates exemplify declarative code by defining desired configurations without specifying execution steps.


# Resources

[https://learn.microsoft.com/en-us/training/modules/introduction-to-infrastructure-as-code-using-bicep/2-what-infrastructure-code]

[https://www.youtube.com/watch?v=MP60ND7Upn4&list=PLlrxD0HtieHjzqIRjPoERUGj49rve3rCM]


