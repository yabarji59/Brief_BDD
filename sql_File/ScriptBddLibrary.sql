
CREATE TABLE public.employes (
                id_employe INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                prenom VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                birthday DATE NOT NULL,
                DateEmp DATE NOT NULL,
                CONSTRAINT employes_pk PRIMARY KEY (id_employe)
);


CREATE TABLE public.membres (
                num_carte INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                prenom VARCHAR NOT NULL,
                adress_1 VARCHAR NOT NULL,
                adress_2 VARCHAR,
                zipcode VARCHAR NOT NULL,
                ville VARCHAR NOT NULL,
                birthday DATE NOT NULL,
                email VARCHAR NOT NULL,
                genre VARCHAR NOT NULL,
                Num_tel VARCHAR NOT NULL,
                CONSTRAINT membres_pk PRIMARY KEY (num_carte)
);


CREATE TABLE public.editeurs (
                id_editeur INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                ville VARCHAR NOT NULL,
                num_Tel VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                CONSTRAINT editeurs_pk PRIMARY KEY (id_editeur)
);


CREATE TABLE public.livres (
                id_livre INTEGER NOT NULL,
                titre VARCHAR NOT NULL,
                prix VARCHAR NOT NULL,
                categorie VARCHAR NOT NULL,
                nb_Page INTEGER NOT NULL,
                id_editeur INTEGER NOT NULL,
                CONSTRAINT livres_pk PRIMARY KEY (id_livre)
);


CREATE TABLE public.prets (
                id_pret INTEGER NOT NULL,
                date_sortie DATE NOT NULL,
                date_restitution DATE NOT NULL,
                penalité REAL NOT NULL,
                id_employe INTEGER NOT NULL,
                num_carte INTEGER NOT NULL,
                id_livre INTEGER NOT NULL,
                CONSTRAINT prets_pk PRIMARY KEY (id_pret)
);


ALTER TABLE public.prets ADD CONSTRAINT employes_prets_fk
FOREIGN KEY (id_employe)
REFERENCES public.employes (id_employe)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.prets ADD CONSTRAINT membres_prets_fk
FOREIGN KEY (num_carte)
REFERENCES public.membres (num_carte)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.livres ADD CONSTRAINT editeurs_livres_fk
FOREIGN KEY (id_editeur)
REFERENCES public.editeurs (id_editeur)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.prets ADD CONSTRAINT livres_prets_fk
FOREIGN KEY (id_livre)
REFERENCES public.livres (id_livre)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
