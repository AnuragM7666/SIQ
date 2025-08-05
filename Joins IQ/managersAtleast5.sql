-- SQL Question: Find all managers who have at least five direct reports.
-- Table: Employee (id INT, name VARCHAR, department VARCHAR, managerId INT)
-- An employee is a direct report of a manager if the employee's managerId is equal to the manager's id.
-- Return the id and name of managers who have 5 or more employees reporting directly to them.
-- The result can be returned in any order.

select e1.name 
from Employee e1
join Employee e2
on e1.id=e2.managerID
group by e1.id,e1.name
having count(e2.managerId)>=5;