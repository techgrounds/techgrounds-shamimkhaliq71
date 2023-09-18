//discription of the name of the key vault.
param keyVaultName string = 'Chabi1'

//discription of location
param location string = resourceGroup().location

//discription of tenantID
param tenantID string = 'de60b253-74bd-4365-b598-b9e55a2b208d'

//discription of objectID
param objectID string = 'a04a1d40-0b09-48f7-91a7-d32abf5a1e31'

//discription of secret1
@secure()
param pass string 

resource keyvault 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name:keyVaultName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: tenantID
    accessPolicies: [
      { 
        objectId: objectID
        tenantId: tenantID
        permissions:{
          secrets:[
            'get'
            'list'
            'set' 
    ]
  }
}
{
objectId: objectID
  tenantId: tenantID
  permissions: {
    certificates: [
      'all'
    ]
  }
}
{
objectId: objectID
  tenantId: tenantID
  permissions: {
    keys: [
      'create'
      'delete'
      'get'
      'recover'
    ]
  }
}
]
  }
}

//adding a secret to the keyvault
resource secret1 'Microsoft.KeyVault/vaults/secrets@2023-02-01' = {
  parent: keyvault
  name: 'adminpass1' 
  properties: { 
    value: pass
  }
}

//open bash terminal >> login to Azure (az login)

//set up or select subscription (az account set --subscription 'Cloud Student 10')

//create or check if there's a resource group available(cloud11_project)
//az group create --name cloud11_project --location westeurope

//to Restore the soft-deleted Key Vault, but make sure the resource group is created already
//az keyvault recover --name 'Chabi1' --resource-group cloud11_project

//check if you have selected the right path (cd Modules)

//az deployment group create --template-file keyvault.bicep --resource-group cloud11_project --parameters location='westeurope'
//you need to provide securestring value for 'pass' (? for help): 

//check in Azure portal under resource groups(cloud11_project)  
//There should be key vault module; Chabi1 = Succeeded
//check the access policies in the left hand menu



