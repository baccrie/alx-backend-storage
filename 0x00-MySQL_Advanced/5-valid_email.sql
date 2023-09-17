
DELIMETER $$
CREATE TRIGGER email_validation AFTER UPDATE
ON users
FOR EACH ROW
    BEGIN
    
    SET NEW.valid_email = 1
    where old.email != NEW.email;

    END 
$$
DELIMETER ;