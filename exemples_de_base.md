# DemonstrationFormation
Apprentissage Code Azure

# Convention
Italique = valeur à modifier  
Gras =  Important
`Fond Gris` = Code  
PS = Powershell  
AZ CLI = Bash  

## Prérequis
Un abonnement Azure  
Un compte de stockage pour lancer le Cloud Shell

## Récupérer le contexte de l'abonnement
PS : `Get-AzContext`   
AZ CLI : `az account show`

## Modifier le contexte de l'abonnement
PS :  `Set-AzContext -SubscriptionId` *id de l'abonnement*  
AZ CLI : `az account set --subscription` *id de l'abonnement*  

## Premier lancement du CLoud Shell
xxx  

## Afficher les informations de son compte de stockage Cloud Shell
PS : `Get-CloudDrive`  
AZ CLI : `xxx`  

## Utiliser un résultat précédent dans la commande (le pipe)
PS :  `xxx`  
AZ CLI :  `xxx`  

## Filtrer un retour de commande
PS :  `xxx`  
AZ CLI :  `xxx`  

## Créer une variable
PS :  `$unevaleur = "nom de ma VM"`  
AZ CLI :  `unevaleur="nom de ma VM"`  **il n'y a pas d'espace avant et après le symbole d'égalité** 

## Afficher une variable (affichage des variables créées précédemment)
PS :  `$unevaleur`  
AZ CLI :  `echo $unevaleur`  

## Utiliser une variable
PS :  `xxx`  
AZ CLI :  `xxx` 

## Utiliser la tabulation
PS :  `xxx`  
AZ CLI :  `xxx`  

## Mode interactif pour l'AZ CLI

