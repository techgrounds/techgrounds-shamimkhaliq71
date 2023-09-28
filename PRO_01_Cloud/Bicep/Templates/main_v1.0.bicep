
// main.bicep


//discription of location 
param location string = 'westeurope'

//discription of StorageAccount
param storageAccountName string

//discription of keyvault
//discription of secret1
@secure()
param pass string 

//discription of Webserver login
//description of WebUserName
@secure()
param WebUsername string

//description of Web password
@secure()
param WebPasswordOrKey string


//description of Username admin
@secure()
param AdminUName string 


//description of Managemnt password
@secure()
param AdminPW string 


//Reference the storage account module
module storageAccountModule './Modules_v1.0/storageaccount.bicep' = {
  name: 'storageAccountModule'
  params: {
    location: location
    storageAccountName: storageAccountName
  }
}

//Reference to keyvault module
module keyvaultModule 'Modules_v1.0/keyvaultv1.0.bicep' = {
  name: 'keyvaultModule'
 // Other module properties
 params: {
  location: location 
  pass:pass
}
}

//Reference to Recovery vault module
module RecoveryVaultModule 'Modules_v1.0/RecoveryVault.bicep' = {
  name: 'ReccoveryVaultModule'
  params: {
    location:location
  }
}

//Reference to MyVnetworModule 
module MyVnetworkModule 'Modules_v1.0/MyVnetwork.bicep' = {
  name: 'MyVnetworkModule'
  params: {
    location: location
    vnet1Name: 'WebvNet1'
    vnet2Name: 'AdminVnet2'
    }
  }


//Reference to Webserver and relating resources
module WebserverModule 'Modules_v1.0/Webserver.bicep' = {
  name: 'WebserverModule'
  params: {
    location:location
    subnet1:MyVnetworkModule.outputs.subnet1
    WebUsername:WebUsername
    WebPasswordOrKey:WebPasswordOrKey
  }
}

//Reference to Adminserver and relating resources
module AdminserverModule 'Modules_v1.0/Adminserver.bicep' = {
  name: 'AdminserverModule'   
  params:{
    location:location
    subnet2:MyVnetworkModule.outputs.subnet2
    AdminUName:AdminUName
    AdminPW:AdminPW
  }
}





//open bash terminal >> login to Azure (az login)

//set up or select subscription (az account set --subscription 'Cloud Student 10')

//create or check if there's a resource group available(cloud11_project)
//az group create --name cloud11_project --location westeurope

//Restore the soft-deleted Key Vault, but make sure the resource group is created already
//az keyvault recover --name 'Chabi1' --resource-group cloud11_project

//Deploy everything from main file
//check if you have selected the right path (cd Templates or cd .. to go up a directory)

//az deployment group create --template-file main_v1.0.bicep --resource-group cloud11_project

//Please provide string value for 'storageAccountName' (? for help): lily1
//Please provide securestring value for 'pass' (? for help): adminpass1
//Please provide securestring value for 'WebUsername' (? for help): mimzy
//Please provide securestring value for 'WebPasswordOrKey' (? for help): haseeb@03
//Please provide securestring value for 'AdminUName' (? for help): mimzy2
//Please provide securestring value for 'AdminPW' (? for help): Haziq@023

//check in Azure portal

