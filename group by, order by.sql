select *
from parks_and_recreation.employee_salary;

select gender, avg(age), max(age),min(age), count(age)
from employee_demographics
group by gender;

select * 
from employee_demographics
order by first_name desc;

select * 
from employee_demographics
order by gender,age;

# we can use positions of columns instead of thier names

select * 
from employee_demographics
order by 5,4;

#Having statement

select gender, avg(age)
from employee_demographics
group by gender
having avg(age)>40;

select occupation, avg(salary)
from employee_salary
where occupation like "%manager%"
group by occupation
having avg(salary) > 75000;

## DISTINCT keyword - gives distinct values in a column
select distinct age 
from employee_demographics;











