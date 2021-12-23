USE Village_green_final;
GO

---------------------------------------------------UPDATE TABLE Employe ----------------------------------------------------------------


/* 

Commande pour vérifier si la date de sortie est bien postérieur à la date d'entrée. 
Un résultat cohérent ne peut pas être positif avec cette commande. Il doit être négatif ou "NULL"

*/

SELECT emp_nom, emp_prenom, emp_date_entree, emp_date_sortie, DATEDIFF(day, emp_date_sortie, emp_date_entree ) AS jour_diff
FROM Employe
ORDER BY emp_date_sortie;

----------- UPDATE DATE d'entrée des employes quand la date d'entrée est postérieur à la date de sortie ---------------------------------

UPDATE Employe SET emp_date_entree = '2010-02-09' WHERE emp_id = 60;
UPDATE Employe SET emp_date_entree = '2009-11-10' WHERE emp_id = 57;
UPDATE Employe SET emp_date_entree = '2009-11-30' WHERE emp_id = 11;
UPDATE Employe SET emp_date_entree = '2009-12-10' WHERE emp_id = 4;
UPDATE Employe SET emp_date_entree = '2009-10-01' WHERE emp_id = 80;
UPDATE Employe SET emp_date_entree = '2009-11-16' WHERE emp_id = 58;
UPDATE Employe SET emp_date_entree = '2009-11-30' WHERE emp_id = 33;
UPDATE Employe SET emp_date_entree = '2009-11-12' WHERE emp_id = 8;
UPDATE Employe SET emp_date_entree = '2009-12-26' WHERE emp_id = 91;
UPDATE Employe SET emp_date_entree = '2009-11-17' WHERE emp_id = 34;
UPDATE Employe SET emp_date_entree = '2009-10-27' WHERE emp_id = 37;
UPDATE Employe SET emp_date_entree = '2009-11-10' WHERE emp_id = 47;
UPDATE Employe SET emp_date_entree = '2009-11-30' WHERE emp_id = 54;
UPDATE Employe SET emp_date_entree = '2009-12-10' WHERE emp_id = 92;
UPDATE Employe SET emp_date_entree = '2009-10-01' WHERE emp_id = 99;
UPDATE Employe SET emp_date_entree = '2009-11-16' WHERE emp_id = 79;
UPDATE Employe SET emp_date_entree = '2009-11-30' WHERE emp_id = 44;
UPDATE Employe SET emp_date_entree = '2009-11-12' WHERE emp_id = 48;
UPDATE Employe SET emp_date_entree = '2009-12-26' WHERE emp_id = 36;
UPDATE Employe SET emp_date_entree = '2009-11-17' WHERE emp_id = 72;
UPDATE Employe SET emp_date_entree = '2010-02-09' WHERE emp_id = 60;
UPDATE Employe SET emp_date_entree = '2010-01-18' WHERE emp_id = 57;
UPDATE Employe SET emp_date_entree = '2010-01-14' WHERE emp_id = 11;
UPDATE Employe SET emp_date_entree = '2010-05-24' WHERE emp_id = 4;
UPDATE Employe SET emp_date_entree = '2009-02-09' WHERE emp_id = 80;
UPDATE Employe SET emp_date_entree = '2010-02-13' WHERE emp_id = 58;
UPDATE Employe SET emp_date_entree = '2010-03-05' WHERE emp_id = 33;
UPDATE Employe SET emp_date_entree = '2010-04-13' WHERE emp_id = 71;
UPDATE Employe SET emp_date_entree = '2012-10-18' WHERE emp_id = 41;
UPDATE Employe SET emp_date_entree = '2010-08-29' WHERE emp_id = 76;
UPDATE Employe SET emp_date_entree = '2011-10-17' WHERE emp_id = 95;
UPDATE Employe SET emp_date_entree = '2012-08-30' WHERE emp_id = 85;
UPDATE Employe SET emp_date_entree = '2009-08-15' WHERE emp_id = 65;
UPDATE Employe SET emp_date_entree = '2009-10-27' WHERE emp_id = 23;
UPDATE Employe SET emp_date_entree = '2011-08-05' WHERE emp_id = 56;
UPDATE Employe SET emp_date_entree = '2012-03-01' WHERE emp_id = 73;
UPDATE Employe SET emp_date_entree = '2013-02-12' WHERE emp_id = 100;
UPDATE Employe SET emp_date_entree = '2014-01-08' WHERE emp_id = 70;
UPDATE Employe SET emp_date_entree = '2014-05-01' WHERE emp_id = 49;
UPDATE Employe SET emp_date_entree = '2013-08-14' WHERE emp_id = 39;
UPDATE Employe SET emp_date_entree = '2014-02-28' WHERE emp_id = 84;
UPDATE Employe SET emp_date_entree = '2014-12-08' WHERE emp_id = 45;
UPDATE Employe SET emp_date_entree = '2017-02-31' WHERE emp_id = 86;
UPDATE Employe SET emp_date_entree = '2012-03-18' WHERE emp_id = 81;
UPDATE Employe SET emp_date_entree = '2018-07-21' WHERE emp_id = 50;
UPDATE Employe SET emp_date_entree = '2014-01-12' WHERE emp_id = 38;
UPDATE Employe SET emp_date_entree = '2012-11-25' WHERE emp_id = 3;
UPDATE Employe SET emp_date_entree = '2019-07-10' WHERE emp_id = 63;

--------------------- Rajout de quelques dates de sorties = NULL pour plus de cohérences ---------------------------

-- Modification de la colonne emp_date_sortie pour la rendre possibilement NULL --

ALTER TABLE Employe 
ALTER COLUMN emp_date_sortie DATE NULL;

-- Rajout des UPDATES --

UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 60;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 11;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 4;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 80;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 58;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 8;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 91;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 34;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 47;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 54;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 92;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 36;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 60;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 57;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 11;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 4;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 58;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 33;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 71;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 85;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 65;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 56;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 73;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 70;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 45;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 86;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 50;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 38;
UPDATE Employe SET emp_date_sortie = NULL WHERE emp_id = 3;



------------------------------------------------------------------------------UPDATE emp_sexe--------------------------------------------------------------------------

UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 1;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 2;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 3;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 4;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 5;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 6;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 7;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 8;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 9;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 10;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 11;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 12;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 13;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 14;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 15;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 16;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 17;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 18;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 19;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 20;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 21;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 22;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 23;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 24;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 25;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 26;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 27;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 28;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 29;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 30;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 31;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 32;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 33;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 34;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 35;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 36;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 37;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 38;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 39;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 40;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 41;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 42;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 43;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 44;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 45;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 46;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 47;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 48;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 49;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 50;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 51;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 52;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 53;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 54;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 55;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 56;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 57;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 58;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 59
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 60;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 61;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 62;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 63;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 64;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 65;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 66;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 67;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 68;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 69;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 70;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 71;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 72;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 73;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 74;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 75;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 76;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 77;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 78;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 79;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 80;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 81;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 82;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 83;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 84;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 85;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 86;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 87;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 88;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 89;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 90;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 91;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 92;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 93;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 94;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 95;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 96;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 97;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 98;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 99;
UPDATE Employe SET emp_sexe = 'F' WHERE emp_id = 100;

USE master;
GO
