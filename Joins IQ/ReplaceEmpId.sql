-- Q: Employee Unique IDs
-- Show each employee's name and their unique_id (null if missing).
-- Table: Employee(employee_id, name, unique_id)

select em.unique_id , e.name
from Employees e 
left join EmployeeUNI em
on e.id=em.id;