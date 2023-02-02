// Ici, il n'est pas possible de "hardcoder" la location. Il faut donc créer un param et l'utiliser dans le code.
// Cette notion sera expliqué dans la partie niv2
// Se positionner dans le répertoire ou se trouve le Bicep
// Powershell => Lancer la commande 'New-AzResourceGroupDeployment -ResourceGroupName "DemoBicep" -TemplateFile "create-vnet.bicep"'
// CLI => Lancer la commande "az deployment group create --resource-group DemoBicep --template-file create-vnet.bicep"

@description('Specifies the location for resources.')
param location string = 'francecentral'

targetScope = 'resourceGroup'

resource vnet 'Microsoft.Network/virtualNetworks@2022-07-01' = {
  name: 'vnetbicep001'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
  }
}
