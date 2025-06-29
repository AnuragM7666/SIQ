-- Question: Report Product Sales Info
-- Task: Join Sales and Product tables to get product_name, year, and price for each sale_id.
-- Tables: Sales(sale_id, product_id, year, quantity, price), Product(product_id, product_name)
select p.product_name,
s.year, s.price 
from Sales s
inner join Product p
on s.product_id=p.product_id;