-- Question: Find the first login date for each player.
-- 
-- Table: Activity
-- Columns:
--   - player_id (int)
--   - device_id (int)
--   - event_date (date)
--   - games_played (int)
-- 
-- (player_id, event_date) is the primary key.
-- Each row represents a player's activity on a certain date using a certain device.
-- 
-- Task: Write a query to return each player's first login date.
-- Return the result with columns (player_id, first_login).

select player_id, min(event_date) as first_login
from Activity
group by player_id
order by player_id;