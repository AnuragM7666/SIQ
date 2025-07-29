-- How many followers does each user have in the Followers table, 
-- considering each (user_id, follower_id) pair represents one follower following a user?
-- Can we return the count of followers per user, grouped by user_id and sorted in ascending order?

select user_id, COUNT(follower_id) as followers_count
from Followers
GROUP BY user_id
ORDER BY user_id ASC;