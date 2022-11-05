# Write your MySQL query statement below
select P.product_id,P.Product_name
from Product P inner join Sales S
on P.Product_id=S.Product_id
group by S.product_id Having
Min(sale_date)>= '2019-01-01' and Max(sale_date) <= '2019-03-31';