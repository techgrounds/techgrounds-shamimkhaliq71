targetScope = 'subscription'

param  resourceGroupName  string
param  location string

// Creating resource group
resource resourcegroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: location
}

output resourceGroupName string = 'cloud11_project'
output location string = location

//open bash terminal >> login to Azure (az login)

//set up or select subscription (az account set --subscription 'Cloud Student 10')

//create or check if there's a resource group available(cloud11_project)
//az group create --name cloud11_project --location westeurope

//check if you have selected the right path (cd Modules)
