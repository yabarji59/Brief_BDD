
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
 