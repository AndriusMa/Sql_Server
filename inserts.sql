-- Gamintojai 
-- Gamintojo_ID, Regionas, Padalinys

INSERT INTO Gamintojas VALUES   (1, 'Azija', 'Toyota');
INSERT INTO Gamintojas VALUES   (2, 'Azija', 'Lexus');
INSERT INTO Gamintojas VALUES   (3, 'Europa', 'Toyota');
INSERT INTO Gamintojas VALUES   (4, 'Europa', 'Lexus');
INSERT INTO Gamintojas VALUES   (5, 'Amerika', 'Toyota');
INSERT INTO Gamintojas VALUES   (6, 'Amerika', 'Lexus');

-- Darbuotojai
-- Darbuotojo_ID, Vardas, Pavarde, Asmens_kodas

INSERT INTO Darbuotojas		VALUES	(101, 'Aurimas', 'Baronas', '37805303698');
INSERT INTO Darbuotojas		VALUES	(102, 'Akvile', 'Kalvyte', '49111305695');
INSERT INTO Darbuotojas		VALUES	(103, 'Vaidas', 'Kenbauskas', '38801135210');
INSERT INTO Darbuotojas		VALUES	(104, 'Vilius', 'Labanauskas', '39211252014');
INSERT INTO Darbuotojas		VALUES	(105, 'Virgis', 'Rajunas', '38709156520');


-- Fiziniai asmenys
-- Tiekejo_ID, Vardas, Pavarde, Asmens_kodas

INSERT INTO Fizinis	VALUES	(3006, 'Jonas', 'Stankevicius', '36911065684');
INSERT INTO Fizinis	VALUES	(3007, 'Matas', 'Minkivicius', '37803252369');
INSERT INTO Fizinis	VALUES	(3009, 'Kristupas', 'Kajubauskas', '38106305698');


-- Juridiniai asmenys
-- Tiekejo_ID, Imone, Imones_kodas

INSERT INTO Juridinis	VALUES	(3008, 'UAB Gintauta', '365205781');
INSERT INTO Juridinis	VALUES	(3010, 'UAB Getala', '350123785');
INSERT INTO Juridinis	VALUES	(3011, 'UAB Metaka', '350015482');


INSERT INTO Pirkejas VALUES	(3000, 'Gintaras', 'Gudavicius', 101, '39301045422');
INSERT INTO Pirkejas VALUES	(3001, 'Jonas', 'Katauskis', 103, '35910286298');
INSERT INTO Pirkejas VALUES	(3002, 'Diana', 'Karauskiene', 105, '46603251986');
INSERT INTO Pirkejas VALUES	(3003, 'Irmantas', 'Radenas', 102, '37908132579');
INSERT INTO Pirkejas VALUES	(3004, 'Aurimas', 'Janusauskas', 104, '38909213365');
INSERT INTO Pirkejas VALUES	(3005, 'Kira', 'Kureliene', 101, '37511216982');


-- Automobiliai 
-- Marke, Modelis, Metai, Gamintojas, Numatoma_kaina, Statusas, VIN 

