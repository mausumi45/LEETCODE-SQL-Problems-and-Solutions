WITH CTE as(
select D.name as N,E.name AS EMP,E.salary as sal,dense_rank() over(partition by D.name order by E.salary desc) as Dr
from Employee E inner join department D
on E.departmentId=D.id)
select CTE.N as department,CTE.EMP as Employee,CTE.sal as Salary
from CTE where CTE.Dr=1;
