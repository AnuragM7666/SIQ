-- Problem: Find all customers from the Customers table who have never placed any orders.
-- The Customers table has columns: id, name.
-- The Orders table has columns: id, customerId.
-- Return the names of customers who do not have any corresponding entries in the Orders table.
-- The result can be returned in any order.

-- better and expected
select c.name as Customer
from Customers c    
where not exists (
    select 1 -- Not exists is TRUE only if the subquery returns no rows.
    from Orders o 
    where o.customerId = c.id
);

or
-- also good 
select c.name as Customer
from Customers c
left join Orders o
on c.id = o.customerId
where o.id is null;

select name as Customer
from Customers
where id not in (select customerId from Orders);
--less efficient if orders.customerId contains null values