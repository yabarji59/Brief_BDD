--Jeux de données BDD Library


/** Table editeurs **/
INSERT INTO public.editeurs(
	id_editeur, nom, ville, num_tel, email)
	VALUES 
	(1, 'DUBOIS Elvis', 'Nantes', '0785632514', 'dubois.elvis@libraryBdd.eu'),
	(2, 'DUBOIS Juliette', 'Lyon', '0785632522', 'dubois.juliette@libraryBdd.eu'),
	(3, 'DUBOIS Toto', 'Paris', '0785632888', 'dubois.toto@libraryBdd.eu');
	
	
/** Table livres **/
INSERT INTO public.livres(
	id_livre, titre, prix, categorie, nb_page, id_editeur)
	VALUES 
	(55, 'Les aventures des développeuses Java','80 €', 'Aventure', 2000, 2),
	(54, 'Les aventures des développeuses Python','75 €', 'Aventure', 248, 2),
	(58, 'Yassen et les dévellopeuses Java', '80 €', 'Aventure', 2500, 1);
	
/** Table membres **/
INSERT INTO public.membres(
	num_carte, nom, prenom, adress_1, adress_2, zipcode, ville, birthday, email, genre, num_tel)
	VALUES 
	(2587, 'DUPONT', 'Alan', '81 rue du bonheur 59000 Lille', null, 'DZ4785', 'Lille', '25/04/1985', 'dupont.alan@yahoo.be', 'M', '0758235654'),
	(2582, 'DUPOND', 'Christine', '24 rue de la liberté 59800 Lille', null, 'DZ4725', 'Lille', '10/11/1975', 'dupond.christine@yahoo.fr', 'F', '0658231236'),
	(2584, 'CUVELIER', 'Jean', '53 Boulevard Php 59000 Lille', null, 'DZ7585', 'Lille', '27/04/1990', 'cuvelier.jean@yahoo.be', 'M', '0688735654');
	
/** Table employes **/
INSERT INTO public.employes(
	id_employe, nom, prenom, email, birthday, dateemp)
	VALUES 
	(21, 'VILIERS', 'Jojo', 'viliersjo@libraryBdd.eu', '12/08/1960', '01/01/2010'),
	(15, 'BERMOUT', 'Anne', 'anne.bermout@libraryBdd.eu', '15/08/1990', '01/01/2010');

/** Table prets **/
INSERT INTO public.prets(
	id_pret, date_sortie, date_restitution, "penalité", id_employe, num_carte, id_livre)
	VALUES 
	(17, '18/07/2021', '05/08/2021', 80.00, 15, 2587, 58),
	(08, '21/08/2021', '15/09/2021', 00.00, 15, 2584, 58);