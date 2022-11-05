# Write your MySQL query statement below
select id,
SUM(case when month='Jan' then revenue else Null END) as Jan_Revenue,
SUM(case when month='Feb' then revenue else Null END) as Feb_Revenue,
SUM(case when month='Mar' then revenue else Null END) as Mar_Revenue,
SUM(case when month ='Apr'then revenue else Null END) as Apr_Revenue,
SUM(case when month ='May'then revenue else Null END) as May_Revenue,
SUM(case when month ='Jun'then revenue else Null END) as Jun_Revenue,
SUM(case when month ='Jul'then revenue else Null END) as Jul_Revenue,
SUM(case when month ='Aug'then revenue else Null END) as Aug_Revenue,
SUM(case when month ='Sep'then revenue else Null END) as Sep_Revenue,
SUM(case when month ='Oct'then revenue else Null END) as Oct_Revenue,
SUM(case when month ='Nov'then revenue else Null END) as Nov_Revenue,
SUM(case when month ='Dec'then revenue else Null END) as Dec_Revenue
from Department
group by id;