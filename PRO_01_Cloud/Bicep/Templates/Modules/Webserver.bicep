//discription of location
param location string = 'westeurope'

//discription of Virtual machine name and VM size
param vmName string = 'WebServerVM' 
param vmSize string = 'Standard_DS2_v2'


//description of subnet_id from vnet1
param subnet1 string 

//descriptionof WebUserName
@secure()
param WebUsername string

//description Web password
@secure()
param WebPasswordOrKey string

//description of type of authentication to use on the Virtual Machine. SSH key is recommended.
@allowed([
  'sshPublicKey'
  'password'
])
param authenticationType string = 'password'

//description of Unique DNS Name for the Public IP used to access the Virtual Machine.
param dnsLabelPrefix string = toLower('${vmName}-${uniqueString(resourceGroup().id)}')

var imageReference = {
  'Ubuntu-1804': {
    publisher: 'Canonical'
    offer: 'UbuntuServer'
    sku: '18_04-lts-gen2'
    version: 'latest'
  }
  'Ubuntu-2004': {
    publisher: 'Canonical'
    offer: '0001-com-ubuntu-server-focal'
    sku: '20_04-lts-gen2'
    version: 'latest'
  }
  'Ubuntu-2204': {
    publisher: 'Canonical'
    offer: '0001-com-ubuntu-server-jammy'
    sku: '22_04-lts-gen2'
    version: 'latest'
  }
}

var publicIPAddressName = '${vmName}PublicIP'
var networkInterfaceName = '${vmName}NetInt'
var osDiskType = 'Standard_LRS'

var linuxConfiguration = {
  disablePasswordAuthentication: true
  ssh: {
    publicKeys: [
      {
        path: '/home/${WebUsername}/.ssh/authorized_keys'
        keyData: WebPasswordOrKey
      }
    ]
  }
}

resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2023-04-01' = {
  name: publicIPAddressName
  location: location
  sku: {
    name:'Basic'
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


//description of VM_WebServer
resource vm_WebServer 'Microsoft.Compute/virtualMachines@2023-03-01' = {
  name: vmName
  location: location
  properties: {
    hardwareProfile: {
      vmSize: vmSize
    }
    storageProfile: {
      osDisk: {
        createOption: 'FromImage'
        managedDisk: {
          storageAccountType: osDiskType
        }
      }
        imageReference: imageReference['Ubuntu-1804']
      }
      osProfile: {
        computerName: vmName
        adminUsername: WebUsername
        adminPassword: WebPasswordOrKey
        linuxConfiguration: ((authenticationType == 'password') ? null : linuxConfiguration)
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
            name: 'ipconfig1'
            properties: {
              subnet: {
                id: subnet1       } 
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

//az deployment group create --template-file Webserver.bicep --resource-group cloud11_project --parameters location='westeurope'


//First you need to set the right path;
//PS C:\Users\TechGrounds\Desktop\techgrounds-shamimkhaliq71> ssh mimzy@104.40.205.242

//Once the VM is deployed, you can SSH into it using the SSH key you provided in the template. 
//If you specified an SSH key for authentication, follow these steps: 
//Replace <admin-username> with the username you specified in the ARM template 
//and <public-ip> with the public IP address of the VM.(ssh mimzy@104.40.205.242)

//You need to provide the password for the usersname (mimzy)
//mimzy@104.40.205.242's password: 
//Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 5.4.0-1109-azure x86_64).....





