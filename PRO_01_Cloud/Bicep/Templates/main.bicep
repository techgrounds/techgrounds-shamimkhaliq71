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
