WITH anma4475.VisiMokejimai AS (
	SELECT Saskaita, SUM(Mokama_suma) AS Sumoketa_suma
		FROM anma4475.Mokejimas
		GROUP BY Saskaita)
CREATE VIEW anma4475.AutomobiliaiIssimoketinai AS
	SELECT A.VIN_numeris, D.Marke, D.Modelis, C.Vardas, C.Pavarde, B.Sumoketa_suma, A.Kaina
	FROM anma4475.Saskaita A, anma4475.VisiMokejimai B, anma4475.Pirkejas C, anma4475.Automobilis D
	WHERE A.VIN_numeris = D.VIN_numeris AND A.Saskaitos_ID = B.Saskaita AND A.Pirkejas = C.Pirkejo_ID
		/*AND A.Tipas = 'Lizingas'*/;
		
CREATE VIEW anma4475.PirkejoKonsultantas AS
	SELECT A.Vardas AS 'Pirkejo vardas', A.Pavarde AS 'Pirkejo pavarde',
		B.Vardas AS 'Konsultanto vardas', B.Pavarde AS 'Konsultanto pavarde'
	FROM Pirkejas A, Darbuotojas B
	WHERE A.Konsultantas = B.Darbuotojo_ID;
	
CREATE VIEW anma4475.TurimiAutomobiliai AS
	SELECT VIN_numeris, Marke, Modelis, Metai, Numatoma_kaina
	FROM anma4475.Automobilis
	WHERE Statusas = 'Sandelyje';
	
CREATE VIEW anma4475.PrabangusTurimiAutomobiliai AS
	SELECT VIN_numeris, Marke, Modelis, Metai, Numatoma_kaina
	FROM anma4475.Automobilis
	WHERE Statusas = 'Sandelyje' AND Numatoma_kaina > 40000;
	
CREATE VIEW anma4475.Partneriai AS
	SELECT DISTINCT(Imone)
	FROM anma4475.Juridinis;
	
CREATE VIEW anma4475.EuropiniaiAutomobiliai AS
	SELECT Padalinys, VIN_numeris, Marke, Modelis, Metai, Numatoma_kaina
	FROM anma4475.Automobilis, anma4475.Gamintojas;
	WHERE Regionas = 'Europa';