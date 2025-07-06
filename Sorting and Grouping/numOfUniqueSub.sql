-- Question: Count Unique Subjects per Teacher
-- Task: For each teacher_id, count the number of unique subject_id values they teach, ignoring departments.
-- Table: Teacher(teacher_id, subject_id, dept_id)

select teacher_id, COUNT(DISTINCT subject_id) as cnt
from Teacher 
GROUP BY teacher_id;