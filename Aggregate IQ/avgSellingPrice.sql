-- LeetCode 1251: Average Selling Price
-- Table: Prices (product_id, start_date, end_date, price)
-- Table: UnitsSold (product_id, purchase_date, units)
-- A product can have different prices over time (valid between start_date and end_date).
-- Task: For each product, calculate the average selling price = 
--       total revenue (units * price) / total units sold, rounded to 2 decimal places.
--       If a product has no sales, output 0.00 as the average price.
-- Output: product_id, average_price

select p.product_id,
round(ifnull(sum(u.units * p.price) / sum(u.units), 0), 2) as average_price
from Prices p
left join UnitsSold u
on p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date
group by p.product_id;