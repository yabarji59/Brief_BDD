
CREATE SEQUENCE public.employe_id_employe_seq;

CREATE TABLE public.employe (
                id_employe INTEGER NOT NULL DEFAULT nextval('public.employe_id_employe_seq'),
                nom VARCHAR NOT NULL,
                prenom VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                birthday DATE NOT NULL,
                date_emp DATE NOT NULL,
                CONSTRAINT employe_pk PRIMARY KEY (id_employe)
);


ALTER SEQUENCE public.employe_id_employe_seq OWNED BY public.employe.id_employe;

CREATE SEQUENCE public.membre_num_carte_seq;

CREATE TABLE public.membre (
                num_carte INTEGER NOT NULL DEFAULT nextval('public.membre_num_carte_seq'),
                nom VARCHAR NOT NULL,
                prenom VARCHAR NOT NULL,
                adresse_1 VARCHAR NOT NULL,
                adresse_2 VARCHAR,
                ville VARCHAR NOT NULL,
                zipcode VARCHAR(5) NOT NULL,
                birthday DATE NOT NULL,
                email VARCHAR NOT NULL,
                genre VARCHAR(2),
                num_tel VARCHAR NOT NULL,
                CONSTRAINT membre_pk PRIMARY KEY (num_carte)
);


ALTER SEQUENCE public.membre_num_carte_seq OWNED BY public.membre.num_carte;

CREATE SEQUENCE public.editeur_id_editeur_seq;

CREATE TABLE public.editeur (
                id_editeur INTEGER NOT NULL DEFAULT nextval('public.editeur_id_editeur_seq'),
                nom VARCHAR NOT NULL,
                ville VARCHAR NOT NULL,
                num_tel VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                CONSTRAINT editeur_pk PRIMARY KEY (id_editeur)
);


ALTER SEQUENCE public.editeur_id_editeur_seq OWNED BY public.editeur.id_editeur;

CREATE SEQUENCE public.livre_id_livre_seq;

CREATE TABLE public.livre (
                id_livre INTEGER NOT NULL DEFAULT nextval('public.livre_id_livre_seq'),
                titre VARCHAR NOT NULL,
                prix NUMERIC(6,2) NOT NULL,
                categorie VARCHAR NOT NULL,
                nb_pages INTEGER NOT NULL,
                id_editeur INTEGER NOT NULL,
                CONSTRAINT livre_pk PRIMARY KEY (id_livre)
);


ALTER SEQUENCE public.livre_id_livre_seq OWNED BY public.livre.id_livre;

CREATE SEQUENCE public.pret_id_pret_seq;

CREATE TABLE public.pret (
                id_pret INTEGER NOT NULL DEFAULT nextval('public.pret_id_pret_seq'),
                num_carte INTEGER NOT NULL,
                id_livre INTEGER NOT NULL,
                id_employe INTEGER NOT NULL,
                date_sortie DATE NOT NULL,
                date_retour DATE NOT NULL,
                penalite NUMERIC,
                CONSTRAINT pret_pk PRIMARY KEY (id_pret)
);


ALTER SEQUENCE public.pret_id_pret_seq OWNED BY public.pret.id_pret;

ALTER TABLE public.pret ADD CONSTRAINT employe_pret_fk
FOREIGN KEY (id_employe)
REFERENCES public.employe (id_employe)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.pret ADD CONSTRAINT membre_pret_fk
FOREIGN KEY (num_carte)
REFERENCES public.membre (num_carte)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.livre ADD CONSTRAINT editeur_livre_fk
FOREIGN KEY (id_editeur)
REFERENCES public.editeur (id_editeur)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.pret ADD CONSTRAINT livre_pret_fk
FOREIGN KEY (id_livre)
REFERENCES public.livre (id_livre)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
