-- LeetCode 1731: The Employees Who Report to Each Employee
-- Given the Employees table, find all employees who are managers (i.e., at least one employee reports to them).
-- For each such manager, return:
--   - employee_id
--   - name
--   - reports_count (number of employees who directly report to them)
--   - average_age (rounded average age of their direct reports)
-- Output should be ordered by employee_id.

SELECT 
e1.employee_id,
e1.name,
COUNT(e2.employee_id) AS reports_count,
ROUND(AVG(e2.age)) AS average_age
FROM Employees e1
JOIN Employees e2 
ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id, e1.name
ORDER BY e1.employee_id;
