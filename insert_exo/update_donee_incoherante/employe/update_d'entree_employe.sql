---------------------------------------------------UPDATE TABLE Employe ----------------------------------------------------------------

/* 

Commande pour vérifier si la date de sortie est bien postérieur à la date d'entrée. 
Le résultat qui en resort doit être négatif.

*/

----------- UPDATE DATE d'entrée des employes quand la date d'entrée est postérieur à la date de sortie --------------------

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

