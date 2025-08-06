-- Problem: Find IDs of employees whose salary is strictly less than $30000 
-- and whose manager has left the company.
-- A manager is considered to have left if their employee_id is not found 
-- in the current Employees table, even though the employee's manager_id still references them.
-- This query handles such cases safely using a LEFT JOIN to identify missing managers.
-- Result is ordered by employee_id as required.

select employee_id 
from Employees
where 
salary<30000
and manager_id is not null
and manager_id not in (
    select employee_id from Employees
)
order by employee_id;

-- better option
select e.employee_id 
from Employees e
left join Employees m
on e.manager_id=m.employee_id
where salary<30000
and e.manager_id is not null
and m.employee_id is null
order by e.employee_id;