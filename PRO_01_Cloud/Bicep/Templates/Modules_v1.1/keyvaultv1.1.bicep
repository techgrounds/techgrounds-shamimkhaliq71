//discription of the name of the key vault.
param keyVaultName string = 'Chabi1'

//discription of location
param location string = resourceGroup().location

//description of the managed identity
param managed_id string = 'userIDx${uniqueString(resourceGroup().id)}'

//discription of tenantID, which can be found Azure Active Directory (Azure AD)
param tenantID string = 'de60b253-74bd-4365-b598-b9e55a2b208d'

//discription of objectID, which can be found Azure Active Directory (Azure AD)
param objectID string = 'a04a1d40-0b09-48f7-91a7-d32abf5a1e31'

//description of name of secret
param secretName string = 'secret1'

//discription of secret value
@secure()
param pass string   //adminpass1
param certpass string   //certpass1

//description of whether the key vault is a standard vault or a premium vault.
@allowed([
  'standard'
  'premium'
])
param skuName string = 'standard'

resource keyvault 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name:keyVaultName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: skuName
    }
    enabledForDeployment: true
    enabledForDiskEncryption: true
    enabledForTemplateDeployment: true
    enableRbacAuthorization: false  
    enablePurgeProtection: true 
    enableSoftDelete: true
    softDeleteRetentionInDays: 7
    publicNetworkAccess: 'Disabled'
    networkAcls: {
      bypass:'AzureServices'
      defaultAction:'Allow'
      ipRules: [
        {
          value:'62.195.243.60' //local  public IP address
        }
      ]
    }
    
    tenantId: tenantID
    accessPolicies: [
      {
        tenantId: tenantID
        objectId: objectID    
        permissions: {
          secrets: [
            'all'
          ]
          certificates: [
            'all'
          ]
          keys: [
            'all'
          ]
          storage: [
            'all'
          ]
        }
      }
    ]
  }
}

resource managedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31' = {
  name: managed_id
  location: location
}

//adding a secret to the keyvault
resource secret1 'Microsoft.KeyVault/vaults/secrets@2023-02-01' = {
  parent: keyvault
  name: secretName 
  properties: { 
    value: pass
  }
}

//added a secret for certificate
resource secret2 'Microsoft.KeyVault/vaults/secrets@2021-11-01-preview' = {
  parent: keyvault
  name: 'CertificatePassword'
  properties: {
    value:certpass 
  }
}

output keyVaultName string = keyVaultName
output secret1 string = secretName

//open bash terminal >> login to Azure (az login)

//set up or select subscription (az account set --subscription 'Cloud Student 10')

//create or check if there's a resource group available(cloud11_project)
//az group create --name cloud11_project --location westeurope

//to Restore the soft-deleted Key Vault, but make sure the resource group is created already
//az keyvault recover --name 'Chabi1' --resource-group cloud11_project

//check if you have selected the right path (cd Modules)

//az deployment group create --template-file keyvault.bicep --resource-group cloud11_project --parameters location='westeurope'
//you need to provide securestring value for 'pass' (? for help): 
//you need to provide securestring value for 'certpass' (? for help):

//check in Azure portal under resource groups(cloud11_project)  
//There should be key vault module; Chabi1 = Succeeded
//check the access policies in the left hand menu



