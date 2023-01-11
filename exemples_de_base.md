# DemonstrationFormation
Apprentissage Code Azure

# Convention
Italique = valeur à modifier  
Gras =  Important  
`Fond Gris` = Code  
↲ = Touche Entrée  
PS = Powershell  
AZ CLI = Bash  


## Prérequis
Un abonnement Azure  
Un compte de stockage pour lancer le Cloud Shell  

## Premier lancement du CLoud Shell
https://learn.microsoft.com/fr-fr/azure/cloud-shell/overview#choice-of-preferred-shell-experience  

## Récupérer le contexte de l'abonnement
PS : `Get-AzContext`   
AZ CLI : `az account show`

## Modifier le contexte de l'abonnement
PS :  `Set-AzContext -SubscriptionId` *id de l'abonnement*  
AZ CLI : `az account set --subscription` *id de l'abonnement*  

## Afficher les informations de son compte de stockage Cloud Shell
PS : `Get-CloudDrive`  
AZ CLI : `df`  

## Utiliser un résultat précédent dans la commande (le pipe)
PS :  `Get-AzVm | Select-Object location`  *la partie gauche de la commande est réutilisée dans la partie droite*  
AZ CLI :  `az vm list | less`  *la partie gauche de la commande est réutilisée dans la partie droite, les données renvoyées dans la commande sont affichées page par page* 

## Créer une variable
PS :  `$unevaleur = "nom de ma VM"`  
AZ CLI :  `unevaleur="nom de ma VM"`  **il n'y a pas d'espace avant et après le symbole d'égalité** 

## Afficher une variable (affichage des variables créées précédemment)
PS :  `$unevaleur` *affiche le contenu de la variable créé au dessus*  
AZ CLI :  `echo $unevaleur` *affiche le contenu de la variable créé au dessus*  

## Utiliser une variable
PS :  `$vm ="linux0002"`↲  
      `Get-AzVM -Name $vm`  
AZ CLI :  `monrg="mongroupederessources"`↲  
          `vm="linux0002"`↲  
          `az vm show --resource-group $monrg --name $vm`  

## Utiliser la tabulation
PS :  `xxx`  
AZ CLI :  `xxx`  

## Mode interactif pour l'AZ CLI

