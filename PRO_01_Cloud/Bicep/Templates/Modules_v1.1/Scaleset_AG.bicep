//description of location
param location string = resourceGroup().location

// description public IP adress
var publicIPAddressName = 'public_ip'

resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2021-05-01' = {
  name: publicIPAddressName
  location: location
  sku: {
    name: 'Standard'
  }
  properties: {
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'
    idleTimeoutInMinutes: 4
  }
}

// Virtual Network with Subnets

// addressPrefixes
var vnet_addressPrefixes_webapp = '10.10.10.0/24'

// appGatewaySubnetAddressPrefix:Here you decide how big of a space you want for your Application Gateway to work in within your VNet.
// This is a special area inside your VNet dedicated to hosting the Azure Application Gateway service. 
// you need to allocate a piece of your VNet's IP address range for this special subnet.
// It is recommended to use a /27 subnet (32 addresses) for the Application Gateway subnet.
// var appGatewaySubnetAddressPrefix = '10.10.10.0/25'
var appGatewaySubnetAddressPrefix = '10.10.10.0/26'

// backendSubnetAddressPrefix: This is a setting that defines the size and range of IP addresses for a specific subnet in your network.
//This subnet is like a designated area in your network where you place all the resources (like virtual machines or web servers)
//This is where the Application Gateway sends internet traffic to.
// The size of the backend subnet depends on the number of resources you plan to deploy 
// in that subnet. 
//The size of the subnet depends on how many resources you plan to put there. If you expect to have a lot of resources in the future, 
//it's a good idea to allocate a larger subnet with more IP addresses.
// var backendSubnetAddressPrefix = '10.10.10.128/25' This sets the size of the subnet to have 128 IP addresses.
var backendSubnetAddressPrefix = '10.10.10.128/26' //This sets the size of the subnet to have 64 IP addresses.
// var backendSubnetAddressPrefix = '10.10.10.128/27' This sets the size of the subnet to have 32 IP addresses.

// // vnet
//description of Name of the web application virtual network.
var virtualNetworkName = 'webapp-vnet'

resource virtualNetwork_webapp 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: virtualNetworkName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnet_addressPrefixes_webapp
      ]
    }
    subnets: [
      {
        name: 'myAGSubnet'
        properties: {
          addressPrefix: appGatewaySubnetAddressPrefix
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
      {
        name: 'myBackendSubnet'
        properties: {
          addressPrefix: backendSubnetAddressPrefix
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
    ]
    enableDdosProtection: false
    enableVmProtection: false
  }
}

//AppGateWay
param applicationGateWayName string = 'applicationGateWay'

resource applicationGateWay 'Microsoft.Network/applicationGateways@2021-05-01' = {
  name: applicationGateWayName
  location: location
  properties: {
    sku: {
      name: 'Standard_v2'
      tier: 'Standard_v2'
    }
    gatewayIPConfigurations: [
      {
        name: 'appGatewayIpConfig'
        properties: {
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', virtualNetworkName, 'myAGSubnet')
          }
        }
      }
    ]
    frontendIPConfigurations: [
      {
        name: 'appGwPublicFrontendIp'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: resourceId('Microsoft.Network/publicIPAddresses', '${publicIPAddressName}')
          }
        }
      }
    ]
    frontendPorts: [
      {
        name: 'port_80'
        properties: {
          port: 80
        }
      }
    ]
    backendAddressPools: [
      {
        name: 'myBackendPool'
        properties: {}
      }
    ]
    backendHttpSettingsCollection: [
      {
        name: 'myHTTPSetting'
        properties: {
          port: 80
          protocol: 'Http'
          cookieBasedAffinity: 'Disabled'
          pickHostNameFromBackendAddress: false
          requestTimeout: 20
        }
      }
    ]
    httpListeners: [
      {
        name: 'myListener'
        properties: {
          frontendIPConfiguration: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendIPConfigurations', applicationGateWayName, 'appGwPublicFrontendIp')
          }
          frontendPort: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendPorts', applicationGateWayName, 'port_80')
          }
          protocol: 'Http'
          requireServerNameIndication: false
        }
      }
    ]
    requestRoutingRules: [
      {
        name: 'myRoutingRule'
        properties: {
          ruleType: 'Basic'
          httpListener: {
            id: resourceId('Microsoft.Network/applicationGateways/httpListeners', applicationGateWayName, 'myListener')
          }
          backendAddressPool: {
            id: resourceId('Microsoft.Network/applicationGateways/backendAddressPools', applicationGateWayName, 'myBackendPool')
          }
          backendHttpSettings: {
            id: resourceId('Microsoft.Network/applicationGateways/backendHttpSettingsCollection', applicationGateWayName, 'myHTTPSetting')
          }
        }
      }
    ]
    probes: [
      {
        name: 'myHealthProbe'
        properties: {
          protocol: 'Http' // or 'Https' for secure connections
          host: 'example.com' // host to probe
          path: '/' // path to request
          interval: 30 // probe interval in seconds
          timeout: 120 // probe timeout in seconds
          unhealthyThreshold: 3 // consecutive failures to mark as unhealthy
        }
      }
    ]
    enableHttp2: false
    autoscaleConfiguration: {
      minCapacity: 0
      maxCapacity: 10
    }
  }
  dependsOn: [
    publicIPAddress
  ]
}

