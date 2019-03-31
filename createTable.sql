CREATE TABLE anma4475.Automobilis 
( 
    Marke         	VARCHAR(11) 	NOT NULL,
    Metai       		SMALLINT  		NOT NULL		CONSTRAINT CHECK(Metai <= date_part('year', current_date) + 1)) DEFAULT 2019,
    Modelis     		VARCHAR(20) 	NOT NULL,
    Gamintojas			SMALLINT			NOT NULL		CONSTRAINT CHECK(Gamintojas <= 10),
    Numatoma_kaina	SMALLINT			NOT NULL,    
    VIN_numeris   	VARCHAR(20)		NOT NULL,

    PRIMARY KEY  (VIN_numeris),
    FOREIGN KEY  (VIN_numeris) REFERENCES anma4475.Saskaita		ON DELETE SET CASCADE
);


CREATE TABLE anma4475.Gamintojas
(
    Regionas      VARCHAR(20)       NOT NULL,
    Gamintojo_ID  SMALLINT   			NOT NULL		CONSTRAINT CHECK(Gamintojo_ID <= 10),
    Padalinys   	VARCHAR(15)			NOT NULL		CONSTRAINT CHECK(Padalinys = 'Toyota' OR Padalinys = 'Lexus') DEFAULT 'Toyota',    

    PRIMARY KEY  (Gamintojo_ID),
    FOREIGN KEY  (Gamintojo_ID) REFERENCES anma4475.Automobilis	ON DELETE SET CASCADE
);


CREATE TABLE anma4475.Saskaita 
(
	 Pirkejas			SMALLINT			NOT NULL,
	 Saskaitos_ID		SMALLINT			NOT NULL,
	 VIN_numeris		VARCHAR(20)		NOT NULL,
	 Kaina				INT				NOT NULL		CONSTRAINT CHECK(Kaina < 170000),
	 Tipas				VARCHAR(20)		NOT NULL		CONSTRAINT CHECK(Tipas = 'Pilnas' OR Tipas = 'Lizingas') DEFAULT 'Lizingas',
	 Israsymo_data		DATE				NOT NULL,
	
	 PRIMARY KEY	(Saskaitos_ID),
	 FOREIGN KEY (Saskaitos_ID)	REFERENCES anma4475.Mokejimas		ON DELETE SET CASCADE,
	 FOREIGN KEY (Pirkejas)	REFERENCES anma4475.Pirkejas, anma4475.Tiekejas 	ON DELETE SET CASCADE
);


CREATE TABLE anma4475.Mokejimas
(
    Saskaita			SMALLINT			NOT NULL,
    Mokejimo_numeris	SMALLINT			NOT NULL,
    Mokama_suma		INT				NOT NULL,
	 Mokejimo_data		DATE				NOT NULL,
	 Pilnas_mokejimas	VARCHAR(5)		NOT NULL		CONSTRAINT CHECK(Pilnas_mokejimas = 'TAIP' OR Pilnas_mokejimas = 'NE') DEFAULT 'NE',
	 
	 PRIMARY KEY	(Saskaita, Mokejimo_numeris),	 
);


CREATE TABLE anma4475.Pirkejas
(
    Vardas			VARCHAR(25)			NOT NULL,
    Pavarde			VARCHAR(25)			NOT NULL,
    Konsultantas	SMALLINT				NOT NULL,
    Pirkejo_ID		SMALLINT				NOT NULL,
    Asmens_kodas	SMALLINT				NOT NULL,
   
    PRIMARY KEY		(Pirkejo_ID),
    FOREIGN KEY		(Konsultantas)		REFERENCES anma4475.Darbuotojas	ON DELETE SET CASCADE 
);


CREATE TABLE anma4475.Tiekejas
(
    Tiekejo_ID			SMALLINT			NOT NULL,
    Telefono_numeris	VARCHAR(15)		NOT NULL,
    El_pastas			VARCHAR(40)		NOT NULL,
    
    PRIMARY KEY		(Tiekejo_ID),
    FOREIGN KEY		(Tiekejo_ID)	REFERENCES anma4475.Fizinis, anma4475.Juridinis		ON DELETE SET CASCADE
);


CREATE TABLE anma4475.Fizinis
(
    Vardas			VARCHAR(25)			NOT NULL,
    Pavarde			VARCHAR(25)			NOT NULL,
    Asmens_kodas	VARCHAR(12)			NOT NULL,
    Tiekejo_ID		SMALLINT				NOT NULL,
    
    PRIMARY KEY		(Tiekejo_ID)
);


CREATE TABLE anma4475.Juridinis
(
    Imone			VARCHAR(30)			NOT NULL,
    Imones_kodas	INT					NOT NULL,
    Tiekejo_ID		SMALLINT				NOT NULL,
    
    PRIMARY KEY		(Tiekejo_ID)
);


