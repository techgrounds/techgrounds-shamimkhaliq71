@description('Specifies the location for resources.')
param location string = 'westeurope'


resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'storagetest1shamim'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

