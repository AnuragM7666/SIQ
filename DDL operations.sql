-- Step 3: ALTER TABLE Operations

-- 1️⃣ Add new columns
ALTER TABLE employee_demographics ADD COLUMN email VARCHAR(100);
ALTER TABLE employee_salary ADD COLUMN bonus INT DEFAULT 0;
ALTER TABLE employee_salary ADD COLUMN join_date DATE AFTER occupation;

-- 2️⃣ Drop a column
ALTER TABLE employee_salary DROP COLUMN bonus;

-- 3️⃣ Change column data type
ALTER TABLE employee_demographics MODIFY COLUMN age SMALLINT;

-- 4️⃣ Add constraints
ALTER TABLE employee_salary ADD CONSTRAINT uq_emp_id UNIQUE (employee_id);
ALTER TABLE employee_salary ADD CONSTRAINT fk_emp FOREIGN KEY (employee_id)
  REFERENCES employee_demographics(employee_id);
ALTER TABLE employee_salary ADD CONSTRAINT fk_dept FOREIGN KEY (dept_id)
  REFERENCES parks_departments(department_id);
ALTER TABLE employee_demographics ADD CONSTRAINT uq_name_birth
  UNIQUE (first_name, last_name, birth_date);

-- 5️⃣ Drop a constraint (MySQL style for UNIQUE index)
ALTER TABLE employee_salary DROP INDEX uq_emp_id;

-- 6️⃣ Rename column
ALTER TABLE employee_salary CHANGE COLUMN occupation job_title VARCHAR(50);

-- 7️⃣ Rename table
RENAME TABLE employee_salary TO salary_info;

-- 8️⃣ Indexing
CREATE INDEX idx_salary ON salary_info(salary);
DROP INDEX idx_salary ON salary_info;