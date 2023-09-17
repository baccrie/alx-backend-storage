-- Email validation to sent
-- A script that validates the email_validation column after anu update

DELIMETER $$
CREATE TRIGGER email_validation BEFORE UPDATE
ON users
FOR EACH ROW
    BEGIN
        IF NEW.email = OLD.email
        THEN
            SET NEW.valid_email = 1
        END IF
    END
$$
DELIMETER ;