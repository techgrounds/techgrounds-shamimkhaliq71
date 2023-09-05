@description('The Azure region into which the resources should be deployed.')
param location string = 'westeurope'

@description('The unique name of the solution. This is used to ensure that resource names are unique.')
param storageAccountName string = 'lily1${uniqueString(resourceGroup().id)}'

param appServiceAppName string = 'first-resource-creation${uniqueString(resourceGroup().id)}'


@allowed([
  'nonprod'
  'prod'
])
param environmentType string  

var storageAccountSkuName = (environmentType == 'prod') ? 'Standard_GRS' : 'Standard_LRS'


resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageAccountSkuName
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
} 
 

module appService 'modules/appService.bicep' = {
  name: 'appService'
  params: {
    location: location
    appServiceAppName: appServiceAppName
    environmentType: environmentType
  }
}

output appServiceAppHostName string = appService.outputs.appServiceAppHostName
