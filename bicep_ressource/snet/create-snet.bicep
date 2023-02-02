// Se positionner dans le répertoire ou se trouve le Bicep
// Powershell => Lancer la commande 'New-AzResourceGroupDeployment -ResourceGroupName "DemoBicep" -TemplateFile "create-snet.bicep"'
// CLI => Lancer la commande "az deployment group create --resource-group DemoBicep --template-file create-snet.bicep"

targetScope = 'resourceGroup'

resource VNET 'Microsoft.Network/virtualNetworks@2022-07-01' existing = {
  name: 'vnetbicep001'
}

resource Subnets1 'Microsoft.Network/virtualNetworks/subnets@2022-07-01' = {
  parent: VNET
  name: 'snetbicep001'
  properties: {
    addressPrefix: '10.0.1.0/24'
  }
}

resource Subnets2 'Microsoft.Network/virtualNetworks/subnets@2022-07-01' = {
  parent: VNET
  name: 'snetbicep002'
  dependsOn: [
    Subnets1
  ]
  properties: {
    addressPrefix: '10.0.2.0/24'
  }
}

resource Subnets3 'Microsoft.Network/virtualNetworks/subnets@2022-07-01' = {
  parent: VNET
  name: 'snetbicep003'
  dependsOn: [
    Subnets2
  ]
  properties: {
    addressPrefix: '10.0.3.0/24'
  }
}
