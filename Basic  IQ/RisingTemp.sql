-- Question: Higher Temperatures Than Previous Day
-- Task: Get ids of dates with temperature higher than the previous date (yesterday).
-- Table: Weather(id, recordDate, temperature)
SELECT w1.id
FROM Weather as w1
JOIN Weather as w2
    ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;

--DATEDIFF is used to find the difference in days between two dates.