-- Triggers and Events

delimiter $$
create trigger employee_insert
	after insert on employee_salary
    for each row 
begin
	insert into employee_demographics(employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end $$
delimiter ; 

insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values (13, 'anurag', 'patil', 'student', 100000, null);

select* 
from employee_demographics;

select*
from employee_salary;

-- events

delimiter $$
create event delete_retirees
on schedule every 30 second 
do
begin 
	delete 
    from employee_demographics
    where age>=50;
end $$
delimiter ;

select*
from employee_demographics;

show variables like 'event%';
















