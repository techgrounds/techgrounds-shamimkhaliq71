// storageaccount.bicep

param location string
param storageAccountName string

//description('Resource declaration.The name and location properties for the storageAccount, 
//which are taken from the storageAccountName and location parameters.')
resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location 
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

output location string = location // Output location for reference
output storageAccountName string = storageAccountName // Output storageAccountName for reference


//open bash terminal >> login to Azure (az login)

//set up or select subscription (az account set --subscription 'Cloud Student 10')

//create or check if there's a resource group available(cloud11_project)

//check if you have selected the right path (cd Modules)

//create resource storage account in Azure 
//az deployment group create --template-file storageaccount.bicep --resource-group cloud11_project --parameters location="westeurope" storageAccountName="lily1"

//check in Azure portal under resource groups(cloud11_project) deployments 
//There should be 3 modules; main, storageAccountModule and ParametersModule = Succeeded

