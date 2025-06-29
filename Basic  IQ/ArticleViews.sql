-- Question: Authors Who Viewed Their Own Articles
-- Task: Find all distinct author_ids who have viewed at least one of their own articles.
-- Condition: author_id = viewer_id
-- Output: Sorted list of ids in ascending order.

select distinct author_id as id from Views
where author_id=viewer_id
order by id asc ;
