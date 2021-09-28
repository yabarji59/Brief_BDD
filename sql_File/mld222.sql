
CREATE SEQUENCE public.employes_id_employe_seq;

CREATE TABLE public.employes (
                id_employe INTEGER NOT NULL DEFAULT nextval('public.employes_id_employe_seq'),
                nom VARCHAR NOT NULL,
                prenom VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                birthday DATE NOT NULL,
                DateEmp DATE NOT NULL,
                CONSTRAINT employes_pk PRIMARY KEY (id_employe)
);


ALTER SEQUENCE public.employes_id_employe_seq OWNED BY public.employes.id_employe;

CREATE SEQUENCE public.membres_num_carte_seq;

CREATE TABLE public.membres (
                num_carte INTEGER NOT NULL DEFAULT nextval('public.membres_num_carte_seq'),
                nom VARCHAR NOT NULL,
                prenom VARCHAR NOT NULL,
                adresse_1 VARCHAR NOT NULL,
                adresse_2 VARCHAR,
                ville VARCHAR NOT NULL,
                zipcode INTEGER NOT NULL,
                birthday DATE NOT NULL,
                email VARCHAR NOT NULL,
                genre VARCHAR NOT NULL,
                Num_Tel VARCHAR NOT NULL,
                CONSTRAINT membres_pk PRIMARY KEY (num_carte)
);


ALTER SEQUENCE public.membres_num_carte_seq OWNED BY public.membres.num_carte;

CREATE SEQUENCE public.editeurs_id_editeur_seq;

CREATE TABLE public.editeurs (
                id_editeur INTEGER NOT NULL DEFAULT nextval('public.editeurs_id_editeur_seq'),
                nom VARCHAR NOT NULL,
                ville VARCHAR NOT NULL,
                num_tel VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                CONSTRAINT editeurs_pk PRIMARY KEY (id_editeur)
);


ALTER SEQUENCE public.editeurs_id_editeur_seq OWNED BY public.editeurs.id_editeur;

CREATE SEQUENCE public.livres_id_livre_seq;

CREATE TABLE public.livres (
                id_livre INTEGER NOT NULL DEFAULT nextval('public.livres_id_livre_seq'),
                id_editeur INTEGER NOT NULL,
                titre INTEGER NOT NULL,
                prix REAL NOT NULL,
                categorie VARCHAR NOT NULL,
                nb_Page INTEGER NOT NULL,
                CONSTRAINT livres_pk PRIMARY KEY (id_livre)
);


ALTER SEQUENCE public.livres_id_livre_seq OWNED BY public.livres.id_livre;

CREATE SEQUENCE public.prets_id_pret_seq;

CREATE TABLE public.prets (
                id_pret INTEGER NOT NULL DEFAULT nextval('public.prets_id_pret_seq'),
                id_livre INTEGER NOT NULL,
                num_carte INTEGER NOT NULL,
                id_employe INTEGER NOT NULL,
                date_sortie DATE NOT NULL,
                date_restitution DATE NOT NULL,
                penalite REAL NOT NULL,
                CONSTRAINT prets_pk PRIMARY KEY (id_pret)
);


ALTER SEQUENCE public.prets_id_pret_seq OWNED BY public.prets.id_pret;

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
