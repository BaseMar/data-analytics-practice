-- ========================
--        Info
-- ========================
-- Population Census
-- Direct link: https://www.hackerrank.com/challenges/asian-population/problem

-- ========================
--       Solution
-- ========================
SELECT sum(CITY.population)
FROM COUNTRY c
INNER JOIN CITY ci ON c.Code = ci.CountryCode
WHERE CONTINENT = 'Asia';
