select d.name as Department,  e.name as Employee, e.salary as salary
from Employees e 
join Department d
on e.DeptId=d.id 
where e.salary in(
    select max(salary) from Employee
    where DeptId=e.DeptId
);