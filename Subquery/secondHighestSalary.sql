--most optimal
SELECT MAX(salary) as SecondHighestSalary
from Employees
where salary <
(SELECT MAX(salary) from Employees);

select salary as SecondHighestSalary
from Employees
order by salary desc
limit 1 offset 1;

select max(salary) as SecondHighestSalary
from Employees
where salary not in 
(select max(salary) from Employees);

