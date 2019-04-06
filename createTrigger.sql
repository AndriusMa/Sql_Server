-- Uztikrina, kad mokejimas neivyktu anksciaus uz saskaitos israsymo data

CREATE FUNCTION neleistiMoketi() RETURNS "trigger" AS 
$$
	BEGIN
		IF NEW.Mokejimo_data < (SELECT (Israsymo_data) FROM anma4475.Saskaita WHERE Saskaitos_ID = NEW.Saskaita)
			THEN RAISE EXCEPTION 'Mokejimo data yra ankstesne uz saskaitos israsymo data!';
		END IF;
		RETURN NEW;
	END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER triggerMokejimas
	BEFORE INSERT OR UPDATE 
	ON anma4475.Mokejimas
	FOR EACH ROW 
	EXECUTE PROCEDURE neleistiMoketi();
	
-- Uztikrina, kad tas pats automobilis nebutu parduotas dviem pirkejam(pridedant nauja pirkeja)

CREATE FUNCTION neleistiParduotiDviem() RETURNS "trigger" AS 
$$
	BEGIN
		IF (SELECT COUNT(VIN_numeris) FROM anma4475.Automobilis 
			WHERE NEW.VIN_numeris = VIN_numeris AND Statusas = 'Parduota') >= 1
			THEN RAISE EXCEPTION 'Toks automobilis jau yra parduotas!';
		END IF;
		RETURN NEW;
	END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER triggerParduotiDviem
	BEFORE INSERT OR UPDATE ON anma4475.Automobilis
	FOR EACH ROW EXECUTE PROCEDURE neleistiParduotiDviem();


-- Uztikrina, kad jeigu tai Toyota, ji turi but is nelygines gamyklos(1,3,5)

CREATE FUNCTION numerisToyota() RETURNS "trigger" AS 
$$
	BEGIN
		IF (NEW.Marke = 'Toyota' AND (NEW.Gamintojas != 1 OR NEW.Gamintojas != 3 OR NEW.Gamintojas != 5))
			THEN RAISE EXCEPTION 'Gamintojo numeris nesutampa su marke!';
		END IF;
		RETURN NEW;
	END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER triggerToyota
	BEFORE INSERT OR UPDATE ON anma4475.Automobilis
	FOR EACH ROW EXECUTE PROCEDURE numerisToyota();

-- Uztikrina, kad jeigu tai Lexus, ji turi but is lygines gamyklos(2,4,6)

CREATE FUNCTION numerisLexus() RETURNS "trigger" AS 
$$
	BEGIN
		IF (NEW.Marke = 'Lexus' AND (NEW.Gamintojas != 2 OR NEW.Gamintojas != 4 OR NEW.Gamintojas != 6))
			THEN RAISE EXCEPTION 'Gamintojo numeris nesutampa su marke!';
		END IF;
		RETURN NEW;
	END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER triggerLexus
	BEFORE INSERT OR UPDATE ON anma4475.Automobilis
	FOR EACH ROW EXECUTE PROCEDURE numerisLexus();