INSERT INTO Automobilis VALUES   ('Lexus', 'IS200t', 2017, 2, 33000, 'Sandelyje', 'JTJBC11A202418624' );
INSERT INTO Automobilis VALUES   ('Lexus', 'IS300h', 2018, 4, 36540, 'Sandelyje', 'JTABC22C202462475' );
INSERT INTO Automobilis VALUES   ('Lexus', 'RX200t', 2018, 6, 63000, 'Parduota', 'JGCBC11A202523424' );
INSERT INTO Automobilis VALUES   ('Lexus', 'GS450h', 2017, 2, 53390, 'Parduota', 'JAQBC11A318492434' );
INSERT INTO Automobilis VALUES   ('Toyota', 'Corolla', 2017, 3, 18030, 'Sandelyje', 'JGJHA11A204789324' );
INSERT INTO Automobilis VALUES   ('Lexus', 'LC500', 2019, 4, 112000, 'Sandelyje', 'JCJAL13A213547633' );
INSERT INTO Automobilis VALUES   ('Toyota', 'RAV4', 2018, 3, 29320, 'Sandelyje', 'JRVBC11C321846795' );
INSERT INTO Automobilis VALUES   ('Toyota', 'Land Cruiser V8', 2017, 3, 43000, 'Sandelyje', 'JCRAC11A234512188' );
INSERT INTO Automobilis VALUES   ('Lexus', 'LS500h', 2019, 2, 123000, 'Parduota', 'JLRAA34A894456354');
INSERT INTO Automobilis VALUES   ('Lexus', 'LS400', 1997, 4, 11000, 'Sandelyje', 'JLSBC98A544321654' );
INSERT INTO Automobilis VALUES   ('Lexus', 'GS300', 2004, 6, 9300, 'Sandelyje', 'JGSBC11A321987521' );
INSERT INTO Automobilis VALUES   ('Toyota', 'Corolla', 2019, 5, 21360, 'Sandelyje', 'JTLCT14A287934168' );
INSERT INTO Automobilis VALUES   ('Lexus', 'IS200t', 2019, 4, 39350, 'Parduota', 'JASBC68A214835276' );
INSERT INTO Automobilis VALUES   ('Toyota', 'Land Cruiser', 2020, 1, 48630, 'Sandelyje', 'JWABC66A218976540' );
INSERT INTO Automobilis VALUES   ('Toyota', 'C-HR', 2018, 3, 28030, 'Parduota', 'JAWBH24A876354298' );
INSERT INTO Automobilis VALUES   ('Lexus', 'IS200t', 2019, 2, 41530, 'Sandelyje', 'JISAW68A111576852' );
INSERT INTO Automobilis VALUES   ('Lexus', 'RX450h', 2018, 6, 58360, 'Parduota', 'JRXBC45A254830711' );
INSERT INTO Automobilis VALUES   ('Toyota', 'RAV4', 2019, 5, 26540, 'Sandelyje', 'JASBC12C235790123' );
INSERT INTO Automobilis VALUES   ('Lexus', 'ES300h', 2019, 6, 63050, 'Sandelyje', 'JESBC61D015879632' );
INSERT INTO Automobilis VALUES   ('Lexus', 'GS450h', 2007, 4, 13390, 'Sandelyje', 'JCCBC11G258755113' );
INSERT INTO Automobilis VALUES   ('Toyota', 'Corolla', 2019, 1, 19330, 'Sandelyje', 'JTCHW13A695872315' );
INSERT INTO Automobilis VALUES   ('Lexus', 'LC500h', 2018, 4, 122000, 'Sandelyje', 'JALAL66A369875001' );
INSERT INTO Automobilis VALUES   ('Toyota', 'RAV4', 2011, 1, 12320, 'Sandelyje', 'JRABC66G359001472' );
INSERT INTO Automobilis VALUES   ('Toyota', 'Land Cruiser V8', 2018, 5, 43600, 'Sandelyje', 'JWLCC54A258760100' );
INSERT INTO Automobilis VALUES   ('Lexus', 'LS460', 2009, 4, 16360, 'Sandelyje', 'JLSGS34C213548965');
INSERT INTO Automobilis VALUES   ('Lexus', 'LS430', 2003, 5, 11400, 'Sandelyje', 'JGCAC98A218463058' );
INSERT INTO Automobilis VALUES   ('Lexus', 'NX300h', 2018, 4, 48300, 'Sandelyje', 'JSDBC33A256894520' );
INSERT INTO Automobilis VALUES   ('Toyota', 'C-HR', 2017, 1, 21360, 'Sandelyje', 'JSLCT14A213562487' );
INSERT INTO Automobilis VALUES   ('Lexus', 'IS200t', 2015, 6, 19350, 'Sandelyje', 'JSABC68G215800311' );
INSERT INTO Automobilis VALUES   ('Toyota', 'Land Cruiser', 2014, 3, 19630, 'Sandelyje', 'JLCBC66D258003155' );
INSERT INTO Automobilis VALUES   ('Toyota', 'C-HR', 2020, 3, 23030, 'Sandelyje', 'JGRBH24C002693102' );
INSERT INTO Automobilis VALUES	('Lexus', 'RX200t', 2017, 4, 49530, 'Sandelyje', 'JRXAW68G369021103' );

