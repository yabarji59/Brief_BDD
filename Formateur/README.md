# Simplon.co
## _Brief Base de Données_

Le but de l'exercice est de vous mettre en condition afin d'appliquer les connaissance acquise au cours du module Merise/UML.
Au cours de ce brief les notions suivantes du referentiel seront traitées :

- Création, modification et suppression d’une base de données
  * Réalisation et exécution d’un script de gestion de base de données à
l'aide de l’environnement intégré de développement
  * Génération d’un script de gestion de la base de données à l'aide de
l'outil de modélisation
- Optimisation de la base de données : indexation, vues, requêtes avancées,
procédures stockées, etc.
- Sécurisation des accès à la base de données
- Programmer les scripts d'alimentation de la base
- Mise en place d’un processus de sauvegarde et restauration de la bases de
données
- Organisation des données d’une base de données non relationnelles
- Création des requêtes de recherches

## Features
### 1er Partie
Activités et tâches
- Importer le projet avec git sur votre depot Local [git-repo-url].
- Creer un user Tom sur pgadmin et mettre role:
  *  superuser
  *  creation de database
- Creer un user Leo en ligne de commande en mode interactive avec role :
  *  non superuser
  *  creation de database
- Modifier role et passer en superuser
- Changer le nom du user de Leo à Lea
- Creer une database Librairie en specifiant que vous en etes le owner.
- Se connecter a la BDD
- Creer la table lead  avec cette commande :
 ```sh
CREATE TABLE leads (id INTEGER PRIMARY KEY, name VARCHAR);
```
- Afficher la table et faire un screenshot dans dossier ScreenShot

### 2nd Partie
> Dans cette partie le but sera de manipuler les differents outils sgbd pour creer et manipuler Base de données.

#### Create database nommé LIBRARY
- Faire le MLD

    Les proprietés des differentes tables sont definis ci-dessous:
    ##### Table editeurs
    - id_editeur type entier (pk)
    - nom type charactere
    - ville type charactere
    - num_Tel type charactere
    - email type charactere
    
    ##### Table livres
    - id_livre type entier (pk)
    - id_editeur type entier (fk)
    - titre type charactere
    - prix type charactere
    - categorie type charactere
    - nb_Page type entier
    
    ##### Table membres
    - num_carte type entier (pk)
    - nom type charactere,
    - prenom type charactere,
    - adress_1 type charactere,
    - adress_2 type charactere, (peut etre null)
    - ville type charactere,
    - zipcode type entier,
    - birthday type date,
    - email type charactere,
    - genre type charactere,
    - Num_Tel type charactere,
    
    ##### Table employes
    - id_employe type entier pk
    - nom type charactere
    - prenom type charactere
    - email type charactere
    - birthday type date
    - DateEmp type date
    
    ##### Table prets
    - id_pret type entier (pk)
    - id_livre type entier (fk)
    - num_carte type entier (fk)
    - id_employe type entier (fk)
    - date_sortie type date
    - date_restitution type date
    - penalité type flottant

- Generer le code sql
- Alimenter la BDD
- Requette pour modifier la BDD
- Requete pour supprimer ligne de la BDD

## Documentation

N'hesitez pas utiliser la doc officiel de postgresql
Ainsi que toute les ressource donnés pendant le module.

- [Docs officiel Postgresql] - HTML enhanced for web apps!

> Note: N'oubliez pas de pusher votre code dans vos branches respectives `!!! Attention à ne surtout pas dans la develop et encore moins dans la branche main !!!`.

## License

MIT

**Free Software, Hell Yeah!**

   [git-repo-url]: <https://github.com/yabarji59/Brief_BDD.git>
   [Docs officiel postgresql]: <https://docs.postgresql.fr/13/>
