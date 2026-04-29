-- ========================
--        Info
-- ========================
-- Average Population of Each Continent
-- Direct link: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

-- ========================
--       Solution
-- ========================
select c.continent, floor(avg(CITY.Population)) as avg_population
from COUNTRY c
INNER JOIN CITY ci on c.code = ci.countrycode
GROUP BY c.Continent;
