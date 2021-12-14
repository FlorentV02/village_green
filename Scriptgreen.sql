 Use village_green;

/* create database "village_green"; */



CREATE TABLE pays(
	pay_id			INT NOT NULL Primary Key,
	pay_libelle		VARCHAR(50) NOT NULL,
);


 
  CREATE TABLE categorie (
	cat_id			INT NOT NULL ,
	cat_nom			VARCHAR(50) NOT NULL UNIQUE,
	cat_parent		INT,

	CONSTRAINT		PK_categorie PRIMARY KEY (cat_id),
	CONSTRAINT		FK_catagorie_categorie FOREIGN KEY(cat_parent) REFERENCES categorie(cat_id)
); 

   CREATE TABLE Poste(
   pos_id INT,
   pos_libelle VARCHAR(255)  NOT NULL,
   pos_description VARCHAR(255)  NOT NULL,
   PRIMARY KEY(pos_id)
);




  CREATE TABLE livraison(
	liv_id INT PRIMARY KEY,
	liv_d_reelle DATE,
	liv_d_expedition DATE,
	liv_d_preparation DATE,
);




 CREATE TABLE employe(
   emp_id INT NOT NULL,
   pos_id INT NOT NULL,
   emp_date_entree DATE NOT NULL,
   emp_date_sortie DATE,
   emp_nom VARCHAR(255)  NOT NULL,
   emp_prenom VARCHAR(255)  NOT NULL,
   emp_num_secu_social VARCHAR(255) NOT NULL,
   emp_sexe VARCHAR(1)  NOT NULL,
   emp_date_de_naissance DATE NOT NULL,
   emp_adresse VARCHAR(255)  NOT NULL,
   emp_adresse_suite VARCHAR(255)  NOT NULL,
   emp_cp INT NOT NULL,
   emp_ville VARCHAR(255)  NOT NULL,
   emp_telephone VARCHAR(15) NOT NULL,
   emp_mail VARCHAR(255)  NOT NULL,
   emp_type_client BIT,
   emp_motdepasse VARCHAR(50),
   emp_login VARCHAR(60),
   emp_id_1 INT,
 


   CONSTRAINT pk_employe PRIMARY KEY(emp_id),
   CONSTRAINT fk_emp_employe FOREIGN KEY(emp_id_1) REFERENCES employe(emp_id),
   CONSTRAINT fk_pos_employe FOREIGN KEY(pos_id) REFERENCES Poste(pos_id)
);





	CREATE TABLE fournisseurs(
	four_id					INT NOT NULL,
	four_nom				VARCHAR(255) NOT NULL,
	four_adresse			VARCHAR(255) NOT NULL,
	four_adresse_suite		VARCHAR(255) NOT NULL,
	four_cp					VARCHAR(255) NOT NULL,
	four_village			VARCHAR(255) NOT NULL,
	four_telephone			VARCHAR(17) NOT NULL,
	four_mail				VARCHAR(255) NOT NULL,
	pay_id					INT NOT NULL,
	
	CONSTRAINT		PK_fournisseurs PRIMARY KEY (four_id),
	CONSTRAINT		FK_pay_fournisseurs FOREIGN KEY(pay_id) REFERENCES pays(pay_id)

); 








	CREATE TABLE client(
	cli_id							INT NOT NULL,
	cli_nom							VARCHAR(255) NOT NULL,
	cli_sexe						VARCHAR(1) NOT NULL,
	cli_date_de_naissance			DATE NOT NULL,
	cli_adresse_facturation			VARCHAR(255) NOT NULL,
	cli_adresse_livraison			VARCHAR(255) NOT NULL,
	cli_ville						VARCHAR(255) NOT NULL,
	cli_telephone					VARCHAR(255) NOT NULL,
	cli_mail						VARCHAR(255) NOT NULL,
	cli_mot_de_passe				VARCHAR(60) NOT NULL,
	cli_login						VARCHAR(50) NOT NULL,
	cli_type						BIT NOT NULL,
	cli_coeff						DECIMAL(4,2) NOT NULL,
	cli_reference					VARCHAR(10) NOT NULL,
	pay_id							INT NOT NULL,
	
	CONSTRAINT		PK_client PRIMARY KEY (cli_id),
	CONSTRAINT		FK_pay_client FOREIGN KEY(pay_id) REFERENCES pays(pay_id)

); 




	CREATE TABLE produit(
	pro_id							INT NOT NULL,
	pro_libelle						VARCHAR(255) NOT NULL,
	pro_description					VARCHAR(max) NOT NULL,
	pro_prix						DECIMAL(7,2) NOT NULL,
	pro_ref							VARCHAR(255) NOT NULL,
	pro_stock						INT NOT NULL,
	pro_stock_alerte				INT NOT NULL,
	pro_couleur						VARCHAR(100) NOT NULL,
	pro_photo						VARCHAR(255) NOT NULL,
	pro_date_ajout					DATE NOT NULL,
	pro_date_modif					DATE NULL,
	pro_bloque						BIT NOT NULL,
	four_id							INT NOT NULL,
	pay_id							INT NOT NULL,
	
	CONSTRAINT		PK_produit PRIMARY KEY (pro_id),
	CONSTRAINT		FK_four_produit FOREIGN KEY(four_id) REFERENCES fournisseurs(four_id),
	CONSTRAINT		FK_pay_produit FOREIGN KEY(pay_id) REFERENCES pays(pay_id)

);




		CREATE TABLE commande(
	com_id					INT NOT NULL,
	com_ref					VARCHAR(255) NOT NULL,
	com_remise				DECIMAL(7,2) NOT NULL,
	com_date				DATE NOT NULL,
	com_mode_paiement		VARCHAR(255) NOT NULL,
	com_date_reglement		DATE NULL,
	com_status				VARCHAR(255) NOT NULL,
	cli_id					INT NOT NULL,

	CONSTRAINT		PK_commande PRIMARY KEY (com_id),
	CONSTRAINT		FK_cli_commande FOREIGN KEY (cli_id) REFERENCES client(cli_id),

);






 CREATE TABLE ligne_de_commande(
   lig_id INT,
   lig_quantite INT NOT NULL,
   lig_remise DECIMAL(7,2) NOT NULL,
   pro_id INT NOT NULL,
   com_id INT NOT NULL,

   CONSTRAINT Pk_ligne_de_commande PRIMARY KEY(lig_id),
   CONSTRAINT Fk_lig_produit FOREIGN KEY(pro_id) REFERENCES produit(pro_id),
   CONSTRAINT Fk_lig_commande FOREIGN KEY(com_id) REFERENCES commande(com_id)
);





 CREATE TABLE appartenir(
   pro_id INT,
   cat_id INT,
   CONSTRAINT fk_pro_appartenir FOREIGN KEY(pro_id) REFERENCES produit(pro_id),
   CONSTRAINT fk_cat_appartenir FOREIGN KEY(cat_id) REFERENCES categorie(cat_id)
); 





 CREATE TABLE suivre(
   cli_id INT,
   emp_id INT,

   CONSTRAINT PK_Suivre				PRIMARY KEY (cli_id,emp_id),
   CONSTRAINT fk_cli_suivre FOREIGN KEY(cli_id) REFERENCES client(cli_id),
   CONSTRAINT fk_emp_suivre FOREIGN KEY(emp_id) REFERENCES employe(emp_id)
);











/*CREATE TABLE preparer(
   com_id INT,
   liv_id INT,
   CONSTRAINT fk_com_preparer FOREIGN KEY(com_id) REFERENCES commande(com_id),
   CONSTRAINT fk_liv_preparer FOREIGN KEY(liv_id) REFERENCES livraison(liv_id)
);

*/	



/*   CREATE TABLE contenir(
   lig_id INT,
   liv_id INT,
   quantite INT NOT NULL,
   CONSTRAINT fk_com_contenir FOREIGN KEY(lig_id) REFERENCES ligne_de_commande(lig_id),
   CONSTRAINT fk_liv_contenir FOREIGN KEY(liv_id) REFERENCES livraison(liv_id)
);

*/















