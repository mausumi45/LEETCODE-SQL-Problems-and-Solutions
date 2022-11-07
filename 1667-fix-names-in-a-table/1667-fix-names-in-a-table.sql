select user_id,
CONCAT(Upper(substring(name,1,1)),Lower(substring(name,2,length(name)))) as name
from users
order by user_id;
