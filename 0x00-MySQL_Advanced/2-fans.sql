-- Task 2  Best band ever!
-- A script that imports a sql dump file and Reads data to stdout

SELECT origin AS origin, fans AS nb_fans from metal_bands ORDER BY nb_fans DESC;