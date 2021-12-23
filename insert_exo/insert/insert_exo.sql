-- 1. Afficher par ordre alphab�tique les villes de r�sidence des clients 
-- ainsi que le code (ou le nom) du pays.


-- On selectionne le nom du client, de sa ville et le nom du pays
-- On cr�er la jointure entre la table client et Pays via la cl� �trang�re cli_pay_id
-- On ordonne par liste ordre alphab�tique via le nom de ville

 SELECT cli_nom, cli_ville, pay_libelle FROM Client
 JOIN pays ON cli_pay_id = pay_id
 ORDER BY cli_ville ASC;

-- 2. Afficher les clients dont le coefficient est sup�rieur � 75.

-- On selectionne la table du client et on cr�er une condition sur cli_coeff sup�rieur � 75.

SELECT * FROM Client
WHERE cli_coeff > 75;

-- 3. Afficher la ville des clients professionnels vivant au Canada.

-- On selectionne cli_ville de la table client et pay_libelle de la table pays.
-- On cr�er la jointure entre la table client et pays via la cl� �trange cli_pays_id
-- On cr�er une condition pour afficher uniquement si le r�sultat de pay_libelle = Canada
-- Le r�sultat est ne revoit aucune ligne car il y a visiblement aucun Client venant du Canada

SELECT cli_ville, pay_libelle FROM Client
JOIN pays ON cli_pay_id = pay_id
WHERE pay_libelle = 'Canada';

-- 4. Afficher les nom, pr�nom et age des clients ag�s de plus de 50 ans.

-- On affiche le nom, pr�nom et date de naissance du client. On utilise une fonction qui permet d'afficher l'age du client avec la fonction 
-- DATEDIFF, la date de naissance du client est compar� � la date actuel.
-- On applique la condition pour que seul les clients de plus de 50 ans soit afficher, la condition est compar� en jour.


SELECT cli_nom, cli_prenom, cli_date_naissance, 
DATEDIFF(YEAR, cli_date_naissance,  CONVERT (date,GETDATE())) AS Age
FROM Client
WHERE DATEDIFF(day, cli_date_naissance, CONVERT (date,GETDATE()) ) > 18250
ORDER by cli_date_naissance;


-- 5. Afficher tous les employ�s du manager Stout Rahim.v

-- On selection la table Employe et lui donner un allias " Subordonner "
-- On joint la table Employe � elle m�me et on lui donne un allias "Sup�rieur"
-- La jointure se fait via la cl� Subordonner.emp_superieur_id et la cl� Sup�rieur.emp_id
-- On pose notre condition o� le nom du sup�rieur doit �tre = 'Stout' et le pr�nom = 'Rahim'
-- Le r�sultat ne ressort aucun ligne ce qui signifie que visiblement Stout Rahim ne manage aucun employ�.

SELECT * FROM Employe AS Subordonner 
JOIN Employe AS Sup�rieur ON Subordonner.emp_superieur_id = Sup�rieur.emp_id
WHERE Sup�rieur.emp_nom = 'Stout' AND Sup�rieur.emp_prenom = 'Rahim';

-- 6. Afficher les employ�s licenci�s depuis plus de 3 ans

-- On selectionne emp_nom, prenom de l'employ� et la date de sortie
-- On lui donne comme condition une fonction DATEDIF que l'on lui attribut comme param�tre (day, emp_date_sortie)
-- On ajout en param�tre la fonction CONVERT qui prend celle-ci le permettre date et une fonction GETDATE. 
-- Le but �tant de v�rifier compter le nombre de jour entre la date de licenement � aujourd'hui. On souhauite
-- afficher que les employ�s licenci�es depuis 3 ans, donc 1095 jours.On donc compl�te la condition par > 1095


SELECT emp_nom, emp_prenom, emp_date_sortie
FROM Employe
WHERE DATEDIFF(day, emp_date_sortie, CONVERT (date,GETDATE()) ) > 1095


-- 7. Afficher les produits dont le prix est sup�rieur � 100�

-- On selection la table produit
-- On pose la condition o� pro_prix doit �tre sup�rieur � 100

SELECT * FROM Produit
WHERE pro_prix > 100;

-- 8. Afficher les produits dont le stock est inf�rieur aux stock d'alerte.

-- On selection la table produit
-- On pose la condition ou pro_stock doit �tre inf�rieur � pro_stock_alerte

SELECT * FROM Produit
WHERE pro_stock < pro_stock_alerte;

-- 9 Afficher tous les produits de la cat�gorie "guitares". N'oubliez pas les sous-cat�gories.

-- On selection la cat�gorie
-- On pose la condition o� cat_nom doit �tre �gale � 'guitares' OU alors doit cat_parent doit �tre �gale � 24

SELECT * FROM Categorie
WHERE cat_nom = 'guitares' OR cat_parent = 24;

-- 10. Afficher les cat�gories des produits vendus par les fournisseurs du Chili.

-- On selection cat_nom de la table cat�gorie, pro_libelle de la table produit, pay_libelle de la table pays
-- On joint la table Categorie � la table produit via la cl� �trang�re pro_cat_id et cat_id
-- On joint la table Fournisseurs n�cessaire pour obtenir acc�der � la table pays via la cl� �trang�repro_fou_id et pro_id
-- On joint la table pays � la table Fournisseurs via la cl� �trang�re fou_pay_id et la cl� pay_id
-- On pose enfin notre condition pay_libelle = 'Chili'


SELECT cat_nom, pro_libelle, pay_libelle FROM Produit 
JOIN Categorie ON pro_cat_id = cat_id
JOIN Fournisseur ON pro_fou_id = pro_id
JOIN pays ON fou_pay_id = pay_id
WHERE pay_libelle = 'Chili'

-- 11 Afficher le catalogue des produits par cat�gorie, le nom des produits et de la cat�gorie doivent �tre affich�s. 


-- On selection pro_libelle de la table produit, et cat_nom de la table cat�gorie
-- On joint la table Catagorie � la table produit via la cl� �trange pro_cat_id et cat_id
-- On ordonne l'afichage par Categorie

SELECT pro_libelle, cat_nom FROM Produit
JOIN Categorie ON pro_cat_id = cat_id
ORDER by cat_nom;
