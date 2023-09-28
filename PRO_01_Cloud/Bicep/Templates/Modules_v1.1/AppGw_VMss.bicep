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
        name: 'skAGSubnet'
        properties: {
          addressPrefix: appGatewaySubnetAddressPrefix
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
      {
        name: 'skBackendSubnet'
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
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', virtualNetworkName, 'skAGSubnet')
          }
        }
      }
    ] //This defines the configuration for the frontend IP address of the Application Gateway.
    frontendIPConfigurations: [  
      {
        name: 'appGwPublicFrontendIp'
        properties: {
          privateIPAllocationMethod: 'Dynamic' //Azure will automatically assign a private IP address from the available pool.
          publicIPAddress: {   //This link tells the Application Gateway to use the specified public IP address for incoming traffic.
            id: resourceId('Microsoft.Network/publicIPAddresses', '${publicIPAddressName}')
          }
        }
      }
    ]
    frontendPorts: [  //This section defines the frontend ports that the Application Gateway will listen on.
      {
        name: 'port_80'
        properties: {
          port: 80
        }
      }
    ]
    backendAddressPools: [ //The backend address pool is a group of backend resources where the Application Gateway will route incoming requests to.
      {
        name: 'skBackendPool'
        properties: {}
  }
]

    backendHttpSettingsCollection: [ //This section configures the HTTP settings for routing requests to the backend resources.
      {
        name: 'skHTTPSetting'
        properties: {
          port: 80   //This specifies that the Application Gateway will send traffic to the backend resources on port 80.
          protocol: 'Http'
          cookieBasedAffinity: 'Disabled'  //This setting controls whether the Application Gateway uses cookies to maintain session affinity. 
          //In this case, it's disabled, which means requests can be load-balanced to any backend server without considering cookies.
          pickHostNameFromBackendAddress: false
          requestTimeout: 20  //If a request to the backend server doesn't receive a response within 20 seconds, it's considered a timeout.
        }
      }
    ]
    httpListeners: [  //This configuration section defines how the Application Gateway listens for incoming HTTP requests.
      {
        name: 'skListener'
        properties: {
          frontendIPConfiguration: {   //This specifies which frontend IP configuration to associate with the listener. 
            id: resourceId('Microsoft.Network/applicationGateways/frontendIPConfigurations', applicationGateWayName, 'appGwPublicFrontendIp')
          }
          frontendPort: {   //It specifies the frontend port that the listener will use. 
            id: resourceId('Microsoft.Network/applicationGateways/frontendPorts', applicationGateWayName, 'port_80')
          }
          protocol: 'Http'  //This sets the protocol to HTTP, indicating that the listener is for handling HTTP traffic.
          requireServerNameIndication: false  //This property determines whether the listener requires the client to indicate the server name during the SSL handshake.
        }
      }
    ]
    requestRoutingRules: [  //Another configuration section that defines how incoming requests should be routed based on certain conditions
      {
        name: 'skRoutingRule'
        properties: {
          ruleType: 'Basic'
          httpListener: {
            id: resourceId('Microsoft.Network/applicationGateways/httpListeners', applicationGateWayName, 'skListener')
          }
          backendAddressPool: {
            id: resourceId('Microsoft.Network/applicationGateways/backendAddressPools', applicationGateWayName, 'skBackendPool')
          }
          backendHttpSettings: {
            id: resourceId('Microsoft.Network/applicationGateways/backendHttpSettingsCollection', applicationGateWayName, 'skHTTPSetting')
          }
        }
      }
    ]
    probes: [  //Health probes are used to check the status of backend resources to determine if they are healthy and should receive traffic.
      {
        name: 'skHealthProbe'
        properties: {
          protocol: 'Http' // This specifies the protocol used for the health probe, You can also use 'Https' for secure connections.
          host: 'example.com' // The health probe will send requests to this host.
          path: '/' // It specifies the path to request during the health probe. Here, it's set to '/' indicating the root path.
          interval: 30 //The probe will check the health of backend resources every 30 seconds.
          timeout: 120 //If a probe request doesn't receive a response within 120 seconds, it's considered a failure.
          unhealthyThreshold: 3 //If a resource fails the probe three times in a row, it's considered unhealthy.
        }
      }
    ]
    enableHttp2: false  //This setting specifies whether HTTP/2 is enabled or disabled. In this case, HTTP/2 is disabled. 
    autoscaleConfiguration: {  //Autoscaling allows the Application Gateway to automatically adjust its capacity based on demand.
      minCapacity: 0 // This sets the minimum capacity for the Application Gateway to 0 when low demand to reduce costs
      maxCapacity: 10  //This sets the maximum capacity for the Application Gateway to 10 for high demand.
    }
  }
  dependsOn: [
    publicIPAddress  // AppGateway depends on Public IP address
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
          access: 'Allow' 
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
          sourceAddressPrefix: '*' 
          destinationPortRange: '22'
          destinationAddressPrefix: '*' 
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

//az deployment group create --template-file AppGw_VMss.bicep --resource-group cloud11_project --parameters location='westeurope'
//you need provide securestring value for 'webadmin_password' (? for help): haseeb@03
 

//check in Azure portal under resource groups(cloud11_project)  
