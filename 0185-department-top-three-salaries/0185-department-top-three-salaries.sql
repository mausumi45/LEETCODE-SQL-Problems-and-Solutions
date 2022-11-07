select s.dep as Department,S.emp as Employee,S.sal as salary from(
select D.name as dep,E.name as emp,E.salary as sal,dense_rank() over(
partition by D.name order by E.salary desc) as ranking
from Employee E inner join Department D
on E.departmentId=D.id)as S
where s.ranking<=3;
