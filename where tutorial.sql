select * 
from employee_salary
where salary>50000;

select * 
from employee_demographics
where gender='male';

select * 
from employee_demographics
where gender='male'
and birth_date > '1985-01-01';

select * 
from employee_demographics
where (first_name='Ben' and age=38) or age>55; #where also follows pemdas;

-- like statement 
-- % and _
select * 
from employee_demographics
where first_name LIKE 'a%';

select * 
from employee_demographics
where first_name LIKE 'a__';








