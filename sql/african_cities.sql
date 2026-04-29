-- ========================
--        Info
-- ========================
-- African Cities
-- Direct link: https://www.hackerrank.com/challenges/african-cities/problem

-- ========================
--       Solution
-- ========================
SELECT ci.name
FROM COUNTRY c
INNER JOIN CITY ci ON c.code = ci.countrycode
WHERE c.CONTINENT = 'Africa';
