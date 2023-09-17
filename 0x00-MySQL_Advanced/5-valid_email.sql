-- Email validation to sent
-- A script that validates the email_validation column after anu update

DELIMITER $$ 
CREATE TRIGGER email_trigger
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
        IF NEW.email <> OLD.email
        THEN
            SET NEW.valid_email = 0;
        END IF;
    END
$$
DELIMETER ;