//description of Location of the resources
param location string = resourceGroup().location

//description of Name for vNet 1
param vnet1Name string = 'vNet1'

//description of Name for vNet 2
param vnet2Name string = 'vNet2'

var vnet1Config = {
  addressSpacePrefix: '10.10.10.0/24'
  subnetName: 'subnet1'
  subnetPrefix: '10.10.10.0/24'
}
var vnet2Config = {
  addressSpacePrefix: '10.20.20.0/24'
  subnetName: 'subnet2'
  subnetPrefix: '10.20.20.0/24'
}

resource nsg_1 'Microsoft.Network/networkSecurityGroups@2023-04-01' = {
  name: 'nsg_1'
  location: location
  properties: {
    securityRules: [
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

resource nsg_2 'Microsoft.Network/networkSecurityGroups@2023-04-01' = {
  name: 'nsg_2'
  location: location
  properties: {
    securityRules: [
      {
        name: 'RDP'
        properties: {
          description: 'Allows RDP traffic'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '3389'
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


resource vnet1 'Microsoft.Network/virtualNetworks@2023-04-01' = {
  name: vnet1Name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnet1Config.addressSpacePrefix
      ]
    }
    subnets: [
      {
        name: vnet1Config.subnetName
        properties: {
          addressPrefix: vnet1Config.subnetPrefix
          networkSecurityGroup: {
            id: nsg_1.id
          }
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
    ]
  }
}


resource vnet2 'Microsoft.Network/virtualNetworks@2023-04-01' = {
  name: vnet2Name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnet2Config.addressSpacePrefix
      ]
    }
    subnets: [
      {
        name: vnet2Config.subnetName
        properties: {
          addressPrefix: vnet2Config.subnetPrefix
          networkSecurityGroup: {
            id: nsg_2.id
          }
        }
      }
    ]
  }
}

resource VnetPeering1 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2023-04-01' = {
  parent: vnet1
  name: '${vnet1Name}-${vnet2Name}'
  properties: {
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: false
    allowGatewayTransit: false
    useRemoteGateways: false
    remoteVirtualNetwork: {
      id: vnet2.id
    }
  }
}

resource vnetPeering2 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2023-04-01' = {
  parent: vnet2
  name: '${vnet2Name}-${vnet1Name}'
  properties: {
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: false
    allowGatewayTransit: false
    useRemoteGateways: false
    remoteVirtualNetwork: {
      id: vnet1.id
    }
  }
}


output vnet1_id string = vnet1.id
output vnet2_id string = vnet2.id
output nsg1_id string = nsg_1.id
output nsg2_id string = nsg_2.id
output subnet1 string = vnet1.properties.subnets[0].id
output subnet2 string = vnet2.properties.subnets[0].id


