-- vue_suivi_client: nom, prenom du client, telephone, email, type du client, coefficient, nom , prenom de l'employe, nom du poste, telephone, email


-- CREATE VIEW de la vue_suivi_client

/* CREATE VIEW vue_suivi_client
AS 
	SELECT cli_nom, cli_prenom, cli_telephone, cli_mail, cli_type, cli_coeff, emp_nom, emp_prenom, pos_libelle, emp_telephone, emp_mail
	FROM Client
	JOIN Suivre ON sui_emp_id = cli_id 
	JOIN Employe ON emp_id = sui_emp_id
	JOIN poste ON pos_id = emp_pos_id


GO 
*/

-- SELECT de la vue_suivi_client 

/*	SELECT * FROM vue_suivi_client

	SELECT cli_nom, cli_prenom, cli_telephone, cli_mail, cli_type, cli_coeff, emp_nom, emp_prenom, pos_libelle, emp_telephone, emp_mail
	FROM Client
	JOIN Suivre ON sui_emp_id = cli_id 
	JOIN Employe ON emp_id = sui_emp_id
	JOIN poste ON pos_id = emp_pos_id
*/

-- vue_catalogue: catégorie, nom du produit, description, reference, fournisseur, prix, stock, stock_alert, bloque

/* CREATE VIEW vue_catalogue
AS
	SELECT cat_nom, pro_libelle, pro_description, pro_ref, fou_nom, pro_prix, pro_stock, pro_stock_alerte, pro_bloque FROM Categorie
	JOIN Produit ON cat_id = pro_cat_id
	JOIN Fournisseur ON fou_id = pro_fou_id;

GO
*/

-- SELECT de la vue_catalagoue

-- SELECT * FROM vue_catalogue


-- vue_suivi_livraison: nom, prenom du client, reference commande, adresse facturation, adresse livraison, date commande et livraison,
--						mode de paiement, nom des produits, quantité, statut de livraison

/* 
CREATE VIEW vue_suivi_livraison
AS 
SELECT cli_nom, cli_prenom, com_ref, cli_adresse_fact, cli_adresse_livr, com_date_paiement, liv_date_exp, com_mode_paiement, pro_libelle, lig_quantite, com_status FROM Client
JOIN Commande ON Commande.cli_id = Client.cli_id
JOIN Livraison ON liv_com_id = com_id
JOIN LigneDeCommande ON lig_com_id = com_id
JOIN Produit ON pro_id = lig_pro_id;

GO

*/

SELECT * FROM vue_suivi_livraison