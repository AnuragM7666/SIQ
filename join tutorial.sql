#inner join
select * 
from employee_demographics as em_d
inner join employee_salary as sal 
ON em_d.employee_id=sal.employee_id; #returns common or matching data

select em_d.employee_id, age ,occupation
from employee_demographics as em_d
inner join employee_salary as sal 
ON em_d.employee_id=sal.employee_id;

#outer join

select * 
from employee_demographics as em_d
LEFT join employee_salary as sal 
ON em_d.employee_id=sal.employee_id;

select * 
from employee_demographics as em_d
RIGHT join employee_salary as sal 
ON em_d.employee_id=sal.employee_id;

#full join
SELECT *
FROM employee_demographics AS em_d
LEFT JOIN employee_salary AS sal ON em_d.employee_id = sal.employee_id

UNION

SELECT *
FROM employee_demographics AS em_d
RIGHT JOIN employee_salary AS sal ON em_d.employee_id = sal.employee_id;


#Self join

select * 
from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id+2 = emp2.employee_id;

select emp1.employee_id as emp_santa,
emp1.first_name as santa_name,
emp1.last_name as santa_surname,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id+1 = emp2.employee_id;

#joining multiple tables

select * 
from employee_demographics as em_d
inner join employee_salary as sal 
ON em_d.employee_id=sal.employee_id
inner join parks_departments as pd
on sal.dept_id = pd.department_id;

#join without join keyword(inner join)

select *
from employee_demographics as em_d, employee_salary as sal
where em_d.employee_id=sal.employee_id;




















