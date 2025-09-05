-- Question: Write a query to find all email addresses in the Person table that occur more than once.
-- This identifies duplicate email entries.

--faster , optimal
select email
from Person
group by email
having count(email) > 1;

-- cleaner due to sub query
select email from Person 
where email in(
    select email from Person
    group by email
    having count(email) > 1
);
