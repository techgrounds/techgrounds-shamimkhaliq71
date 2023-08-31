param location string = 'westeurope'
targetScope = 'resourceGroup'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'shamimkhaliqstorage71'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
} 
 

resource appServicePlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: 'first-resource-creation'
  location: location
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2022-09-01' = {
  name: 'shamimkhaliqstorage71'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}


