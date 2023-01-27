// Ici, il n'est pas possible de "hardcoder" la location. Il faut donc créer un param et l'utiliser dans le code.
// Cette notion sera expliqué dans la partie niv2
// Se positionner dans le répertoire ou se trouve le Bicep
// Powershell => Lancer la commande 'New-AzDeployment -Location "francecentral" -TemplateFile "create-rg.bicep"'
// CLI => Lancer la commande "az deployment sub create --location francecentral --template-file create-rg.bicep"

@description('Specifies the location for resources.')
param location string = 'francecentral' 

targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'DemoBicep'
  location: location
}
