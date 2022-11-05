With CTE as(select id,email,
            row_number() over(partition by email order by id asc) as rn 
            from person)
            delete from person 
            where id in (select id from CTE where rn<>1);