//Network Security Group
// param name_nsg_frontend string = 'nsg_frontend'
param nsg_backend_name string = 'nsg_backend'

resource nsg_backend 'Microsoft.Network/networkSecurityGroups@2022-11-01' = {
  name: nsg_backend_name
  location: location
  properties: {
    securityRules: [
      { name: 'https'
        properties: {
          access: 'Allow'
          direction: 'Inbound'
          priority: 100
          protocol: 'Tcp'
          sourcePortRange: '*'
          sourceAddressPrefix: '*'
          destinationPortRange: '443'
          destinationAddressPrefix: '*'
        }
      }
      { name: 'http'
        properties: {
          access: 'Allow' // later op deny na ssl termination
          direction: 'Inbound'
          priority: 200
          protocol: 'Tcp'
          sourcePortRange: '*'
          sourceAddressPrefix: '*'
          destinationPortRange: '80'
          destinationAddressPrefix: '*'
        }
      }
      { name: 'ssh'
        properties: {
          access: 'Allow'
          direction: 'Inbound'
          priority: 400
          protocol: 'Tcp'
          sourcePortRange: '*'
          sourceAddressPrefix: '*' // admin server of ip als je ssh forwarding doet
          destinationPortRange: '22'
          destinationAddressPrefix: '*' // waarschijnlijk nog specifieker maken
        }
      }
      {
        name: 'GatewayManager'
        properties: {
          protocol: 'TCP'
          sourceAddressPrefix: 'GatewayManager'
          sourcePortRange: '*'
          destinationAddressPrefix: '*'
          destinationPortRange: '65200-65535'
          access: 'Allow'
          priority: 1100
          direction: 'Inbound'
        }
      }
    ]
  }
}

//VM Scale Set

//description of Admin username on all VMs. login webserver
param webadminUsername string = 'Mimzy'

//description of SSH Key or password for the Virtual Machine. SSH key is recommended.
@secure()
@minLength(6)
param webadmin_password string 

param vmScaleSetName string = 'WebserverVMss'
var apacheDeployment = loadFileAsBase64('./customdata.sh')

param vm_size string = 'Standard_B1s'
param vm_sku string = '22_04-lts-gen2'
// // '20_04-lts'

