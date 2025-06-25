-- string functions 

select first_name, LENGTH(first_name)
from employee_demographics
order by 2;

select first_name, upper(first_name)
from employee_demographics;

select trim('    sas     ');

select first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
substring(first_name, 3, 3),
birth_date,
substring(birth_date, 6, 2) as birth_month
from employee_demographics;

select first_name , replace(first_name, 'a', 'A')
from employee_demographics;

select first_name, locate('An', first_name)
from employee_demographics;

select first_name, last_name,
CONCAT(first_name, ' ', last_name) as full_name
from employee_demographics;













