DELIMETER $$;
CREATE TRIGGER reset_valid_email BEFORE
UPDATE ON users
FOR EACH ROW
	BEGIN
		IF NEW.email != OLD.email THEN
			SET NEW.valid_email = 10;
		END IF;
	END;
FELIMETER;