-- Saskaitos
-- Saskaitos_ID, Saskaitos_klientas, Pirkejo_ID, Fizinio_ID, Juridinio_ID, VIN_numeris, Kaina, Tipas, Mokejimas, Israsymo_data

INSERT INTO Saskaita VALUES	(1000, 'Pirkejas', 3000, NULL, NULL, 'JGCBC11A202523424', 63000, 'Parduotas', 'Lizingas', '2018-03-21');
INSERT INTO Saskaita VALUES	(1001, 'Pirkejas', 3001, NULL, NULL, 'JAQBC11A318492434', 53390, 'Parduotas', 'Lizingas', '2017-07-25');
INSERT INTO Saskaita VALUES	(1002, 'Pirkejas', 3002, NULL, NULL, 'JLRAA34A894456354', 123000, 'Parduotas', 'Pilnas', '2018-04-02');
INSERT INTO Saskaita VALUES	(1003, 'Pirkejas', 3003, NULL, NULL, 'JASBC68A214835276', 39350, 'Parduotas', 'Lizingas', '2018-10-12');
INSERT INTO Saskaita VALUES	(1004, 'Pirkejas', 3004, NULL, NULL, 'JAWBH24A876354298', 28030, 'Parduotas', 'Pilnas', '2018-12-15');
INSERT INTO Saskaita VALUES	(1005, 'Pirkejas', 3005, NULL, NULL, 'JRXBC45A254830711', 58360, 'Parduotas', 'Pilnas', '2019-01-07');
INSERT INTO Saskaita VALUES	(1006, 'Fizinis', NULL, 3006, NULL, 'JLSBC98A544321654', 9800, 'Nupirktas', 'Pilnas', '2018-10-19');
INSERT INTO Saskaita VALUES	(1007, 'Fizinis',  NULL, 3007, NULL, 'JGSBC11A321987521', 7300, 'Nupirktas', 'Pilnas', '2018-12-30');
INSERT INTO Saskaita VALUES	(1008, 'Fizinis', NULL, 3007, NULL, 'JCCBC11G258755113', 10500, 'Nupirktas', 'Pilnas', '2019-02-15');
INSERT INTO Saskaita VALUES	(1009, 'Juridinis', NULL, NULL, 3008, 'JRABC66G359001472', 9850, 'Nupirktas', 'Pilnas', '2019-03-17');
INSERT INTO Saskaita VALUES	(1010, 'Juridinis', NULL, NULL, 3008, 'JLSGS34C213548965', 44300, 'Nupirktas', 'Pilnas', '2017-01-12');
INSERT INTO Saskaita VALUES	(1011, 'Fizinis', NULL, 3009, NULL, 'JGCAC98A218463058', 35430, 'Nupirktas', 'Pilnas', '2017-09-07');
INSERT INTO Saskaita VALUES	(1012, 'Juridinis', NULL, NULL, 3010, 'JSABC68G215800311', 15960, 'Nupirktas', 'Pilnas', '2018-02-01');
INSERT INTO Saskaita VALUES	(1013, 'Juridinis', NULL, NULL, 3011, 'JLCBC66D258003155', 16450, 'Nupirktas', 'Pilnas', '2017-12-15');
INSERT INTO Saskaita VALUES	(1014, 'Juridinis', NULL, NULL, 3011, 'JRXAW68G369021103', 98030, 'Nupirktas', 'Pilnas', '2017-01-02');


-- Mokejimas
-- Saskaita, Mokejimo_numeris, Mokama_suma, Mokejimo_data, Pilnas_mokejimas

