// description of location of the resources
param location string = resourceGroup().location

//description of name for vnet1
param vnet1Name string = 'app-prd-vnet'

//description of name for subnet1
param subnet1Name string = 'app-prd-subnet1'

//description of name for nsg1
param nsg1Name string = 'nsg1'



resource vnet1 'Microsoft.Network/virtualNetworks@2023-04-01' = {
  name: vnet1Name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
       '10.10.10.0/24'
      ]
    }
  }
}

resource subnet1 'Microsoft.Network/virtualNetworks/subnets@2023-04-01' = {
  parent:vnet1
  name:subnet1Name
  properties:{
    addressPrefix: '10.10.10.0/24'
    networkSecurityGroup:{
      id:nsg1.id
    }
  }
}

resource nsg1 'Microsoft.Network/networkSecurityGroups@2023-04-01' = {
 location: location
  name:nsg1Name
  properties:{
    securityRules:[
      {
        name: 'SSH'
        properties: {
          description: 'Allows SSH traffic'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '22'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
      }
    }
    ]
  }
}

    
