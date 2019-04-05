/* Lentelė, pateikianti visus automobilius, pirktus išsimokėtinai, ir jų pirkėjus */

WITH anma4475.VisiMokejimai AS (
	SELECT Saskaita, SUM(Mokama_suma) AS Sumoketa_suma
		FROM anma4475.Mokejimas
		GROUP BY Saskaita)
CREATE VIEW anma4475.AutomobiliaiIssimoketinai AS
	SELECT A.VIN_numeris, D.Marke, D.Modelis, C.Vardas, C.Pavarde, B.Sumoketa_suma, A.Kaina
	FROM anma4475.Saskaita A, anma4475.VisiMokejimai B, anma4475.Pirkejas C, anma4475.Automobilis D
	WHERE A.VIN_numeris = D.VIN_numeris AND A.Saskaitos_ID = B.Saskaita AND A.Pirkejo_ID = C.Pirkejo_ID /* AND A.Tipas = 'Lizingas' */;
		
		
/* Lentelė, parodanti kiekvieno pirkėjo konsultantą */	
		
CREATE MATERIALIZED VIEW anma4475.PirkejoKonsultantas AS
	SELECT A.Vardas AS 'Pirkejo vardas', A.Pavarde AS 'Pirkejo pavarde',
		B.Vardas AS 'Konsultanto vardas', B.Pavarde AS 'Konsultanto pavarde'
	FROM Pirkejas A, Darbuotojas B
	WHERE A.Konsultantas = B.Darbuotojo_ID
	
/* Lentelė, pateikianti visus automobilius, kurie šiuo metu yra sandėlyje */
	
CREATE VIEW anma4475.TurimiAutomobiliai AS
	SELECT VIN_numeris, Marke, Modelis, Metai, Numatoma_kaina
	FROM anma4475.Automobilis
	WHERE Statusas = 'Sandelyje';
	
/* Lentelė, pateikianti visus prabangius automobilius, kurie šiuo metu yra sandėlyje */
	
CREATE VIEW anma4475.PrabangusTurimiAutomobiliai AS
	SELECT VIN_numeris, Marke, Modelis, Metai, Numatoma_kaina
	FROM anma4475.Automobilis
	WHERE Statusas = 'Sandelyje' AND Numatoma_kaina >= 40000;
	
/* Lentelė, pateikianti visas įmones, iš kurių superkami automobiliai */
	
CREATE MATERIALIZED VIEW anma4475.Partneriai AS
	SELECT DISTINCT(Imone)
	FROM anma4475.Juridinis;
	
/* Lentelė, parodanti visus automobilius, esančius šiuo metu sandėlyje ir surinktus Europoje */
	
CREATE VIEW anma4475.EuropiniaiAutomobiliai AS
	SELECT Padalinys, VIN_numeris, Marke, Modelis, Metai, Numatoma_kaina
	FROM anma4475.Automobilis, anma4475.Gamintojas;
	WHERE Regionas = 'Europa';

/* Lentelė, parodanti visus kažkada parduotus automobilius */

CREATE VIEW anma4475.ParduotiAutomobiliai AS
	SELECT Saskaitos_ID, VIN_numeris, Kaina, Išrašymo_data, Pirkejo_ID, Vardas, Pavarde
	FROM anma4475.Saskaita, anma4475.Pirkejas
	WHERE anma4475.Saskaita.Pirkejo_ID = anma4475.Pirkejas.Pirkejo_ID AND Tipas = 'Parduotas';

