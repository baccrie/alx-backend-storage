-- Email validation to sent
-- A script that validates the email_validation column after anu update

DELIMETER $$
CREATE TRIGGER email_validation AFTER UPDATE
ON users
FOR EACH ROW
    BEGIN
    
    SET NEW.valid_email = 0
    where old.email <> NEW.email;

    END 
$$
DELIMETER ;