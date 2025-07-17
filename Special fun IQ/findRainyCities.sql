-- 📌 Problem:
-- Find all distinct cities that have recorded rainfall greater than 100mm
-- in the last 10 years from today.
-- 
-- Table: Weather
-- Columns:
--   - city VARCHAR
--   - date DATE
--   - rain FLOAT (or INT)
--
-- 🔍 Return:
-- A list of unique city names where rain > 100mm within the last 10 years.

select distinct city
from Weather 
where rain >100
and date>=date_sub(now(), interval 10 year); -- curdate() can also be used instead of now()
    