
-- Tables:
-- Signups(user_id INT PRIMARY KEY, time_stamp DATETIME)
-- Confirmations(user_id INT, time_stamp DATETIME, action ENUM('confirmed', 'timeout'))
--   - (user_id, time_stamp) is the primary key
--   - user_id is a foreign key referencing Signups(user_id)
-- 
-- Goal:
-- For each user, calculate their confirmation rate.
-- Confirmation rate = (Number of 'confirmed' confirmations) / (Total confirmation requests)
-- If a user made no confirmation requests, their confirmation rate is 0.
-- Round the confirmation rate to 2 decimal places.
-- Return the user_id and their confirmation_rate.

select s.user_id ,  ROUND(IFNULL(avg(IF(c.action = 'confirmed', 1, 0)),0), 2) AS confirmation_rate
from Signups s
left join Confirmations c
on s.user_id=c.user_id
group by s.user_id;