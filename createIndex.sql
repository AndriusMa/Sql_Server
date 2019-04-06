CREATE INDEX		Pirkejui      ON anma4475.Pirkejas(Vardas, Pavarde);
CREATE INDEX		Darbuotojui    ON anma4475.Darbuotojas(Vardas, Pavarde);
CREATE UNIQUE INDEX Mokejimams    ON anma4475.Mokejimai(Saskaita, Mokejimo_numeris);
CREATE UNIQUE INDEX Automobiliui ON anma4475.Automobilis(VIN_numeris);
