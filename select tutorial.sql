select * 
from parks_and_recreation.employee_salary;

select first_name
from employee_salary;

select first_name, last_name, birth_date
from employee_demographics;

select first_name, last_name, birth_date,
age,
(age*10)+10
from employee_demographics;
#SQL follows PEMDAS rule i.e. parenthesis-expo-multi-div-add-sub

# Between clause
select * 
from parks_and_recreation.employee_salary
where salary between 50000 and 100000;

# IN clause - used to reduce multiple OR's 
select * 
from parks_and_recreation.employee_salary
where occupation in ("City Manager", "Office Manager", "Enterprenur");

select distinct gender
from employee_demographics;

select distinct first_name,gender
from employee_demographics;

select 44+11;
select now();
select lcase("ANURAG");


##isNULL clause

select * 
from parks_and_recreation.employee_salary
where
salary is null;


##wildcard - "_ , %"

select * 
from parks_and_recreation.employee_salary
where
first_name like '%an%';





