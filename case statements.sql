select first_name, 
last_name,
age, 
case 
    when age<=30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age>=50 then "on death's door"
end as Age_bracket 
from employee_demographics;

#salary increment

select first_name,last_name, salary,
case 
    when salary<50000 then salary*1.05
    when salary>50000 then salary*1.07
    end as new_salary, 
case 
    when dept_id=6 then salary*0.10
    end as bonus
from employee_salary;
    