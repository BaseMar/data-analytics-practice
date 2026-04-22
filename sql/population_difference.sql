-- Population Density Difference

-- Problem:
-- Obliczyć różnicę między największą a najmniejszą populacją w tabeli city

-- Approach:
-- Użyłem funkcji MAX() i MIN() na kolumnie population,
-- a następnie odjąłem najmniejszą wartość od największej

-- Solution:
SELECT MAX(population) - MIN(population) AS population_difference
FROM city;
