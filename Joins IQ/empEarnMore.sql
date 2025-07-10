-- Question:
-- Find the names of employees who earn more than their manager.
-- The Employee table has columns: id, name, salary, managerId.
-- For each employee, compare their salary with their manager's salary.
-- Return only those employees whose salary is greater than their manager's salary.

select e.name as Employee 
from Employee e
join Employee m
on e.managerId=m.id 
where e.salary>m.salary;

or

select e1.name as Employee 
from Employee e1
where salary >
(select salary from Employee where id=e1.managerId);