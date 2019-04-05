CREATE TABLE anma4475.Gamintojas
(
	 Gamintojo_ID  SMALLINT   			NOT NULL		CHECK(Gamintojo_ID <= 10),
    Regionas      VARCHAR(20)       NOT NULL,
    Padalinys   	VARCHAR(15)			NOT NULL		CHECK(Padalinys = 'Toyota' OR Padalinys = 'Lexus') DEFAULT 'Toyota',    

    PRIMARY KEY  (Gamintojo_ID)
);

CREATE TABLE anma4475.Darbuotojas
(
	 Darbuotojo_ID		INT					NOT NULL,
    Vardas				VARCHAR(25)			NOT NULL,
    Pavarde				VARCHAR(25)			NOT NULL,
    Asmens_kodas		VARCHAR(25)			NOT NULL,
   
    PRIMARY KEY		(Darbuotojo_ID)
);

CREATE TABLE anma4475.Fizinis
(
	 Fizinis_ID		INT					NOT NULL,		--CHECK(Tiekejo_ID >=4000),
    Vardas			VARCHAR(25)			NOT NULL,
    Pavarde			VARCHAR(25)			NOT NULL,
    Asmens_kodas	VARCHAR(25)			NOT NULL,
    
    PRIMARY KEY		(Fizinis_ID)
);

CREATE TABLE anma4475.Juridinis
(
	 Juridinis_ID		INT					NOT NULL,		--CHECK(Tiekejo_ID >=4000),
    Imone				VARCHAR(30)			NOT NULL,
    Imones_kodas		VARCHAR(25)			NOT NULL,
    
    PRIMARY KEY		(Juridinis_ID)
);


CREATE TABLE anma4475.Pirkejas
(
	 Pirkejo_ID		INT					NOT NULL,		--CHECK(Pirkejo_ID >=3000),
    Vardas			VARCHAR(25)			NOT NULL,
    Pavarde			VARCHAR(25)			NOT NULL,
    Konsultantas	SMALLINT				NOT NULL,
    Asmens_kodas	VARCHAR(25)			NOT NULL,
   
    PRIMARY KEY		(Pirkejo_ID)
);


CREATE TABLE anma4475.Automobilis 
( 
    Marke         	VARCHAR(11) 	NOT NULL,
    Modelis     		VARCHAR(20) 	NOT NULL,
    Metai       		SMALLINT  		NOT NULL		CHECK(Metai <= date_part('year', current_date) + 1) DEFAULT 2019,
    Gamintojas			SMALLINT			NOT NULL		CHECK(Gamintojas <= 6),
    Numatoma_kaina	INT				NOT NULL,  
    Statusas			VARCHAR(20)		NOT NULL		CHECK(Statusas = 'Parduota' OR Statusas = 'Sandelyje'),  
    VIN_numeris   	VARCHAR(20)		NOT NULL,

    PRIMARY KEY  (VIN_numeris),
    FOREIGN KEY  (Gamintojas) REFERENCES anma4475.Gamintojas ON DELETE CASCADE 
);


CREATE TYPE	saskaitosEnum	AS ENUM ('Pirkejas', 'Fizinis', 'Juridinis');
CREATE TABLE anma4475.Saskaita
(
	 Saskaitos_ID			INT				NOT NULL,
	 SaskaitosKlientas	saskaitosEnum	NOT NULL,
	 Pirkejo_ID				INT,
	 Fizinio_ID				INT,
	 Juridinio_ID			INT,
	 VIN_numeris			VARCHAR(20)		NOT NULL,
	 Kaina					INT				NOT NULL		CHECK(Kaina < 170000),
	 Tipas					VARCHAR(20)		NOT NULL,
	 Mokejimas				VARCHAR(20)		NOT NULL		CHECK(Mokejimas = 'Pilnas' OR Mokejimas = 'Lizingas') DEFAULT 'Lizingas',
	 Israsymo_data			DATE				NOT NULL,
	
	 PRIMARY KEY (Saskaitos_ID),
	 FOREIGN KEY (VIN_numeris) REFERENCES anma4475.Automobilis	ON DELETE CASCADE,
	 FOREIGN KEY (Pirkejo_ID) REFERENCES anma4475.Pirkejas	ON DELETE CASCADE,
	 FOREIGN KEY (Fizinio_ID) REFERENCES anma4475.Fizinis	ON DELETE CASCADE,
	 FOREIGN KEY (Juridinio_ID) REFERENCES anma4475.Juridinis	ON DELETE CASCADE
);

CREATE TABLE anma4475.Mokejimas
(
    Saskaita			SMALLINT			NOT NULL,
    Mokejimo_numeris	SMALLINT			NOT NULL,
    Mokama_suma		INT				NOT NULL,
	 Mokejimo_data		DATE				NOT NULL,
	 Pilnas_mokejimas	VARCHAR(5)		NOT NULL		CHECK(Pilnas_mokejimas = 'TAIP' OR Pilnas_mokejimas = 'NE') DEFAULT 'NE',
	 
	 PRIMARY KEY	(Saskaita, Mokejimo_numeris),
	 FOREIGN KEY	(Saskaita)	REFERENCES anma4475.Saskaita ON DELETE CASCADE 

);

