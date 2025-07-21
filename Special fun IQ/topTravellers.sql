-- Write an SQL query to report the distance travelled by each user.
-- Return each user's name and the total distance travelled by that user.
-- If a user did not travel any distance, their travelled distance should be reported as 0.
-- Order the result by travelled distance in descending order, and by name in ascending order.

select u.name, 
COALESCE(sum(t.distance), 0) as travelled_distance
from Users u
left join Trips t on u.id = t.user_id
group by u.id
order by travelled_distance desc, u.name asc;