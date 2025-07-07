-- You have a table Pairs with columns id, col1, and col2.
-- Some rows are reverse pairs (same two values, but col1 and col2 swapped).
-- Write a SQL query to remove duplicates so that for any pair (X, Y) and (Y, X), only one remains in the result.

--using joins
select lt.* 
from pairs lt 
left join pairs rt 
on lt.col1 = rt.col2 and lt.col2 = rt.col1
where lt.id < rt.id or rt.id is null
order by lt.id;

-- using corelated subquery
select p1.*
from pairs p1
where not exists (
    select *
    from pairs p2
    where p1.col1 = p2.col2 and p1.col2 = p2.col1 and p1.id < p2.id
)