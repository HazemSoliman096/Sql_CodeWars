SELECT c.id as id, count(t.id) as total 
FROM categories c inner join items t on c.id = t.category_id
or t.category_id in (select parent from categories c1 where c1.id = c.id)
and c.id = 1
group by c.id
order by c.id asc;