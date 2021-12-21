--------------------------------------------------UPDATE TABLE Employe ----------------------------------------------------------------

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


---------------------------------------------UPDATE emp_date_naissance-----------------------------------------------------------------



UPDATE Employe SET emp_date_naissance = '1973-02-04' WHERE emp_id = 1;
UPDATE Employe SET emp_date_naissance = '2000-06-08' WHERE emp_id = 2;
UPDATE Employe SET emp_date_naissance = '1966-08-12' WHERE emp_id = 3;
UPDATE Employe SET emp_date_naissance = '1958-08-25' WHERE emp_id = 4;
UPDATE Employe SET emp_date_naissance = '1957-12-25' WHERE emp_id = 5;
UPDATE Employe SET emp_date_naissance = '1956-03-30' WHERE emp_id = 6;
UPDATE Employe SET emp_date_naissance = '1959-07-01' WHERE emp_id = 7;
UPDATE Employe SET emp_date_naissance = '1984-09-07' WHERE emp_id = 8;
UPDATE Employe SET emp_date_naissance = '1962-04-13' WHERE emp_id = 9;
UPDATE Employe SET emp_date_naissance = '1975-08-31' WHERE emp_id = 10;
UPDATE Employe SET emp_date_naissance = '1975-04-10' WHERE emp_id = 11;
UPDATE Employe SET emp_date_naissance = '1986-10-01' WHERE emp_id = 12;
UPDATE Employe SET emp_date_naissance = '1996-09-12' WHERE emp_id = 13;
UPDATE Employe SET emp_date_naissance = '1957-06-12' WHERE emp_id = 14;
UPDATE Employe SET emp_date_naissance = '1974-12-17' WHERE emp_id = 15;
UPDATE Employe SET emp_date_naissance = '1997-08-25' WHERE emp_id = 16;
UPDATE Employe SET emp_date_naissance = '1986-01-13' WHERE emp_id = 17;
UPDATE Employe SET emp_date_naissance = '1977-04-12' WHERE emp_id = 18;
UPDATE Employe SET emp_date_naissance = '1978-09-30' WHERE emp_id = 19;
UPDATE Employe SET emp_date_naissance = '1958-02-10' WHERE emp_id = 20;
UPDATE Employe SET emp_date_naissance = '1992-06-01' WHERE emp_id = 21;
UPDATE Employe SET emp_date_naissance = '1979-10-29' WHERE emp_id = 22;
UPDATE Employe SET emp_date_naissance = '1994-02-11' WHERE emp_id = 23;
UPDATE Employe SET emp_date_naissance = '1958-03-23' WHERE emp_id = 24;
UPDATE Employe SET emp_date_naissance = '1995-04-12' WHERE emp_id = 25;
UPDATE Employe SET emp_date_naissance = '1961-10-11' WHERE emp_id = 26;
UPDATE Employe SET emp_date_naissance = '1968-12-06' WHERE emp_id = 27;
UPDATE Employe SET emp_date_naissance = '1969-02-24' WHERE emp_id = 28;
UPDATE Employe SET emp_date_naissance = '1974-07-31' WHERE emp_id = 29;
UPDATE Employe SET emp_date_naissance = '1987-09-23' WHERE emp_id = 30;
UPDATE Employe SET emp_date_naissance = '1986-05-29' WHERE emp_id = 31;
UPDATE Employe SET emp_date_naissance = '1994-07-04' WHERE emp_id = 32;
UPDATE Employe SET emp_date_naissance = '2001-04-17' WHERE emp_id = 33;
UPDATE Employe SET emp_date_naissance = '1993-05-17' WHERE emp_id = 34;
UPDATE Employe SET emp_date_naissance = '1989-04-23' WHERE emp_id = 35;
UPDATE Employe SET emp_date_naissance = '1985-03-07' WHERE emp_id = 36;
UPDATE Employe SET emp_date_naissance = '1962-09-21' WHERE emp_id = 37;
UPDATE Employe SET emp_date_naissance = '1987-01-25' WHERE emp_id = 38;
UPDATE Employe SET emp_date_naissance = '1964-03-15' WHERE emp_id = 39;
UPDATE Employe SET emp_date_naissance = '1964-09-29' WHERE emp_id = 40;
UPDATE Employe SET emp_date_naissance = '1957-06-09' WHERE emp_id = 41;
UPDATE Employe SET emp_date_naissance = '1962-06-24' WHERE emp_id = 42;
UPDATE Employe SET emp_date_naissance = '1975-04-04' WHERE emp_id = 43;
UPDATE Employe SET emp_date_naissance = '1970-10-17' WHERE emp_id = 44;
UPDATE Employe SET emp_date_naissance = '1968-07-30' WHERE emp_id = 45;
UPDATE Employe SET emp_date_naissance = '1989-03-29' WHERE emp_id = 46;
UPDATE Employe SET emp_date_naissance = '1966-04-27' WHERE emp_id = 47;
UPDATE Employe SET emp_date_naissance = '1958-04-05' WHERE emp_id = 48;
UPDATE Employe SET emp_date_naissance = '1989-10-18' WHERE emp_id = 49;
UPDATE Employe SET emp_date_naissance = '1989-09-25' WHERE emp_id = 50;
UPDATE Employe SET emp_date_naissance = '1979-12-10' WHERE emp_id = 51;
UPDATE Employe SET emp_date_naissance = '1968-02-23' WHERE emp_id = 52;
UPDATE Employe SET emp_date_naissance = '1955-03-24' WHERE emp_id = 53;
UPDATE Employe SET emp_date_naissance = '1958-06-26' WHERE emp_id = 54;
UPDATE Employe SET emp_date_naissance = '1995-06-13' WHERE emp_id = 55;
UPDATE Employe SET emp_date_naissance = '1973-11-25' WHERE emp_id = 56;
UPDATE Employe SET emp_date_naissance = '1967-02-20' WHERE emp_id = 57;
UPDATE Employe SET emp_date_naissance = '1986-11-26' WHERE emp_id = 58;
UPDATE Employe SET emp_date_naissance = '2001-04-19' WHERE emp_id = 59;
UPDATE Employe SET emp_date_naissance = '1999-08-23' WHERE emp_id = 60;
UPDATE Employe SET emp_date_naissance = '1970-07-15' WHERE emp_id = 61;
UPDATE Employe SET emp_date_naissance = '1978-01-16' WHERE emp_id = 62;
UPDATE Employe SET emp_date_naissance = '1967-07-01' WHERE emp_id = 63;
UPDATE Employe SET emp_date_naissance = '1998-01-20' WHERE emp_id = 64;
UPDATE Employe SET emp_date_naissance = '2000-08-29' WHERE emp_id = 65;
UPDATE Employe SET emp_date_naissance = '1975-06-23' WHERE emp_id = 66;
UPDATE Employe SET emp_date_naissance = '1957-03-04' WHERE emp_id = 67;
UPDATE Employe SET emp_date_naissance = '1959-04-30' WHERE emp_id = 68;
UPDATE Employe SET emp_date_naissance = '1976-04-13' WHERE emp_id = 69;
UPDATE Employe SET emp_date_naissance = '1992-04-15' WHERE emp_id = 70;
UPDATE Employe SET emp_date_naissance = '1990-03-15' WHERE emp_id = 71;
UPDATE Employe SET emp_date_naissance = '1978-11-29' WHERE emp_id = 72;
UPDATE Employe SET emp_date_naissance = '1973-01-11' WHERE emp_id = 73;
UPDATE Employe SET emp_date_naissance = '1997-01-09' WHERE emp_id = 74;
UPDATE Employe SET emp_date_naissance = '1960-12-24' WHERE emp_id = 75;
UPDATE Employe SET emp_date_naissance = '1984-03-25' WHERE emp_id = 76;
UPDATE Employe SET emp_date_naissance = '1957-04-02' WHERE emp_id = 77;
UPDATE Employe SET emp_date_naissance = '1994-01-13' WHERE emp_id = 78;
UPDATE Employe SET emp_date_naissance = '1961-06-23' WHERE emp_id = 79;
UPDATE Employe SET emp_date_naissance = '1982-03-03' WHERE emp_id = 80;
UPDATE Employe SET emp_date_naissance = '1956-09-28' WHERE emp_id = 81;
UPDATE Employe SET emp_date_naissance = '2000-12-04' WHERE emp_id = 82;
UPDATE Employe SET emp_date_naissance = '1967-04-05' WHERE emp_id = 83;
UPDATE Employe SET emp_date_naissance = '1962-11-29' WHERE emp_id = 84;
UPDATE Employe SET emp_date_naissance = '1986-10-01' WHERE emp_id = 85;
UPDATE Employe SET emp_date_naissance = '1992-05-19' WHERE emp_id = 86;
UPDATE Employe SET emp_date_naissance = '1988-08-03' WHERE emp_id = 87;
UPDATE Employe SET emp_date_naissance = '1999-12-03' WHERE emp_id = 88;
UPDATE Employe SET emp_date_naissance = '1969-07-26' WHERE emp_id = 89;
UPDATE Employe SET emp_date_naissance = '1998-09-23' WHERE emp_id = 90;
UPDATE Employe SET emp_date_naissance = '1996-11-04' WHERE emp_id = 91;
UPDATE Employe SET emp_date_naissance = '1999-10-17' WHERE emp_id = 92;
UPDATE Employe SET emp_date_naissance = '2000-03-07' WHERE emp_id = 93;
UPDATE Employe SET emp_date_naissance = '2002-04-15' WHERE emp_id = 94;
UPDATE Employe SET emp_date_naissance = '1979-10-20' WHERE emp_id = 95;
UPDATE Employe SET emp_date_naissance = '1956-02-04' WHERE emp_id = 96;
UPDATE Employe SET emp_date_naissance = '1975-06-03' WHERE emp_id = 97;
UPDATE Employe SET emp_date_naissance = '1968-06-04' WHERE emp_id = 98;
UPDATE Employe SET emp_date_naissance = '1971-03-26' WHERE emp_id = 99;
UPDATE Employe SET emp_date_naissance = '1954-09-30' WHERE emp_id = 100;

----------------------------------------------------UPDATE Emp_sexe--------------------------------------------------------------------

UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 31;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 32;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 33;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 34;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 35;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 36;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 37;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 38;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 39;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 40;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 41;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 42;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 43;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 44;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 45;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 46;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 47;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 48;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 49;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 50;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 51;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 52;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 53;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 54;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 55;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 56;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 57;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 58;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 59;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 60;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 61;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 62;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 63;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 64;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 65;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 66;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 67;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 68;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 69;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 70;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 71;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 72;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 73;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 74;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 75;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 76;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 77;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 78;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 79;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 80;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 81;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 82;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 83;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 84;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 85;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 86;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 87;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 88;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 89;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 90;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 91;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 92;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 93;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 94;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 95;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 96;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 97;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 98;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 99;
UPDATE Employe SET emp_sexe = 'M' WHERE emp_id = 100;


