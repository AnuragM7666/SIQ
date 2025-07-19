-- Question: Find all classes with at least five students.
--
-- Table: Courses
-- Columns:
--   - student (varchar)
--   - class (varchar)
-- 
-- (student, class) is the primary key, meaning a student can't enroll in the same class more than once.
--
-- Each row represents a student's enrollment in a class.
--
-- Task: Write a query to return all classes that have at least 5 students enrolled.
-- Output: A single column with class names. Order doesn't matter.


SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;