CREATE VIEW vue_suivi_client
AS 
	SELECT 
cli_nom, cli_prenom, cli_telephone, cli_mail, cli_type, cli_coeff, emp_nom, emp_prenom, pos_libelle, emp_telephone, emp_mail 
FROM Client
JOIN Employe ON cli_id = emp_typ_client
JOIN poste ON pos_id = emp_pos_id