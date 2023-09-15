//discription of location
param location string = resourceGroup().location

//discription of Virtual machine name and VM size
param AdminVmName string = 'adminserver'
param AdminVmSize string = 'Standard_B1ls'

//description of Username-management
@secure()
param adminUName string 

//description of Managemnt password
@secure()
param adminPW string 


//description of subnet_id from vnet2
param subnetId string 

//description of Unique DNS Name for the Public IP used to access the Virtual Machine.
param dnsLabelPrefix string = toLower('${AdminVmName}-${uniqueString(resourceGroup().id)}')

var virtualMachineName = 'AdminserverVM'


var networkInterfaceName = '${adminUName}NetInt'
var osDiskType = 'Standard_LRS'
var publicIPAddressName = '${AdminVmName}PublicIP'


resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2023-04-01' = {
  name: publicIPAddressName
  location: location
  sku: {
    name: 'Basic'
  }
  properties: {
    publicIPAllocationMethod: 'Dynamic'
    publicIPAddressVersion: 'IPv4'
    dnsSettings: {
      domainNameLabel: dnsLabelPrefix
    }
    idleTimeoutInMinutes: 4
  }
}


resource adminServer 'Microsoft.Compute/virtualMachines@2023-03-01' = {
  name: virtualMachineName
  location: location
  properties: {
    hardwareProfile: {
      vmSize: AdminVmSize
    }
    storageProfile: {
      osDisk: {
        createOption: 'FromImage'
        managedDisk: {
          storageAccountType: osDiskType
        }
      }
        imageReference: {
          publisher: 'MicrosoftWindowsServer'
          offer: 'WindowsServer'
          sku: '2022-datacenter-azure-edition' //https://learn.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-bicep?tabs=CLI
          version: 'latest'
        }
      }
      osProfile: {
        computerName: AdminVmName
        adminUsername: adminUName
        adminPassword: adminPW
      }
      networkProfile: {
        networkInterfaces: [
          {
            id: networkInterface.id
            properties: {
              deleteOption: 'Delete'
            }
          }
        ]
      }
      
        
      }
    }


resource networkInterface 'Microsoft.Network/networkInterfaces@2023-04-01' = {
  name: networkInterfaceName
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig2'
        properties: {
          subnet: {
            id: subnetId           }
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIPAddress.id
          }
        }
      }
    ]
    
        
   }
}

//open bash terminal >> login to Azure (az login)

//set up or select subscription 
//az account set --subscription 'Cloud Student 10'

//create or check if there's a resource group available(cloud11_project)
//az group create --name cloud11_project --location westeurope

//check if you have selected the right path (cd Modules)

//az deployment group create --template-file Adminerver.bicep --resource-group cloud11_project --parameters location='westeurope'
