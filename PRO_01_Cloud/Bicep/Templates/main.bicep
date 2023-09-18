
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

//Reference MyVnetworModule 
module MyVnetworkModule 'Modules/MyVnetwork.bicep' = {
  name: 'MyVnetworkModule'
  params: {
    location: location
    vnet1Name: 'vNet1'
    vnet2Name: 'vNet2'
    }
  }


//Reference the Webserver and relating resources
module WebserverModule 'Modules/Webserver.bicep' = {
  name: 'WebserverModule'
  params: {
    location:location
    subnet1:MyVnetworkModule.outputs.subnet1
    WebUsername:WebUsername
    WebPasswordOrKey:WebPasswordOrKey
  }
}

//Reference the Adminserver and relating resources
module AdminserverModule 'Modules/Adminserver.bicep' = {
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

//az deployment group create --template-file main.bicep --resource-group cloud11_project
//Please provide string value for 'storageAccountName' (? for help): lily1
//Please provide securestring value for 'pass' (? for help): 
//Please provide securestring value for 'WebUsername' (? for help): 
//Please provide securestring value for 'WebPasswordOrKey' (? for help): 
//Please provide securestring value for 'AdminUName' (? for help): 
//Please provide securestring value for 'AdminPW' (? for help): 

//check in Azure portal

