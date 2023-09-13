
// main.bicep


//discription of location 
param location string = 'westeurope'

//discription of StorageAccount
param storageAccountName string

//discription of keyvault
//discription of secret1
@secure()
param pass string 

//discription of resource names Man_vnet2
param vnet2Name string
param subnet2Name string
param nsg2Name string

//discription of Webserver
//description('adminUserName')
@secure()
param adminUsername string

//description('Admin_PW')
@secure()
param adminPasswordOrKey string

//Reference the parameters module
module parametersModule './Modules/parameters.bicep' = {
  name: 'parametersModule'
  params:{
    location: location
  }
  
}

//Reference the storage account module
module storageAccountModule './Modules/storageaccount.bicep' = {
  name: 'storageAccountModule'
  params: {
    location: location
    storageAccountName: storageAccountName
  }
}

//Reference the keyvault module
module keyvaultModule 'Modules/keyvault.bicep' = {
  name: 'keyvaultModule'
 // Other module properties
 params: {
  location: location 
  pass:pass
}
}

//Reference the Vnet2 module
module Vnet2Module  'Modules/management_vnet2.bicep' = {
  name:'Vnet2Modeule'
  params:{
    Location: location 
    vnet2Name: vnet2Name
    subnet2Name: subnet2Name
    nsg2Name: nsg2Name
  }
}

//Reference the Webserver and relating resources
module WebserverModule 'Modules/Webserver.bicep' = {
  name: 'WebserverModule'
  params: {
    location:location
    adminPasswordOrKey:adminPasswordOrKey 
    adminUsername:adminUsername
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

