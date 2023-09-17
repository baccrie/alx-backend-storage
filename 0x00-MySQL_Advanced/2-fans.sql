-- Task 2  Best band ever!
-- A script that imports a sql dump file and Reads data to stdout

SELECT origin AS origin, SUM(fans) AS nb_fans from metal_bands GROUP BY origin ORDER BY nb_fans DESC;