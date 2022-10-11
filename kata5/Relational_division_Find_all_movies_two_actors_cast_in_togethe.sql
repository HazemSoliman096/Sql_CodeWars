select distinct title as title  
from film f inner join film_actor fa 
on (f.film_id = fa.film_id) 
where (select film_id from film_actor where actor_id = 105 and film_id = fa.film_id) is not null
and (select film_id from film_actor where actor_id = 122 and film_id = fa.film_id) is not null
order by title asc