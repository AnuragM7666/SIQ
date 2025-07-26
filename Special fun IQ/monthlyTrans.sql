-- LeetCode Problem 1193: Monthly Transactions I
-- Objective: For each month and country, report:
--   1. Total number of transactions
--   2. Total transaction amount
--   3. Number of approved transactions
--   4. Total approved transaction amount

-- Table: Transactions
-- Columns:
--   - id: int
--   - country: varchar
--   - state: varchar ('approved', 'declined', etc.)
--   - amount: int
--   - trans_date: date

-- Expected Output Columns:
--   - month (in 'YYYY-MM' format)
--   - country
--   - trans_count
--   - trans_total_amount
--   - approved_count
--   - approved_total_amount

select
data_format(date, 'yyyy-MM') as month,
country,
count(*) as trans_count,
sum(amount) as total_amount,
sum(state = 'approved') as approved_count,
sum(IF(state = 'approved' , amount , 0)) as approved_total_amount
from Transactions
group by month, country;