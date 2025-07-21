-- Write a solution to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) 
-- with a single UPDATE statement and no intermediate temporary tables.
-- Note: You must write a single UPDATE statement and do not use any SELECT statement.

UPDATE employees
set sex=IF(sex='m', 'f', 'm');

or 

UPDATE employees
CASE 
    WHEN sex = 'm' THEN 'f'
    else 'm'
END;