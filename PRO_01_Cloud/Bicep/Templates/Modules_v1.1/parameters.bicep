// parameters.bicep

//discription of resourceGroup and Location 
param resourceGroupName string = 'cloud11_project' 
param location string = resourceGroup().id

//discription of SrorageAccount
param storageAccountName string = 'lily1'

//discription of tenantID
param tenantID string = 'de60b253-74bd-4365-b598-b9e55a2b208d'

//discription of objectID
param objectID string = 'a04a1d40-0b09-48f7-91a7-d32abf5a1e31'

//description of name for vnet1
param vnet1Name string = 'App_vnet1'

//description of name for subnet1
param subnet1Name string = 'App_subnet1'

//description of name for nsg1
param nsg1Name string = 'nsg1'

//description of name for vnet1
param vnet2Name string = 'Man_vnet2'

//description of name for subnet1
param subnet2Name string = 'Man_subnet1'

//description of name for nsg1
param nsg2Name string = 'nsg2'

output resourceGroup string = resourceGroupName
output location string = location
output storageAccountName string = storageAccountName
output tenantID string = tenantID 
output objectID string = objectID
output vnet1Name string = vnet1Name
output subnet1Name string = subnet1Name
output nsg1Name string = nsg1Name
output vnet2Name string = vnet2Name
output subnet2Name string = subnet2Name
output nsg2Name string = nsg2Name
