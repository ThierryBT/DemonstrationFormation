# DemonstrationFormation
Apprentissage Code Azure  / Apprentissage des déploiements  

Dans ces exercices et ces sources de codes, les deux outils de lignes de commandes sont utilisés. Powershell et AZ CLI.  
Dans chaque exercice, la même demande est lancée avec Powershell et l'AZ CLI.  

Pour la partie IAC (Infrastructure as code), 3 languages sont utilsés.  
ARM (Azure Resource Manager) et son format Json.  
Bicep et son format Bicep.  
Terraform et son format tf.  
Les exercices sont réalisés dans les 3 langages.  

L'éditeur de code utilisé est Visual Studio Code, outil gratuit à installer depuis ce lien : https://code.visualstudio.com/docs/setup/setup-overview  
La convention de nommage est détaillée dans le fichier exemples_de_base.md.  

## Le code
A la racine du repo se trouvent 3 fichiers d'exemples pour se faire la main sur quelques morceaux de codes.  

Comment démarrer avec le code sur le portail Azure  (exemples_de_base.md)  
Difficulté : ★☆☆☆☆

Comment démarrer avec le code depuis son poste de travail  (exemples_de_base_ise_distant.md)  
Difficulté : ★☆☆☆☆

Comment aller + loin avec le code sur le portail Azure (exemples_avancés.md)  
Difficulté : ★★★☆☆  

Comment intégrer du code Graph (exemples_graph.md)  
Difficulté : ★★★☆☆  

## Les fichiers de déploiements ou Templates.
Dans les répertoires se trouvent des exemples de déploiements Arm, Bicep et Terraform.  
Les répertoires _ressource sont des exemples de déploiements de ressources unitaires. Par exemple, un ressource groupe ou un Vnet. Ils sont organisés en 3 niveaux, les Niv2 et Niv3 sont plus complets présentent une utilisation plus avancée (paramètres, variables ...etc).  
Les répertoires sans niveau (ex : bicep_ressource) sont des exemples de bases. Ils sont en général utiles à l'apprentissage mais sont basic et ne profite pas des options avancées.  

Les répertoires _env sont des exemples de déploiements d'environnements. C'est à dire un ensemble de ressources. Par exemple,  RG + Vnet + Subnet dans le même fichier . Ils sont organisés en 3 niveaux, les Niv2 et Niv3 sont plus complets présentent une utilisation plus avancé (paramètres, variables, utilisation des valeurs précédentes, gestion des dépendances ...etc).  

## Les coquilles ou erreurs.
In progress  

## Avertissements.
- Les codes et templates sont testés mais je ne garantie pas leur fonctionnement sur tous les environnements.  
- Les ressources déployées sont facturées, l'utilisatrice / utilisateur prend en compte cette facturation et supprime les reSssources créées en fin d'exercice.  

## Les rubriques en cours(Xmind)
Ici atterissent les liens du Xmind qui ne sont pas encore alimentés. Merci de revenir régulièrement surle Xmind pour les dernières MAJ.    

## Licence
GNU General Public License v3.0  








