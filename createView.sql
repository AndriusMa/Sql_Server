/* Lentelė, pateikianti visus automobilius, pirktus išsimokėtinai, ir jų pirkėjus */


CREATE VIEW aupe4289.AutomobiliaiIssimoketinai AS
WITH VisiMokejimai AS (
	SELECT Saskaita, SUM(Mokama_suma) AS Sumoketa_suma, COUNT(Mokama_suma) AS Kiekis
		FROM aupe4289.Mokejimas
		GROUP BY Saskaita)
	SELECT A.VIN_numeris, D.Marke, D.Modelis, C.Vardas, C.Pavarde, B.Sumoketa_suma, B.Kiekis, A.Kaina
	FROM aupe4289.Saskaita A, VisiMokejimai B, aupe4289.Pirkejas C, aupe4289.Automobilis D
	WHERE A.VIN_numeris = D.VIN_numeris AND A.Saskaitos_ID = B.Saskaita AND A.Pirkejo_ID = C.Pirkejo_ID AND A.Mokejimas = 'Lizingas';
		
		
/* Lentelė, parodanti kiekvieno pirkėjo konsultantą */	
		
CREATE MATERIALIZED VIEW aupe4289.PirkejoKonsultantas AS
	SELECT A.Vardas AS "Pirkejo vardas", A.Pavarde AS "Pirkejo pavarde",
		B.Vardas AS "Konsultanto vardas", B.Pavarde AS "Konsultanto pavarde"
	FROM Pirkejas A, Darbuotojas B
	WHERE A.Konsultantas = B.Darbuotojo_ID;
	
/* Lentelė, pateikianti visus automobilius, kurie šiuo metu yra sandėlyje */
	
CREATE VIEW aupe4289.TurimiAutomobiliai AS
	SELECT VIN_numeris, Marke, Modelis, Metai, Numatoma_kaina
	FROM aupe4289.Automobilis
	WHERE Statusas = 'Sandelyje';
	
/* Lentelė, pateikianti visus prabangius automobilius, kurie šiuo metu yra sandėlyje */
	
CREATE VIEW aupe4289.PrabangusTurimiAutomobiliai AS
	SELECT VIN_numeris, Marke, Modelis, Metai, Numatoma_kaina
	FROM aupe4289.Automobilis
	WHERE Statusas = 'Sandelyje' AND Numatoma_kaina >= 40000;
	
/* Lentelė, pateikianti visas įmones, iš kurių superkami automobiliai */
	
CREATE MATERIALIZED VIEW aupe4289.Partneriai AS
	SELECT DISTINCT (Imone)
	FROM aupe4289.Juridinis;
	
/* Lentelė, parodanti visus automobilius, esančius šiuo metu sandėlyje ir surinktus Europoje */
	
CREATE VIEW aupe4289.EuropiniaiAutomobiliai AS
	SELECT Padalinys, VIN_numeris, Marke, Modelis, Numatoma_kaina
	FROM aupe4289.Automobilis, aupe4289.Gamintojas
	WHERE Regionas = 'Europa';

/* Lentelė, parodanti visus kažkada parduotus automobilius */

CREATE VIEW aupe4289.ParduotiAutomobiliai AS
	SELECT Saskaitos_ID, VIN_numeris, Kaina, Israsymo_data, aupe4289.Pirkejas.Pirkejo_ID, Vardas, Pavarde
	FROM aupe4289.Saskaita, aupe4289.Pirkejas
	WHERE aupe4289.Saskaita.Pirkejo_ID = aupe4289.Pirkejas.Pirkejo_ID AND Tipas = 'Parduotas';

