-- Database: library

-- DROP DATABASE library;
CREATE DATABASE library
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

    -- Table: public.editeurs

-- DROP TABLE public.editeurs;

CREATE TABLE IF NOT EXISTS public.editeurs
(
    id_editeur integer NOT NULL,
    nom character varying COLLATE pg_catalog."default" NOT NULL,
    ville character varying COLLATE pg_catalog."default",
    num_tel character varying COLLATE pg_catalog."default",
    email character varying COLLATE pg_catalog."default",
    CONSTRAINT editeurs_pkey PRIMARY KEY (id_editeur)
)

TABLESPACE pg_default;

ALTER TABLE public.editeurs
    OWNER to postgres;


    -- Table: public.employes

-- DROP TABLE public.employes;

CREATE TABLE IF NOT EXISTS public.employes
(
    id_employe integer NOT NULL,
    nom character varying COLLATE pg_catalog."default",
    prenom character varying COLLATE pg_catalog."default",
    email character varying COLLATE pg_catalog."default",
    birthday date,
    dateemp date,
    CONSTRAINT employes_pkey PRIMARY KEY (id_employe)
)

TABLESPACE pg_default;

ALTER TABLE public.employes
    OWNER to postgres;

    -- Table: public.leads

-- DROP TABLE public.leads;

CREATE TABLE IF NOT EXISTS public.leads
(
    id integer NOT NULL,
    name character varying COLLATE pg_catalog."default",
    CONSTRAINT leads_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.leads
    OWNER to postgres;

    -- Table: public.livres

-- DROP TABLE public.livres;

CREATE TABLE IF NOT EXISTS public.livres
(
    id_livre integer NOT NULL,
    id_editeur integer,
    titre character varying COLLATE pg_catalog."default",
    prix character varying COLLATE pg_catalog."default",
    categorie character varying COLLATE pg_catalog."default",
    nb_page integer,
    CONSTRAINT livres_pkey PRIMARY KEY (id_livre)
)

TABLESPACE pg_default;

ALTER TABLE public.livres
    OWNER to postgres;

    -- Table: public.membres

-- DROP TABLE public.membres;

CREATE TABLE IF NOT EXISTS public.membres
(
    num_carte integer NOT NULL,
    nom character varying COLLATE pg_catalog."default",
    prenom character varying COLLATE pg_catalog."default",
    adress_1 character varying COLLATE pg_catalog."default",
    adress_2 character varying COLLATE pg_catalog."default",
    ville character varying COLLATE pg_catalog."default",
    zipcode integer,
    birthday date,
    email character varying COLLATE pg_catalog."default",
    genre character varying COLLATE pg_catalog."default",
    num_tel character varying COLLATE pg_catalog."default",
    CONSTRAINT membres_pkey PRIMARY KEY (num_carte)
)

TABLESPACE pg_default;

ALTER TABLE public.membres
    OWNER to postgres;

-- Table: public.prets

-- DROP TABLE public.prets;

CREATE TABLE IF NOT EXISTS public.prets
(
    id_pret integer NOT NULL,
    id_livre integer,
    num_carte integer,
    id_employe integer,
    date_sortie date,
    date_restitution date,
    "penalit‚" double precision,
    CONSTRAINT prets_pkey PRIMARY KEY (id_pret)
)

TABLESPACE pg_default;

ALTER TABLE public.prets
    OWNER to postgres;