resource vmss 'Microsoft.Compute/virtualMachineScaleSets@2021-11-01' = {
  name: vmScaleSetName
  location: location
  sku: {
    tier: 'Standard'
    name: vm_size
    capacity: 1
  }
  properties: {
    singlePlacementGroup: true
    platformFaultDomainCount: 1
    overprovision: true
    automaticRepairsPolicy: {
      enabled: true
    }
    upgradePolicy: {
      mode: 'Rolling'
      rollingUpgradePolicy: {
        prioritizeUnhealthyInstances: true
      }
    }
    additionalCapabilities: {
      hibernationEnabled: false
      ultraSSDEnabled: false
    }
    virtualMachineProfile: {
      userData: apacheDeployment
      storageProfile: {
        imageReference: {
          // '0001-com-ubuntu-server-focal'
          offer: '0001-com-ubuntu-server-jammy'
          version: 'latest'
          publisher: 'canonical'
          sku: vm_sku
        }
        osDisk: {
          caching: 'ReadWrite'
          createOption: 'FromImage'
          osType: 'Linux'
          managedDisk: {
            storageAccountType: 'StandardSSD_LRS'
            // diskEncryptionSet: {
            //   id: diskencryption
            // }
          }
        }
      }
      osProfile: {
        computerNamePrefix:vmScaleSetName
        adminUsername:webadminUsername
        adminPassword: webadmin_password
        linuxConfiguration: {
          disablePasswordAuthentication: false
          provisionVMAgent: true // or true
        }
      }
      networkProfile: {
        networkInterfaceConfigurations: [
          {
            name: 'VMSS-interface'
            properties: {
              networkSecurityGroup: {
                id: nsg_backend.id
              }
              enableAcceleratedNetworking: false
              enableIPForwarding: false
              primary: true
              ipConfigurations: [
                {
                  name: 'VMSS-IPconfig'
                  properties: {
                    privateIPAddressVersion: 'IPv4'
                    subnet: {
                      id: virtualNetwork_webapp.properties.subnets[1].id // backend subnet
                    }
                    applicationGatewayBackendAddressPools: [
                      {
                        id: applicationGateWay.properties.backendAddressPools[0].id // resourceId('Microsoft.Network/applicationGateways/backendAddressPools', app_gateway_name, 'backend_pool')
                      }
                    ]
                  }
                }
              ]
            }
          }
        ]
      }
      extensionProfile: {
        extensions: [
          {
            name: 'healthcheck'
            properties: {
              enableAutomaticUpgrade: false
              autoUpgradeMinorVersion: false
              publisher: 'Microsoft.ManagedServices'
              type: 'ApplicationHealthLinux'
              typeHandlerVersion: '1.0'
              settings: {
                port: 80
                protocol: 'http'
                requestPath: ''
              }
            }
          }
        ]
      }
    }
  }
}

//Auto ScaleHost

resource autoscaleHost 'Microsoft.Insights/autoscalesettings@2022-10-01' = {
  name: 'autoscaleHost'
  location: location
  properties: {
    name: 'autoscaleHost'
    targetResourceUri: vmss.id
    enabled: true
    profiles: [
      {
        name: 'Profile1'
        capacity: {
          minimum: '1'
          maximum: '3'
          default: '1'
        }
        rules: [
          {
            metricTrigger: {
              metricName: 'Percentage CPU'
              metricResourceUri: vmss.id
              timeGrain: 'PT1M'
              statistic: 'Average'
              timeWindow: 'PT5M'
              timeAggregation: 'Average'
              operator: 'GreaterThan'
              threshold: 70
            }
            scaleAction: {
              direction: 'Increase'
              type: 'ChangeCount'
              value: '1'
              cooldown: 'PT1M'
            }
          }
          {
            metricTrigger: {
              metricName: 'Percentage CPU'
              metricResourceUri: vmss.id
              timeGrain: 'PT1M'
              statistic: 'Average'
              timeWindow: 'PT5M'
              timeAggregation: 'Average'
              operator: 'LessThan'
              threshold: 30
            }
            scaleAction: {
              direction: 'Decrease'
              type: 'ChangeCount'
              value: '1'
              cooldown: 'PT1M'
            }
          }
        ]
      }
    ]
  }
}



//open bash terminal >> login to Azure (az login)

//set up or select subscription (az account set --subscription 'Cloud Student 10')

//create or check if there's a resource group available(cloud11_project)
//az group create --name cloud11_project --location westeurope

//check if you have selected the right path (cd Modules_v1.1)

//az deployment group create --template-file ScaleSet.bicep --resource-group cloud11_project --parameters location='westeurope'
//you need provide securestring value for 'webadmin_password' (? for help): haseeb@03
 

//check in Azure portal under resource groups(cloud11_project)  
