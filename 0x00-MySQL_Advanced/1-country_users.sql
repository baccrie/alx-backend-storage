-- Task 1 In and not out
-- A script that creates a sql table users with conraints

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') DEFAULT 'US' NOT NULL,
    PRIMARY KEY (id)
    );