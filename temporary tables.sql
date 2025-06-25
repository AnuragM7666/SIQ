-- temporary tables

create temporary table salary_over50k
select *
from employee_salary
where salary>=50000
;

select*
from salary_over50k;

#this temporary table is deleted after closing the tab

#View 
CREATE VIEW employee_full_info AS
SELECT 
    ed.employee_id,
    ed.first_name,
    ed.last_name, #this is a standard view
    ed.age,
    ed.gender,
    ed.birth_date,
    si.salary,
    si.dept_id
FROM employee_demographics ed
LEFT JOIN employee_salary si
    ON ed.employee_id = si.employee_id;

SELECT * FROM employee_full_info;

#simulated materialized view
CREATE TABLE employee_summary AS
SELECT 
  dept_id,
  COUNT(*) AS total_employees,
  AVG(salary) AS avg_salary
FROM employee_salary
GROUP BY dept_id;

DELETE FROM employee_summary;

INSERT INTO employee_summary
SELECT 
  dept_id,
  COUNT(*) AS total_employees,
  AVG(salary) AS avg_salary
FROM employee_salary
GROUP BY dept_id;

SELECT * FROM employee_summary;
