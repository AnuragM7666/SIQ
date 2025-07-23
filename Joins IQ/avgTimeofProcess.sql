-- Problem: Calculate the average processing time per machine.
--
-- Table: Activity
-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | machine_id     | int     |
-- | process_id     | int     |
-- | activity_type  | enum    | -- either 'start' or 'end'
-- | timestamp      | float   |
-- +----------------+---------+
-- (machine_id, process_id, activity_type) is the primary key.
--
-- Each machine runs multiple processes, and each process has exactly two entries:
-- one with activity_type = 'start' and one with activity_type = 'end'.
-- It is guaranteed that the 'start' timestamp is always less than the 'end' timestamp
-- for each (machine_id, process_id) pair.
--
-- Task:
-- - For each machine, calculate the average time it takes to complete a process.
-- - The time to complete a process is defined as (end.timestamp - start.timestamp).
-- - The average time for a machine is the sum of all process durations on that machine
--   divided by the number of processes it has completed.
-- - Return a result table with the columns:
--     1. machine_id
--     2. processing_time (average time rounded to 3 decimal places)
--
-- Constraints:
-- - Return the result in any order.
-- - Round the average processing time to 3 decimal places.

select machine_id,
    round(avg(end_time - start_time), 3) as average_processing_time
from Activity a1
join Activity a2
on a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id
AND a1.activity_type = 'start'
AND a2.activity_type = 'end'
group by a1.machine_id;