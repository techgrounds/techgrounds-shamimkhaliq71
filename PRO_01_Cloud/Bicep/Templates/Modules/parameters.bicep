// parameters.bicep

// Parameters for location and storageAccountName

param location string = resourceGroup().location
param storageAccountName string = 'lily1'

//prameter for tenantID
param tenantID string = 'de60b253-74bd-4365-b598-b9e55a2b208d'

output location string = location
output storageAccountName string = storageAccountName
output tenantID string = tenantID 
