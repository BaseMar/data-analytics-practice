-- ========================
--        Title
-- ========================
-- Weather Observation Station 4
-- Direct Link: https://www.hackerrank.com/challenges/weather-observation-station-4/problem

-- ========================
--       Solution
-- ========================
SELECT COUNT(city) - COUNT(DISTINCT city) AS diff
FROM station;
