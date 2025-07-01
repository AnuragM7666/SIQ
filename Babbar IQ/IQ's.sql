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

