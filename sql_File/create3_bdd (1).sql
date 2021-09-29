
CREATE TABLE public.utilisateur (
                id INTEGER NOT NULL,
                nom VARCHAR(100) NOT NULL,
                CONSTRAINT utilisateur_pk PRIMARY KEY (id)
);


CREATE SEQUENCE public.ticket_numero_seq;

CREATE TABLE public.ticket (
                numero INTEGER NOT NULL DEFAULT nextval('public.ticket_numero_seq'),
                titre VARCHAR(300) NOT NULL,
                date TIMESTAMP NOT NULL,
                auteur_id INTEGER NOT NULL,
                CONSTRAINT ticket_pk PRIMARY KEY (numero)
);


ALTER SEQUENCE public.ticket_numero_seq OWNED BY public.ticket.numero;

ALTER TABLE public.ticket ADD CONSTRAINT utilisateur_ticket_fk
FOREIGN KEY (auteur_id)
REFERENCES public.utilisateur (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
