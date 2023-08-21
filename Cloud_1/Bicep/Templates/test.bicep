  resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'testbiceplaunchstoragesk' 
location: 'westeurope'
sku: {
  name: 'Standard_LRS'
}
kind: 'StorageV2'
properties: {
  accessTier: 'Hot'}
   