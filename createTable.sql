CREATE TABLE anma4475.Gamintojas
(
	 Gamintojo_ID  SMALLINT   			NOT NULL		CONSTRAINT tinkamasGamintojas CHECK(Gamintojo_ID <= 6),
    Regionas      VARCHAR(20)       NOT NULL,
    Padalinys   	VARCHAR(15)			NOT NULL		CONSTRAINT tinkamasPadalinys CHECK(Padalinys = 'Toyota' OR Padalinys = 'Lexus') DEFAULT 'Toyota',    

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
	 Fizinio_ID		SERIAL				NOT NULL,
    Vardas			VARCHAR(25)			NOT NULL,
    Pavarde			VARCHAR(25)			NOT NULL,
    Asmens_kodas	VARCHAR(25)			NOT NULL,
    
    PRIMARY KEY		(Fizinio_ID)
);
ALTER SEQUENCE anma4475.Fizinis_Fizinio_id_seq RESTART WITH 5000 INCREMENT BY 1;

CREATE TABLE anma4475.Juridinis
(
	 Juridinio_ID		SERIAL				NOT NULL,
    Imone				VARCHAR(30)			NOT NULL,
    Imones_kodas		VARCHAR(25)			NOT NULL,
    
    PRIMARY KEY		(Juridinio_ID)
);
ALTER SEQUENCE anma4475.Juridinis_Juridinio_id_seq RESTART WITH 4000 INCREMENT BY 1;


CREATE TABLE anma4475.Pirkejas
(
	 Pirkejo_ID		SERIAL					NOT NULL,
    Vardas			VARCHAR(25)				NOT NULL,
    Pavarde			VARCHAR(25)				NOT NULL,
    Konsultantas	SMALLINT					NOT NULL,
    Asmens_kodas	VARCHAR(25)				NOT NULL,
   
    PRIMARY KEY		(Pirkejo_ID)
);
ALTER SEQUENCE anma4475.Pirkejas_Pirkejo_id_seq RESTART WITH 3000 INCREMENT BY 1;

CREATE TABLE anma4475.Automobilis 
( 
    Marke         	VARCHAR(11) 	NOT NULL,
    Modelis     		VARCHAR(20) 	NOT NULL,
    Metai       		SMALLINT  		NOT NULL		CONSTRAINT tinkamiMetai CHECK(Metai <= date_part('year', current_date) + 1) DEFAULT 2019,
    Gamintojas			SMALLINT			NOT NULL,
    Numatoma_kaina	INT				NOT NULL,  
    Statusas			VARCHAR(20)		NOT NULL		CONSTRAINT tinkamasStatusas CHECK(Statusas = 'Parduota' OR Statusas = 'Sandelyje'),  
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
	 Kaina					INT				NOT NULL		CONSTRAINT tinkamaKaina CHECK(Kaina < 170000),
	 Tipas					VARCHAR(20)		NOT NULL,
	 Mokejimas				VARCHAR(20)		NOT NULL		CONSTRAINT tinkamasMokejimoBudas CHECK(Mokejimas = 'Pilnas' OR Mokejimas = 'Lizingas') DEFAULT 'Lizingas',
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
	 Pilnas_mokejimas	VARCHAR(5)		NOT NULL		CONSTRAINT tinkamasAtsiskaitymoBudas CHECK(Pilnas_mokejimas = 'TAIP' OR Pilnas_mokejimas = 'NE') DEFAULT 'NE',
	 
	 PRIMARY KEY	(Saskaita, Mokejimo_numeris),
	 FOREIGN KEY	(Saskaita)	REFERENCES anma4475.Saskaita ON DELETE CASCADE 

);

