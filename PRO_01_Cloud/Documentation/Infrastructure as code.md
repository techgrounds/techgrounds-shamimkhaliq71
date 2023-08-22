# Infrastructure as code

- Defining Infrastructure as Code:

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

2. Declarative Approach:

Utilizes templates (e.g., JSON, Bicep) to define desired configurations.
Templates describe what resources should look like, not how to create them.
Provides greater flexibility and maintains a clear distinction between desired state and execution.

- Bicep Template Example:

bicep

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


In summary, Infrastructure as Code is a methodology that automates infrastructure provisioning using code, providing benefits like increased confidence, better environment management, and improved understanding of cloud resources. The choice between imperative and declarative approaches depends on existing practices and desired flexibility. Bicep templates exemplify declarative code by defining desired configurations without specifying execution steps.


# Resources

[https://learn.microsoft.com/en-us/training/modules/introduction-to-infrastructure-as-code-using-bicep/2-what-infrastructure-code]

