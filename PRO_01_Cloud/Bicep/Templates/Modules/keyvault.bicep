param location string = resourceGroup().location

//prameter for tenantID
param tenantID string = 'de60b253-74bd-4365-b598-b9e55a2b208d'

resource keyvault 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name: 'Chabi1'
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: tenantID
  }
}

