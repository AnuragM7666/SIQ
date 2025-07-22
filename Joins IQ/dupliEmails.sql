-- LeetCode SQL Question: Delete Duplicate Emails
-- Table: Person(id INT, email VARCHAR)
-- Requirement: Delete all duplicate emails, keeping only the record with the smallest id for each email.
-- Constraint: Must use a DELETE statement (not SELECT); email column may contain duplicates.

DELETE p1
FROM Person p1
JOIN Person p2
  ON p1.email = p2.email AND p1.id > p2.id;
