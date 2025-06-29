-- Question: Fix Names Capitalization
-- Task: Format names so first character is uppercase, others lowercase.
-- Table: Users(user_id, name)
-- Output: Ordered by user_id.

select user_id,
        CONCAT(
            UPPER(left(name, 1)), LOWER(SUBSTRING(name, 2))
            ) as name
from Users
order by user_id;