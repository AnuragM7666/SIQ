-- # 610. Triangle Judgement
-- # Table: Triangle
-- # Given a table with columns x, y, z representing the lengths of three line segments,
-- # write an SQL query to determine whether these segments can form a triangle.
-- # Return the original columns and a new column 'triangle' with 'Yes' if they can form a triangle,
-- # otherwise 'No'.

select x, y, z,
if(x + y > z and x + z > y and y + z > x, 'Yes', 'No') as triangle
from Triangle;

or 

select x, y, z,
case when x + y > z and x + z > y and y + z > x
then 'Yes' else 'No' end as triangle
from Triangle;
