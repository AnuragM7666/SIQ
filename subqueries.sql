-- subqueries

select * 
from employee_demographics
where employee_id in 
(select employee_id
from employee_salary 
where dept_id=1)
;

select first_name, salary, 
(select avg(salary)
from employee_salary)
from employee_salary;

select avg(max_age)
from 
(select gender, 
avg(age) as avg_age, max(age) as max_age,
min(age) as min_age, count(age)
from employee_demographics
group by gender) as aggr_table
;

#corelated subquery

SELECT s1.employee_id, s1.first_name, s1.last_name, s1.salary, s1.dept_id
FROM employee_salary s1
WHERE s1.salary > (
    SELECT AVG(s2.salary)
    FROM employee_salary s2
    WHERE s2.dept_id = s1.dept_id
);















