select firstName,lastName,city,state
from person P left join Address A 
on P.personId=A.personId;