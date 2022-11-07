select U.name,sum(amount) as balance
from Users U inner join Transactions T
on U.account=T.account
group by U.name 
having sum(amount)>10000
order by sum(amount) desc;
