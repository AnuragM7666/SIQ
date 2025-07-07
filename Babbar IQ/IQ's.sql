-- Q.2 fetch FIRST_NAME from worker table in uppercase
select UPPER(FIRST_NAME) from Worker;

-- Q.3. Fetch unique values of Department from worker table
select distinct Department from Worker;
-- or we can use
select Department from Worker 
GROUP BY Department;

-- Q.4 to print first three characters of first_name from Worker
select SUBSTRING(First_name, 1,3) from Worker;

-- Q.5 to find the position of alphabet 'e' in the first_name column 'Michael' from Worker
select INSTR(first_name, 'e') from Worker where First_name='Michael';

-- Q.6 to print First_name from Worker table after removing white spaces from right side
select RTRIM(First_name) from Worker; -- LTRIM() for removing white spaces from left side

-- Q.8 fetching unique values of Department from Worker and printing its length
select DISTINCT Department, LENGTH(Department) from Worker;

-- Q.9 to print first_name from Worker after replacing 'a' with 'A'
select REPLACE(First_name, 'a', 'A') from Worker;

-- Q.10 to print the first_name and last_name form Worker into a single column as full_name , a space char should separate them
select CONCAT(First_Name, ' ', Last_Name) as full_name from Worker;

-- Q.12 to print all Worker details from Worker table order by first_name ascending and Department descending
select * from Worker
ORDER BY first_name, Department desc;

-- Q.13 to print details of workers with first_name as 'John' and 'Emiky
select * from Worker 
where first_name IN ('John', 'Emily');

-- Q.14 same as Q.13 but excluding those names 
select * from Worker 
where first_name NOT IN ('John', 'Emily');

-- Q.15 to print Workers with Department as 'A*'
select * from Worker where Department LIKE 'A%'; 

-- Q16 Workers whose first_name contain 'a'
select * from Worker where first_name LIKE '%a%';

-- Q18 Workers whose first_name ends with 'l' and contains 7 letter
select * from Worker where first_name Like '______l';

-- Q.19 Salary lies between 100000 to 200000
select * from Worker where salary BETWEEN 100000 AND 200000;

-- Q.20 Workers who joined January 2020
select * from Worker where YEAR(Joining_Date)=2020 and MONTH(Joining_Date)=1;

-- Q.21 Count of workers in Department 'Admin'
select department, COUNT(*) from Worker where Department="Admin";

-- Q.22 worker full names with salaries>=50000 and <=100000
select CONCAT(first_name,' ', last_name), salary from Worker 
where salary>=50000 and salary<=100000;

-- Q.23 No.of workers from each deaprtment in descending order
select department, COUNT(Worker_ID) as No_of_Workers from Worker
GROUP BY department 
ORDER BY COUNT(Worker_ID) desc;

-- Q.24 Workers who are also Managers
select w.* from Worker w 
inner join Title t
ON w.Worker_ID=t.Worker_REF_ID
where t.Worker_Title="Manager";

-- Q.25 fetch number of same titles in the ORG of different types
 select worker_title,COUNT(*) as count from title 
 group by worker_title;
 
 -- Q.26 to show only odd rows from a table
 select * from Worker 
 where Worker_ID%2=1;
 
 -- Q.28 to clone a new table from another table
 create table worker_clone LIKE worker;
 insert into worker_clone select * from worker;
 
 -- Q.29 to fetch intersecting records of two tables
 select worker.* from worker 
 inner join worker_clone using(worker_id);
 
 -- Q.30 to show records from one table that another table does not have
 select W.* from Worker w
 left join worker_clone wc
 using(worker_id) 
 where wc.worker_id is null;

-- Q.32 to show top(n) 2 records of a table order by salary in descending
select * from Worker 
Order by salary desc
LIMIT 2;

-- Q.33 to determine nth (n=3) highest salary from a table
select * from Worker 
Order by salary desc
LIMIT 2,1;

 -- Q.34 to determine nth (n=3) highest salary from a table without using LIMIT keyword
 select salary from worker w1
 where 2=(
 select COUNT(distinct (w2.salary))
 from worker w2
 where w2.salary>w1.salary
 );
 
 -- Q.35 to fetch list of employees with same salary
 select w1.* from worker w1, worker w2
 where w1.salary=w2.salary AND w1.worker_id!=w2.worker_id;
 









