-- Problem: Find the largest number in the MyNumbers table that appears only once (single number).
-- A single number is defined as one that occurs exactly once in the table.
-- If no such number exists, the query should return NULL.
-- The table may contain duplicates and has no primary key.
-- This solution uses GROUP BY and HAVING to filter single numbers and selects the maximum.


select max(num) as num from 
(
    select num 
    from mynumbers
    group by num
    having count(num)=1
) as num;