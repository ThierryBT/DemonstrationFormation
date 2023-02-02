// Il n'est pas possible à l'heure actuelle de déployer des ressources sur différents scopes dans un même fichier.
// Microsoft.Resources/resourceGroups ne peut être sur un scope autre que la subscription. Erreur = Scope "resourceGroup" is not valid for this resource type. Permitted scopes: "subscription"
// Microsoft.Network/virtualNetworks ne peut être sur un scope autre quele resourceGroup. Erreur = Scope "subscription" is not valid for this resource type. Permitted scopes: "resourceGroup"
// Cette particularité sera traitée dans les exemples bicep_env_niv2

@description('Specifies the location for resources.')
param location string = 'francecentral' 

targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2021-01-01' = {
  name: 'DemoBicep'
  location: location
}

resource vnet 'Microsoft.Network/virtualNetworks@2022-07-01' = {
  name: 'vnetbicep001'
  location: location
}
