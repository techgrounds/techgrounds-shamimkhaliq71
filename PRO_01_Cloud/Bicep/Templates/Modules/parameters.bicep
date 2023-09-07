// parameters.bicep

// Parameters for location and storageAccountName

param location string = resourceGroup().location
param storageAccountName string = 'lily1'

output location string = location
output storageAccountName string = storageAccountName
