-- Question: Daily Active User Count
-- Task: For each day in the 30-day window ending 2019-07-27 (inclusive),
-- count the number of unique users who did at least one activity on that day.
-- Table: Activity(user_id, session_id, activity_date, activity_type)

select activity_date as day, COUNT(DISTINCT user_id) as active_users
from Activity
where activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;