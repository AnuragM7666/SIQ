-- Question: Report Customer Visits Without Transactions
-- Task: Join Visits and Transactions tables to find customers who visited the mall without making any transactions,
--       and count the number of such visits for each customer.
-- Tables: 
--   Visits(visit_id, customer_id)
--   Transactions(transaction_id, visit_id, amount)


select v.customer_id, count(v.visit_id) as visit_count
from Visits v
left join Transactions t
on v.visit_id = t.visit_id
where t.transaction_id is null
group by v.customer_id;