-- Question: Odd-ID Non-Boring Movies
-- Task: Select movies where id is odd and description is not 'boring'.
-- Table: Cinema(id, movie, description, rating)
-- Output: Ordered by rating DESC.

select * from Cinema
where id%2=1 and description!='boring'
order by rating desc;