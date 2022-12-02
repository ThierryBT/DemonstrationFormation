## Filtrer un retour de commande
*Dans les propriétés renvoyées par la commande, il y a une valeur appelée location. La commande filtrée ne donne que cette information*  
PS :  `Get-AzVm | Select-Object location`  
AZ CLI :  `az vm list --query "[].[location]"` 

## Filtrer avec recherche 
*Dans les propriétés renvoyées par la commande, il y a une valeur appelée location. La commande filtrée affiche uniquement les VM dans ce cas et affiche toutes les propriétés*  
PS :  `Get-AzVM | Where-Object {$_.location -eq "francecentral"}`  
AZ CLI :  `az vm list --query "[?contains(location,'francecentral')]"`  

## Filtrer avec recherche et retour de commande
*Dans les propriétés renvoyées par la commande, il y a une valeur appelée location. La commande filtrée affiche uniquement les VM dans ce cas et n'affiche que la propriété name*  
PS :  `Get-AzVM | Where-Object {$_.location -eq "francecentral"} | Select-Object name`  
AZ CLI :  `az vm list --query "[?contains(location,'francecentral')][].[name]"`  

