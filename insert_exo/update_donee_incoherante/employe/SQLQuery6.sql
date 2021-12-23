SELECT cli_id, cli_pay_id, cli_ville, pay_libelle FROM Client
JOIN pays ON cli_pay_id = pay_id;

SELECT * FROM pays
WHERE pay_libelle LIKE 'P%'
ORDER BY pay_libelle ASC;

SELECT * FROM pays
WHERE pay_id = 76;


-- Angleterre

UPDATE Client
	SET cli_pay_id = 76
	WHERE cli_ville = 'Worcester' OR cli_ville ='Hereford';

-- Allemagne

UPDATE Client
	SET cli_pay_id = 56
	WHERE cli_ville = 'Hildesheim' OR cli_ville ='Krefeld' OR cli_ville ='Bremen' OR cli_ville ='Bitterfeld-Wolfen' OR cli_ville ='Lübeck';

-- Pologne

UPDATE Client
	SET cli_pay_id = 174
	WHERE cli_ville = 'Stargard Szczecinski';

-- Viet Nam

UPDATE Client
	SET cli_pay_id = 233
	WHERE cli_ville = 'Long Xuyên';

-- Fédération de Russie

UPDATE Client
	SET cli_pay_id = 185
	WHERE cli_ville = 'Volokonovka' OR cli_ville ='Verkhny Ufaley' OR cli_ville ='Kursk' OR cli_ville ='Novgorod';

-- Inde

UPDATE Client
	SET cli_pay_id = 103
	WHERE cli_ville = 'Delhi' OR cli_ville ='Thalassery' OR cli_ville ='Imphal' OR cli_ville = 'Patiala';

-- Autriche

UPDATE Client
	SET cli_pay_id = 13
	WHERE cli_ville = 'Vienna' OR cli_ville ='Stockerau' OR cli_ville ='Landeck' OR cli_ville ='Linz' OR cli_ville = 'Lauterach';

-- Colombie

UPDATE Client
	SET cli_pay_id = 48
	WHERE cli_ville = 'Mocoa' OR cli_ville ='Bogotá' OR cli_ville ='Paz de Ariporo';

-- Pakistan

UPDATE Client
	SET cli_pay_id = 173
	WHERE cli_ville = 'Sibi' OR cli_ville = 'Ghanche';

-- Indonésie

UPDATE Client
	SET cli_pay_id = 99
	WHERE cli_ville = 'Gorontalo' OR cli_ville ='Sungai Penuh';

-- Nigéria

UPDATE Client
	SET cli_pay_id = 159
	WHERE cli_ville = 'Funtua' OR cli_ville ='Kano';

-- Pays-Bas

UPDATE Client
	SET cli_pay_id = 161
	WHERE cli_ville = 'Stavoren' OR cli_ville ='Zoetermeer' OR cli_ville ='Coevorden';

-- Pérou

UPDATE Client
	SET cli_pay_id = 169
	WHERE cli_ville = 'Lambayeque';

-- Costa Rica

UPDATE Client
	SET cli_pay_id = 49
	WHERE cli_ville = 'Liberia'	OR cli_ville ='Alajuela' OR cli_ville ='Ulloa (Barrial]';

-- Etats unis

UPDATE Client
	SET cli_pay_id = 225
	WHERE cli_ville = 'Southaven' OR cli_ville ='Springdale' OR cli_ville ='San Francisco' OR cli_ville ='Sevastopol';

-- Belgique

UPDATE Client
	SET cli_pay_id = 21
	WHERE cli_ville = 'Falisolle' OR cli_ville ='Lieferinge' OR cli_ville ='Merksem' OR cli_ville ='Driekapellen' OR cli_ville ='Stokrooie';

-- Canada

UPDATE Client
	SET cli_pay_id = 37
	WHERE cli_ville = 'Orangeville' OR cli_ville ='Tsiigehtchic' OR cli_ville ='Regina' OR cli_ville ='Sunshine Coast Regional District';

-- Nouvelle_Zélande

UPDATE Client
	SET cli_pay_id = 166
	WHERE cli_ville = 'Christchurch' OR cli_ville ='Kawerau';

-- République de Corée

UPDATE Client
	SET cli_pay_id = 119
	WHERE cli_ville = 'Busan' OR cli_ville ='Seosan';

-- Turquie

UPDATE Client
	SET cli_pay_id = 217
	WHERE cli_ville = 'Siverek' OR cli_ville ='Antalya' OR cli_ville ='Bünyan';

-- Italie

UPDATE Client
	SET cli_pay_id = 108
	WHERE cli_ville = 'Visso' OR cli_ville ='Barbania';

-- République de Chili

UPDATE Client
	SET cli_pay_id = 45
	WHERE cli_ville = 'Mejillones' OR cli_ville ='Camiña' OR cli_ville ='Quemchi' OR cli_ville ='Timaukel';

-- Suisse

UPDATE Client
	SET cli_pay_id = 42
	WHERE cli_ville = 'Arles';

-- Mexique

UPDATE Client
	SET cli_pay_id = 152
	WHERE cli_ville = 'Delicias';

-- Pérou

UPDATE Client
	SET cli_pay_id = 169
	WHERE cli_ville = 'Pacasmayo';

-- Japon

UPDATE Client
	SET cli_pay_id = 111
	WHERE cli_ville = 'Shigar';

-- Brésil

UPDATE Client
	SET cli_pay_id = 30
	WHERE cli_ville = 'Canoas';

-- Colombie 

UPDATE Client
	SET cli_pay_id = 48
	WHERE cli_ville = 'Canoas';



	




	
	





