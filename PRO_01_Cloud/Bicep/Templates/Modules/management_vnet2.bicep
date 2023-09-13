// description of location of the resources
param Location string 

//description of name for vnet2
param vnet2Name string = 'Man_vnet2'

//description of name for subnet2
param subnet2Name string = 'Man_subnet2'

//description of name for nsg2
param nsg2Name string = 'nsg2'



resource vnet2 'Microsoft.Network/virtualNetworks@2023-04-01' = {
  name: vnet2Name
  location: Location
  properties: {
    addressSpace: {
      addressPrefixes: [
       '10.20.20.0/24'
      ]
    }
  }
}

resource subnet2 'Microsoft.Network/virtualNetworks/subnets@2023-04-01' = {
  parent:vnet2
  name:subnet2Name
  properties:{
    addressPrefix: '10.20.20.0/24'
    networkSecurityGroup:{
      id:nsg2.id
    }
  }
}

resource nsg2 'Microsoft.Network/networkSecurityGroups@2023-04-01' = {
 location: Location
  name:nsg2Name
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

    
