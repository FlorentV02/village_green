Liste des données 

    • Fournisseur (constructeur, importateur)
    • Catégorie
    • Sous catégorie
    • Stock
    • Libellé court 
    • Libellé Long, Description
    • Référence fournisseur
    • Prix d’achat 
    • Photo
    • Catalogue de produit
    • Produit actif à la vente ou non
    • Prix de vente HTT
    • Commercial 
    • Clients particuliers
    • Clients professionnels
    • Paiement 
    • Noté le paiement en différé ou non
    • Facture
    • Commande
    • Référence Client
    • Réduction prix 

Table
	 
	Client 

    • Nom (VARCHAR 25 NOT NUL)
    • Prénom (VARCHAR 25 NOT NUL)
    • Référence (VARCHAR 50 NOT NUL UNIQUE)
    • Type (VARCHAR 50 NOT NUL)
    • Coéficients (DEC 3,2 NOT NUL)


	Produit 

    • Nom (VARCHAR 25 NOT NUL)
    • Photo (VARCHAR 100 NOT NUL)
    • Prix d’achat (dec 6,2 NOT NUL)
    • Prix HTT (dec 6,2 NOT NUL)
    • Référence (VARCHAR 50 NOT NUL UNIQUE)
    • Référence fournisseur (VARCHAR 50 NOT NUL UNIQUE)
    • Stock (INT NOT NUL)
    • Libellé court (VARCHAR 255)
    • Libellé long (TEXT)
    • Validité (LOGIGAL NOT NUL)
 

	Fournisseurs 

    • Nom (VARCHAR 25 NOT NUL)
    • Référence (VARCHAR 50 NOT NUL UNIQUE)
    • Type (VARCHAR 25 NOT NUL)
 


	Catégories 

    • Nom (VARCHAR 25 NOT NUL)


	Sous-Catégories 

    • Nom (VARCHAR 25 NOT NUL)


	Commerciaux

    • Nom (VARCHAR 25 NOT NUL)
    • Prénom (VARCHAR 25 NOT NUL)
    • Type de client (VARCHAR 25 NOT NUL)
 

	Commandes 

    • Adresse de facturation (VARCHAR 80 NOT NUL)
    • Adresse de livraison (VARCHAR 80 NOT NUL)
    • Règlement (BOOLEAN NOT NUL)
    • Suivi de commande (VARCHAR 25 NOT NUL)
 

 Relation 



    • Lien de «Produits » à « Catégories »
    • Lien de « Produits » à « Commandes » 
    • Lien de « Produits » à « Fournisseurs »
    • Lien de « Produits » à « Clients »
    • Lien de «Catégorie» à « Sous-Catégories » 
    • Lien de « Commerciaux » à « Clients »
    • Lien de « Clients » à « Commandes »
      
      
      
Ordre de création des tables 


    • Fournisseurs > Catégorie > Sous catégorie > Produit > Commerciaux > Clients > Commandes