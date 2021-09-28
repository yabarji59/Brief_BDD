
--partie 1
CREATE USER leo  WITH   CREATEDB;
alter role leo SUPERUSER;
ALTER USER leo RENAME TO lea;
CREATE USER karima  WITH   CREATEDB;

CREATE DATABASE library
   WITH  OWNER = karima;

   CREATE TABLE leads (id INTEGER PRIMARY KEY, name VARCHAR);
   select * from leads; 

   --partie 2 

   CREATE TABLE editeur
 (id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  
    nom VARCHAR(100),
    ville VARCHAR(100),
    email VARCHAR(255),
    num_Tel VARCHAR(255));


    CREATE TABLE livres
 (id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    titre VARCHAR(100),
    prix float,
    categorie CHAR,
    nb_Page integer,
 editeur integer REFERENCES editeurs(id));

 CREATE TABLE membres
 (num_carte integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100),
  prenom VARCHAR(100),
    adress_1 VARCHAR(100),
  adress_2 VARCHAR(100),
   ville VARCHAR(100), 
  zipcode integer,
   birthday date,
  email VARCHAR(100),
  Num_Tel VARCHAR(100));


  CREATE TABLE employes
 (id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100),
  prenom VARCHAR(100),
    email VARCHAR(100),
  birthday date,
   DateEmp date);


   CREATE TABLE prets
 (id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_livre integer REFERENCES livres(id),
  num_carte integer REFERENCES membres(num_carte),
  id_employe integer REFERENCES employes(id),

date_sortie  date,
date_restitution date,
penalité  float);
 
--alimenter ma base 
INSERT INTO editeurs(
	 nom, ville, email, num_tel)
	VALUES ( 'karima', 'lille', 'saidaniikarima@gmail.com', '087968588588');

    INSERT INTO employes(
	 nom, prenom, email, birthday, dateemp)
	VALUES ('employe1', 'employe1', 'emailemploye@gmail.com','1991-08-08', '2020-09-09');

    INSERT INTO livres(
	 titre, prix, categorie, nb_page, editeur)
	VALUES ( 'gameofthrones', 55.6,'cat1', 300,1);


    INSERT INTO membres(
	 nom, prenom, adress_1, adress_2, ville, zipcode, birthday, email, num_tel)
	VALUES ( 'membre1', 'mem2', 'adresse1', 'adresse2', 'lille', 89698, '1990-08-08','email',9695055);


    INSERT INTO prets(
	 id_livre, num_carte, id_employe, date_sortie, date_restitution, "penalité")
	VALUES ( 1, 1, 1, '2020-06-06','2020-05-03', 77.9);


 --1 - REQUETE POUR MODIFIER LA BDD
 UPDATE employes
	SET  nom='employedujour'
	WHERE id=1;

 --2 - REQUETE POUR SUPPRIMER LIGNE DE BDD 
 DELETE FROM editeurs
	WHERE nom = 'karima6';

 --3 - REQUETE POUR EFFECTUER UNE RECHERCHE A PARTIR D'UN NOM
SELECT *
	FROM livres where titre ='gameofthrones';


-- 4 - REQUETE POUR EFFECTUER UNE RECHERCHE ENTRE DEUX DATES

SELECT *
	FROM prets where date_sortie between '2019-12-12' and now();

