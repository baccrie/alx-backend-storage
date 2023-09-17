-- Task 0 we are all unique
-- A script that creates a sql table users

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
    );