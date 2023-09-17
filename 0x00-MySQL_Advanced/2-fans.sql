-- Task 2  Best band ever!
-- A script that imports a sql dump file and Reads data to stdout

CREATE TABLE IF NOT EXISTS users (
    SELECT country as origin, fans as nb_fans from metal_bands ORDER BY fans DESC;
    );