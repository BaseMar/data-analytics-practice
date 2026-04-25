-- ========================
--        Info
-- ========================
-- Weather Observation Station 3
-- Direct link: https://www.hackerrank.com/challenges/weather-observation-station-3/problem

-- ========================
--       Solution
-- ========================
SELECT DISTINCT city
FROM station
WHERE MOD(id, 2) = 0;
