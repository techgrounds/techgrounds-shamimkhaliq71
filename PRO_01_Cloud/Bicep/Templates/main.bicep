
// main.bicep


// Parameters for location 
param location string = 'westeurope'


// Parameters for resource names App_vnet1
param vnet1Name string
param subnet1Name string
param nsg1Name string

// Parameters for resource names Man_vnet
param vnet2Name string
param subnet2Name string
param nsg2Name string

// Reference the parameters module
module parametersModule './Modules/parameters.bicep' = {
  name: 'parametersModule'
  params:{
    resourceGroupLocation: location
  }
  
}

// Reference the storage account module
module storageAccountModule './Modules/storageaccount.bicep' = {
  name: 'storageAccountModule'
  params: {
    location: parametersModule.outputs.location
    storageAccountName: parametersModule.outputs.storageAccountName
  }
}

// Reference the keyvault module
module keyvaultModule 'Modules/keyvault.bicep' = {
  name: 'keyvaultModule'
 // Other module properties
 params: {
  location: location 
  pass: 'Haseeb@03'
}
}

module Vnet1Module 'Modules/App_vnet1.bicep' = {
  name:'Vnet1Modeule'
  params:{
    Location: location 
    vnet1Name: vnet1Name
    subnet1Name: subnet1Name
    nsg1Name: nsg1Name
  }
}

module Vnet2Module 'Modules/App_vnet1.bicep' = {
  name:'Vnet2Modeule'
  params:{
    Location: location 
    vnet1Name: vnet2Name
    subnet1Name: subnet2Name
    nsg1Name: nsg2Name
  }
}


//open bash terminal >> login to Azure (az login)

//set up or select subscription (az account set --subscription 'Cloud Student 10')

//create or check if there's a resource group available(cloud11_project)
//az group create --name cloud11_project --location westeurope

//Deploy everything from main file
//check if you have selected the right path (cd Templates or cd .. to go up a directory)

//az deployment group create --template-file main.bicep --resource-group cloud11_project

//check in Azure portal

