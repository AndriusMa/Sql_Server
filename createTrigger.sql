-- Uztikrina, kad mes(atstovybe) nenupirktume to pacio automobilio dukart

CREATE FUNCTION neleistiPirktiDviem() RETURNS "trigger" AS 
$$
	BEGIN
		IF (SELECT COUNT(VIN_numeris) FROM anma4475.Automobilis 
			WHERE NEW.VIN_numeris = VIN_numeris) >= 1
			THEN RAISE EXCEPTION 'Toks automobilis jau yra nupirktas!';
		END IF;
		RETURN NEW;
	END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER triggerPirktiDviem
	BEFORE UPDATE 
	ON anma4475.Automobilis
	FOR EACH ROW 
	EXECUTE PROCEDURE neleistiPirktiDviem();
	
-- Uztikrina, kad tas pats automobilis nebutu parduotas dviem pirkejam(pridedant nauja pirkeja)

CREATE FUNCTION neleistiParduotiDviem() RETURNS "trigger" AS 
$$
	BEGIN
		IF (SELECT COUNT(VIN_numeris) FROM anma4475.Automobilis 
			WHERE NEW.VIN_numeris = VIN_numeris AND Statusas = 'Parduotas') >= 1
			THEN RAISE EXCEPTION 'Toks automobilis jau yra parduotas!';
		END IF;
		RETURN NEW;
	END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER triggerParduotiDviem
	BEFORE UPDATE 
	ON anma4475.Automobilis
	FOR EACH ROW 
	EXECUTE PROCEDURE neleistiParduotiDviem();

-- Uztikrina, kad jeigu tai Toyota, ji turi but is nelygines gamyklos(1,3,5)

CREATE FUNCTION numerisToyota() RETURNS "trigger" AS 
$$
	BEGIN
		IF ((NEW.Marke = 'Toyota') AND NEW.Gamintojas != 1 OR NEW.Gamintojas != 3 OR NEW.Gamintojs != 5)
			THEN RAISE EXCEPTION 'Gamintojo numeris nesutampa su marke!';
		END IF;
		RETURN NEW;
	END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER triggerToyota
	BEFORE INSERT OR UPDATE 
	ON anma4475.Automobilis
	FOR EACH ROW 
	EXECUTE PROCEDURE numerisToyota();
	
-- Uztikrina, kad jeigu tai Lexus, ji turi but is lygines gamyklos(2,4,6)

CREATE FUNCTION numerisLexus() RETURNS "trigger" AS 
$$
	BEGIN
		IF ((NEW.Marke = 'Lexus') AND NEW.Gamintojas != 2 OR NEW.Gamintojas != 4 OR NEW.Gamintojs != 6)
			THEN RAISE EXCEPTION 'Gamintojo numeris nesutampa su marke!';
		END IF;
		RETURN NEW;
	END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER triggerLexus
	BEFORE INSERT OR UPDATE 
	ON anma4475.Automobilis
	FOR EACH ROW 
	EXECUTE PROCEDURE numerisLexus();
	
	

