INSERT INTO public.livres(
	id_livre, id_editeurs, titre, prix, categorie, nb_page)
	VALUES (1, 1, 'Petit Prince', '35', 'Fiction', 50);

INSERT INTO public.leads(
	id, name)
	VALUES (1, 'Amira');

INSERT INTO public.employes(
	id_employe, nom, prenom, email, birthday, dateemp)
	VALUES (2, 'Davesne', 'Cecilia', 'd.cecilia@yahoo.com', '23/03/1993', '31/05/2005');

INSERT INTO public.editeurs(
	id_editeurs, nom, ville, num_tel, email)
	VALUES (1, 'Nsangou', 'Lille', 0766998277, 'kikllamap@mdlha.com');

INSERT INTO public.membres(
	num_carte, nom, prenom, adress_1, adress_2, ville, zipcode, birthday, email, genre, num_tel)
	VALUES (4356, 'Henry', 'Justine', '15 rue nationale', '279 rue solferino', 'Lille', 59000, '23/05/1993', 'j.henry@gmail.com', 'feminin', '0646397877');

INSERT INTO public.prets(
	id_pret, id_livre, num_carte, id_employe, date_sortie, date_restitution, penalite)
	VALUES (1, 1, 4356, 2, '04/05/2007', '23/06/2007', 35);