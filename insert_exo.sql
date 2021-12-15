-- 1. Afficher par ordre alphabétique les villes de résidence des clients 
-- ainsi que le code (ou le nom) du pays.


-- On selectionne le nom du client, de sa ville et le nom du pays
-- On créer la jointure entre la table client et Pays via la clé étrangère cli_pay_id
-- On ordonne par liste ordre alphabétique via le nom de ville

 SELECT cli_nom, cli_ville, pay_libelle FROM Client
 JOIN pays ON cli_pay_id = pay_id
 ORDER BY cli_ville ASC;

-- 2. Afficher les clients dont le coefficient est supérieur à 75.

-- On selectionne la table du client et on créer une condition sur cli_coeff supérieur à 75.

SELECT * FROM Client
WHERE cli_coeff > 75;

-- 3. Afficher la ville des clients professionnels vivant au Canada.

-- On selectionne cli_ville de la table client et pay_libelle de la table pays.
-- On créer la jointure entre la table client et pays via la clé étrange cli_pays_id
-- On créer une condition pour afficher uniquement si le résultat de pay_libelle = Canada
-- Le résultat est ne revoit aucune ligne car il y a visiblement aucun Client venant du Canada

SELECT cli_ville, pay_libelle FROM Client
JOIN pays ON cli_pay_id = pay_id
WHERE pay_libelle = 'Canada';

-- 4. Afficher les nom, prénom et age des clients agés de plus de 50 ans.

-- On affiche le nom, prénom et date de naissance du client. On utilise une fonction qui permet d'afficher l'age du client avec la fonction 
-- DATEDIFF, la date de naissance du client est comparé à la date actuel.
-- On applique la condition pour que seul les clients de plus de 50 ans soit afficher, la condition est comparé en jour.


SELECT cli_nom, cli_prenom, cli_date_naissance, 
DATEDIFF(YEAR, cli_date_naissance,  CONVERT (date,GETDATE())) AS Age
FROM Client
WHERE DATEDIFF(day, cli_date_naissance, CONVERT (date,GETDATE()) ) > 18250
ORDER by cli_date_naissance;



-- 5. Afficher tous les employés du manager Stout Rahim.v

-- On selection la table Employe et lui donner un allias " Subordonner "
-- On joint la table Employe à elle même et on lui donne un allias "Supérieur"
-- La jointure se fait via la clé Subordonner.emp_superieur_id et la clé Supérieur.emp_id
-- On pose notre condition où le nom du supérieur doit être = 'Stout' et le prénom = 'Rahim'
-- Le résultat ne ressort aucun ligne ce qui signifie que visiblement Stout Rahim ne manage aucun employé.




SELECT * FROM Employe AS Subordonner 
JOIN Employe AS Supérieur ON Subordonner.emp_superieur_id = Supérieur.emp_id
WHERE Supérieur.emp_nom = 'Stout' AND Supérieur.emp_prenom = 'Rahim';

-- 6. Afficher les employés ayant plus de 5 ans d'ancienneté./

-- On affiche le nom, prenom, date d'entrée de l'employe
-- On applique la condition, si la date d'entrée de l'employé à 1825 (5ans) de différence par rapport à la date d'aujourd'hui, alors le résultat est
-- afficher

SELECT emp_nom, emp_prenom, emp_date_entree
FROM Employe
WHERE DATEDIFF(day, emp_date_entree, CONVERT (date,GETDATE()) ) > 1825


-- 7. Afficher les employés licenciés depuis plus de 3 ans

-- On selectionne emp_nom, prenom de l'employé et la date de sortie
-- On lui donne comme condition une fonction DATEDIF que l'on lui attribut comme paramètre (day, emp_date_sortie)
-- On ajout en paramètre la fonction CONVERT qui prend celle-ci le permettre date et une fonction GETDATE. 
-- Le but étant de vérifier compter le nombre de jour entre la date de licenement à aujourd'hui. On souhauite
-- afficher que les employés licenciées depuis 3 ans, donc 1095 jours.On donc complète la condition par > 1095


SELECT emp_nom, emp_prenom, emp_date_sortie
FROM Employe
WHERE DATEDIFF(day, emp_date_sortie, CONVERT (date,GETDATE()) ) > 1095


-- 8. Afficher les produits dont le prix est supérieur à 100€

-- On selection la table produit
-- On pose la condition où pro_prix doit être supérieur à 100

SELECT * FROM Produit
WHERE pro_prix > 100;

-- 9. Afficher les produits dont le stock est inférieur aux stock d'alerte.

-- On selection la table produit
-- On pose la condition ou pro_stock doit être inférieur à pro_stock_alerte

SELECT * FROM Produit
WHERE pro_stock < pro_stock_alerte;

-- 10 Afficher tous les produits de la catégorie "guitares". N'oubliez pas les sous-catégories.

-- On selection la catégorie
-- On pose la condition où cat_nom doit être égale à 'guitares' OU alors doit cat_parent doit être égale à 24

SELECT * FROM Categorie
WHERE cat_nom = 'guitares' OR cat_parent = 24;

-- 11. Afficher les catégories des produits vendus par les fournisseurs du Chili.

-- On selection cat_nom de la table catégorie, pro_libelle de la table produit, pay_libelle de la table pays
-- On joint la table Categorie à la table produit via la clé étrangère pro_cat_id et cat_id
-- On joint la table Fournisseurs nécessaire pour obtenir accéder à la table pays via la clé étrangère pro_fou_id et pro_id
-- On joint la table pays à la table Fournisseurs via la clé étrangère fou_pay_id et la clé pay_id
-- On pose enfin notre condition pay_libelle = 'Chili'

/* SELECT pro_id, pro_libelle, fou_id, cat_id, cat_nom, pay_libelle FROM Produit
JOIN Fournisseur ON pro_fou_id =  fou_id
JOIN Categorie ON pro_cat_id = cat_id
JOIN pays ON pay_id = fou_pay_id
JOIN 
WHERE pay_libelle = 'Chili';
*/

SELECT fou_id, fou_nom, fou_pay_id, pay_libelle, pro_fou_id, pro_id, pro_libelle, pro_cat_id, cat_nom
FROM Fournisseur
JOIN pays ON pay_id = fou_pay_id
JOIN Produit ON pro_fou_id = fou_id
JOIN Categorie ON cat_id = pro_cat_id
WHERE pay_libelle ='Chili';



-- JOIN Categorie ON pro_fou_id = fou_id
-- JOIN pays ON cat_id = pro_cat_id


/*SELECT cat_id, cat_nom, fou_id, fou_nom, fou_pay_id, pay_libelle FROM Categorie 
JOIN Fournisseur ON fou_id = cat_id
JOIN pays ON fou_pay_id = pay_id
WHERE pay_libelle = 'Chili'

SELECT fou_id FROM Fournisseur
WHERE fou_pay_id = 45;*/

--  Afficher le catalogue des produits par catégorie, le nom des produits et de la catégorie doivent être affichés. 


-- On selection pro_libelle de la table produit, et cat_nom de la table catégorie
-- On joint la table Catagorie à la table produit via la clé étrange pro_cat_id et cat_id
-- On ordonne l'afichage par Categorie

SELECT pro_libelle, cat_nom FROM Produit
JOIN Categorie ON pro_cat_id = cat_id
ORDER by cat_nom;
