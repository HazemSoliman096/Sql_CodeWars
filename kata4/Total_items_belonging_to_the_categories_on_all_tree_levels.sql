WITH RECURSIVE itemsCount  as  (
    SELECT 
        c.id as category , t.id as item
    FROM 
        categories c 
    left OUTER JOIN 
        items t ON (c.id = t.category_id)

    UNION ALL

    SELECT 
        ca.parent , t.id
    FROM 
        itemsCount ic 
    left outer JOIN 
        categories ca ON (ic.category = ca.parent) 
     inner JOIN 
        items t ON (ca.id  = t.category_id)

)
SELECT category as id, count(item) as total FROM itemsCount
group by category
order by category asc;