WITH RECURSIVE itemsCount AS (
    SELECT 
        c.id, t.category_id 
    FROM 
        categories c 
    LEFT OUTER JOIN 
        items t ON (c.id = t.category_id)

    UNION ALL

    SELECT 
        c.parent , t.category_id 
    FROM 
        categories ca 
    JOIN 
        categories c ON (ca.id = c.id) 
    LEFT OUTER JOIN 
        items t ON (c.id = t.category_id)
)
SELECT id, count(category_id)  FROM itemsCount 
group by id
order by id asc;