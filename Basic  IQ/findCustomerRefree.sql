-- Question: Customers Not Referred by ID 2
-- Task: Get customer names where referee_id is not 2 or is NULL.
-- Table: Customer(id, name, referee_id)



SELECT name 
FROM Customer 
WHERE referee_id != 2 OR referee_id IS NULL;

