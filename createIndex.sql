CREATE INDEX        Darbuotojui      ON juva9765.Darbuotojas(Vardas, Pavarde);
CREATE UNIQUE INDEX KlientuiTelNr    ON juva9765.Klientas(Tel_Nr);
CREATE UNIQUE INDEX KomandaiKlientas ON juva9765.Komanda(Kliento_AK);
CREATE UNIQUE INDEX KomandaiPav      ON juva9765.Komanda(Pavadinimas);
