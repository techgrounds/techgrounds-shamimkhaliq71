
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





