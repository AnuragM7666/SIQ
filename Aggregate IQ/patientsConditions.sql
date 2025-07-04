-- Question: Patients with Type I Diabetes
-- Task: Get patients whose 'conditions' field includes any code starting with 'DIAB1'.
-- Note: 'conditions' has space-separated codes.
-- Table: Patients(patient_id, patient_name, conditions)

select * 
from Patients
where CONCAT(' ',conditions,' ') REGEXP 'DIAB1[0-9A-Za-z]*';

--REGEXP (or REGEXP_LIKE, REGEXP_REPLACE, etc.) in SQL lets you use regular expressions to match or manipulate text patterns in strings