INSERT INTO Mokejimas VALUES	(1014, 1, 98030, '2017-01-02', 'TAIP');
INSERT INTO Mokejimas VALUES	(1010, 1, 44300, '2017-01-12', 'TAIP');
INSERT INTO Mokejimas VALUES	(1001, 1, 1160, '2017-07-25', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 1, 1160, '2017-08-25', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 2, 1160, '2017-09-25', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 3, 2220, '2017-10-25', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 4, 2220, '2017-11-25', 'NE');
INSERT INTO Mokejimas VALUES	(1013, 1, 16450, '2017-12-15', 'TAIP');
INSERT INTO Mokejimas VALUES	(1001, 5, 2220, '2017-12-25', 'NE');
INSERT INTO Mokejimas VALUES	(1012, 1, 15960, '2018-02-01', 'TAIP');
INSERT INTO Mokejimas VALUES	(1001, 6, 1160, '2018-01-25', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 7, 1160, '2018-02-25', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 8, 1160, '2018-03-25', 'NE');
INSERT INTO Mokejimas VALUES	(1002, 1, 123000, '2018-04-02', 'TAIP');
INSERT INTO Mokejimas VALUES	(1000, 1, 860, '2018-04-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 9, 2220, '2018-04-25', 'NE');
INSERT INTO Mokejimas VALUES	(1000, 2, 860, '2018-05-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 10, 2220, '2018-05-25', 'NE');
INSERT INTO Mokejimas VALUES	(1000, 3, 860, '2018-06-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 11, 1160, '2018-06-25', 'NE');
INSERT INTO Mokejimas VALUES	(1000, 4, 1720, '2018-07-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 12, 2220, '2018-07-25', 'NE');
INSERT INTO Mokejimas VALUES	(1000, 5, 3440, '2018-08-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 13, 1160, '2018-08-25', 'NE');
INSERT INTO Mokejimas VALUES	(1011, 1, 35430, '2017-09-07', 'TAIP');
INSERT INTO Mokejimas VALUES	(1000, 6, 3440, '2018-09-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 14, 1160, '2018-09-25', 'NE');
INSERT INTO Mokejimas VALUES	(1003, 1, 660, '2018-10-12', 'NE');
INSERT INTO Mokejimas VALUES	(1006, 1, 9800, '2018-10-19', 'TAIP');
INSERT INTO Mokejimas VALUES	(1000, 7, 1720, '2018-10-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 15, 1160, '2018-10-25', 'NE');
INSERT INTO Mokejimas VALUES	(1003, 2, 1320, '2018-11-12', 'NE');;
INSERT INTO Mokejimas VALUES	(1000, 8, 1720, '2018-11-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 16, 2220, '2018-11-25', 'NE');
INSERT INTO Mokejimas VALUES	(1003, 3, 660, '2018-12-12', 'NE');
INSERT INTO Mokejimas VALUES	(1004, 1, 28030, '2018-12-15', 'TAIP');
INSERT INTO Mokejimas VALUES	(1000, 9, 1720, '2018-12-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 17, 2220, '2018-12-28', 'NE');
INSERT INTO Mokejimas VALUES	(1007, 1, 7300, '2018-12-30', 'TAIP');
INSERT INTO Mokejimas VALUES	(1005, 1, 58360, '2019-01-07', 'TAIP');
INSERT INTO Mokejimas VALUES	(1003, 4, 660, '2019-01-12', 'NE');
INSERT INTO Mokejimas VALUES	(1000, 10, 1720, '2019-01-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 18, 1160, '2019-01-25', 'NE');
INSERT INTO Mokejimas VALUES	(1003, 5, 1320, '2019-02-12', 'NE');
INSERT INTO Mokejimas VALUES	(1008, 1, 10500, '2019-02-15', 'TAIP');
INSERT INTO Mokejimas VALUES	(1000, 11, 860, '2019-02-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 19, 1160, '2019-02-25', 'NE');
INSERT INTO Mokejimas VALUES	(1003, 6, 1320, '2019-03-12', 'NE');
INSERT INTO Mokejimas VALUES	(1009, 1, 9850, '2019-03-17', 'TAIP');
INSERT INTO Mokejimas VALUES	(1000, 12, 860, '2019-03-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 20, 1160, '2019-03-25', 'NE');
INSERT INTO Mokejimas VALUES	(1003, 7, 660, '2019-04-12', 'NE');
INSERT INTO Mokejimas VALUES	(1000, 13, 860, '2019-04-21', 'NE');
INSERT INTO Mokejimas VALUES	(1001, 21, 1160, '2019-04-25', 'NE');
