Requetes BDD Library

--Requette pour modifier la BDD

/** Update **/
UPDATE public.membres
	SET birthday='22/04/1982'
	WHERE num_carte=2577;
	
UPDATE public.livres
	SET categorie='Formation'
	WHERE titre='Yassen et les dévellopeuses Java';


--Requete pour supprimer ligne de la BDD

/** Delete **/ 
DELETE FROM public.employes
	WHERE id_employe=21;
	
DELETE FROM public.membres
	WHERE num_carte=2582;
	

--Requete pour effectuer une recherche à partir d'un nom.

/** Select **/
SELECT num_carte, nom, prenom, adress_1, adress_2, zipcode, ville, birthday, email, genre, num_tel
	FROM public.membres
	WHERE nom = 'DUPONT';

SELECT *
	FROM public.employes
	WHERE nom = 'BERMOUT';

--Requete pour effectuer une recherche à entre deux dates.

SELECT *
	FROM public.prets
	WHERE date_restitution 
	BETWEEN '01/08/2021' AND '01/09/2021';
	
SELECT nom, prenom, birthday
	FROM public.membres
	WHERE birthday 
	BETWEEN '01/01/1980' AND '31/12/1990';