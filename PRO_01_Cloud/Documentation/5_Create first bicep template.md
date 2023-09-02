# Create my first Bicep template

- Define resources

The main thing you'll do with Bicep templates is define your Azure resources which will be deployed.

Note:

- When creating and deployong an Azure resource, you need to create an Azure resource group first to deploy the resource into! (Resource group Cloud11redrose)

Here's an example of what a typical resource definition looks like in Bicep. 

# Example
This example creates a storage account named shamimkhaliq71.

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name:  'shamimkhaliqstorage71'
  location: 'westus3'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}


Let's look closely at some key parts of this resource definition:

*The resource* keyword at the start tells Bicep that you're about to define a resource.

Next, you give the resource *a symbolic name*. In the example, the resource's symbolic name is storageAccount. Symbolic names are used within Bicep to refer to the resource, but they won't ever show up in Azure.

Note:

- Symbolic names are used only within the Bicep template, and don't appear in Azure. Resource names do appear in Azure.

Microsoft.Storage/storageAccounts@2022-09-01 is the *resource type and API version of the resource*. Microsoft.Storage/storageAccounts tells Bicep that you're declaring an Azure storage account. The date 2022-09-01 is the version of the Azure Storage API that Bicep uses when it creates the resource. It's adviced to use the latest version, which you will be able to choose. 

You have to declare *a resource name*, which is the name the storage account will be assigned in Azure. You'll set a resource name using the name keyword.

Note

- Resource names often have rules you must follow, like maximum lengths, allowed characters, and uniqueness across all of Azure. The requirements for resource names are different for each Azure resource type. Be sure to understand the naming restrictions and requirements before you add them to your template.

You'll then set other details of the resource, such as its *location, SKU (pricing tier), and kind*. There are also properties you can define that are different for each resource type. Different API versions might introduce different *properties*, too. In this example, we're setting the storage account's *access tier* to Hot.

# What happens when resources depend on each other?

A Bicep template usually includes several resources. Often, you need a resource to depend on another resource. You might have to extract some information from one resource to be able to define another. Or, if you're deploying a web application, you'll have to create the server infrastructure before you can add an application to it. These relationships are called *dependencies*.

You'll need to deploy an App Service app for the template that will help launch the toy product. But to create an App Service app, you first need to create an App Service plan. The App Service plan represents the server-hosting resources, and it's declared like this example:

resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = {
  name: 'first-resource-creation'
  location: 'westus3'
  sku: {
    name: 'F1'
  }
}
 

This resource definition is telling Bicep you want to deploy an App Service plan that has the resource type Microsoft.Web/serverFarms. The plan resource is named toy-product-launch-plan, and it's deployed into the West US 3 region. It uses a pricing SKU of F1, which is the free tier of App Service.

Now that you've declared the App Service plan, the next step is to declare the app:

resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'shamimkhaliqstorage71'
  location: 'westus3'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}

Note:

- In Azure, a resource ID is a unique identifier for each resource. The resource ID includes the Azure subscription ID, the resource group name, and the resource name, along with some other information.

By declaring the app resource with a property that references the symbolic name of the plan, Azure understands the implicit dependency between the App Service app and the plan. When it deploys the resources, Azure will ensure it fully deploys the plan before it starts to deploy the app.

# Result

![Alt text](<../../00_includes/PRO_01_Cloud/First Bicep template .jpg>)


# Resources

[https://learn.microsoft.com/en-us/training/modules/build-first-bicep-template/3-define-resources]

[https://www.youtube.com/watch?v=jncLNpZzDz0&list=PLlrxD0HtieHjzqIRjPoERUGj49rve3rCM&index=3]

