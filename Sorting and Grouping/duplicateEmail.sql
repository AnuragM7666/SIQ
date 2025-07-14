-- Question: Write a query to find all email addresses in the Person table that occur more than once.
-- This identifies duplicate email entries.

select email
from Person
group by email
having count(email) > 1;