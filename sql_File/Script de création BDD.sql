BEGIN;


CREATE TABLE IF NOT EXISTS public.editeurs
(
    id_editeurs integer NOT NULL,
    nom character varying,
    ville character varying,
    num_tel character varying,
    email character varying,
    PRIMARY KEY (id_editeurs)
);

CREATE TABLE IF NOT EXISTS public.employes
(
    id_employe integer NOT NULL,
    nom character varying,
    prenom character varying,
    email character varying,
    birthday date,
    dateemp date,
    PRIMARY KEY (id_employe)
);

CREATE TABLE IF NOT EXISTS public.leads
(
    id integer NOT NULL,
    name character varying,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.livres
(
    id_livre integer NOT NULL,
    id_editeurs integer,
    titre character varying,
    prix character varying,
    categorie character varying,
    nb_page integer,
    PRIMARY KEY (id_livre)
);

CREATE TABLE IF NOT EXISTS public.membres
(
    num_carte integer NOT NULL,
    nom character varying,
    prenom character varying,
    adress_1 character varying,
    adress_2 character varying,
    ville character varying,
    zipcode integer,
    birthday date,
    email character varying,
    genre character varying,
    num_tel character varying,
    PRIMARY KEY (num_carte)
);

CREATE TABLE IF NOT EXISTS public.prets
(
    id_pret integer NOT NULL,
    id_livre integer,
    num_carte integer,
    id_employe integer,
    date_sortie date,
    date_restitution date,
    penalite double precision,
    PRIMARY KEY (id_pret)
);

ALTER TABLE public.livres
    ADD FOREIGN KEY (id_editeurs)
    REFERENCES public.editeurs (id_editeurs)
    NOT VALID;


ALTER TABLE public.prets
    ADD FOREIGN KEY (id_employe)
    REFERENCES public.employes (id_employe)
    NOT VALID;


ALTER TABLE public.prets
    ADD FOREIGN KEY (id_livre)
    REFERENCES public.livres (id_livre)
    NOT VALID;


ALTER TABLE public.prets
    ADD FOREIGN KEY (num_carte)
    REFERENCES public.membres (num_carte)
    NOT VALID;

END;