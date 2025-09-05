-- last most optimal O(n^2)
select distinct salary 
from employee e1
where n-1=(
    select count(distinct salary)
    from employee e2
    where e2.salary>e1.salary
);

--most optimal,less time complexity O(nlogn)
select salary as nth_highest_salary
from employee e1
order by salary desc
limit 1 offset n-1;

-- 2nd most optimal O(n^2)
select e1.salary 
from employee e1
left join employee e2
on e2.salary>e1.salary
group by e1.salary
having count(e2.salary)=n-1;
