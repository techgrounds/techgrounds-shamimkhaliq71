// parameters.bicep

// Parameters for location and storageAccountName
param resourceGroupLocation string 
param storageAccountName string = 'lily1'

//prameter for tenantID
param tenantID string = 'de60b253-74bd-4365-b598-b9e55a2b208d'

//parameter for objectID
param objectID string = 'a04a1d40-0b09-48f7-91a7-d32abf5a1e31'

//description of name for vnet1
param vnet1Name string = 'app-prd-vnet'

//description of name for subnet1
param subnet1Name string = 'app-prd-subnet1'

//description of name for nsg1
param nsg1Name string = 'nsg1'


output location string = resourceGroupLocation
output storageAccountName string = storageAccountName
output tenantID string = tenantID 
output objectID string = objectID
output vnet1Name string = vnet1Name
output subnet1Name string = subnet1Name
output nsg1Name string = nsg1Name
