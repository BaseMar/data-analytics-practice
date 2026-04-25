-- ========================
--        Info
-- ========================
-- The PADS
-- Direct link: https://www.hackerrank.com/challenges/the-pads/problem

-- ========================
--       Solution
-- ========================
select CONCAT(NAME, '(', LEFT(OCCUPATION , 1), ')')
from OCCUPATIONS
ORDER by name ASC;

SELECT CONCAT('There are a total of ',COUNT(OCCUPATION),' ',LOWER(OCCUPATION),'s.')
from OCCUPATIONS
group by OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;
