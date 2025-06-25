##insert

select * 
from parks_and_recreation.employee_demographics;

INSERT INTO employee_demographics 
VALUES (101, 'Andy', 'Panda', 30, 'Male', '1994-05-10');

#update

update employee_demographics set age=21, birth_date='2004-09-06'
where first_name='Andy';

#updating an entire column of all rows

set sql_safe_updates=0; 
#Disables MySQL’s "safe updates" mode, which prevents accidental full-table updates/deletes without a WHERE clause or LIMIT
update employee_demographics set gender="Male";

#delete 

delete from employee_demographics 
where employee_id=69;

-- ✅ Manually delete dependent row from salary_info before deleting from employee_demographics
DELETE FROM employee_salary WHERE employee_id = 69;
DELETE FROM employee_demographics WHERE employee_id = 69;

#replace

replace into employee_demographics (employee_id, first_name)
values (101, 'Akarsh'); #replaces original values

replace into employee_demographics (employee_id, first_name)
values (102, 'Chinmay'); #behaves like insert

replace into employee_demographics 
set employee_id=103, first_name='Shravani';
