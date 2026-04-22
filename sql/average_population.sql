-- Average Population

-- Problem:
-- Obliczyć średnią populację wszystkich miast

-- Approach:
-- Użyłem funkcji AVG() na kolumnie population

SELECT AVG(population) AS avg_population
FROM city;
