
// main.bicep

param location string = 'westeurope'

// Reference the parameters module
module parametersModule './Modules/parameters.bicep' = {
  name: 'parametersModule'
  params: {
    location: location
  }
}

// Reference the storage account module
module storageAccountModule './Modules/storageaccount.bicep' = {
  name: 'storageAccountModule'
  params: {
    location: parametersModule.outputs.location
    storageAccountName: parametersModule.outputs.storageAccountName
  }
}

// Reference the keyvault module
module keyvault 'Modules/parameters.bicep' = {
  name: 'Chabi1'
 // Other module properties
 params: {
  location: location 
}
}


//open bash terminal >> login to Azure (az login)

//set up or select subscription (az account set --subscription 'Cloud Student 10')

//create or check if there's a resource group available(cloud11_project)
//az group create --name cloud11_project --location westeurope

//Deploy everything from main file
//check if you have selected the right path (cd Templates or cd .. to go up a directory)

//az deployment group create --template-file main.bicep --resource-group cloud11_project

//check in Azure portal

