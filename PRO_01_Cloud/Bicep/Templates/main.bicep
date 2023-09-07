
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

//Deploy everything from main file( double check the path)
//az deployment group create --template-file main.bicep --resource-group cloud11_project



