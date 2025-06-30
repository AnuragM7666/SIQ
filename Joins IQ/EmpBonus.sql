-- Question: Report Employees with Low or No Bonus
-- Task: Join Employee and Bonus tables to find employees with bonus less than 1000 
--       or no bonus at all, and return their name and bonus amount.
-- Tables: 
--   Employee(empId, name, supervisor, salary)
--   Bonus(empId, bonus)
select name ,  
bonus from Employee e
left join Bonus b
on e.empId=b.empId
where bonus<1000 or bonus is null;