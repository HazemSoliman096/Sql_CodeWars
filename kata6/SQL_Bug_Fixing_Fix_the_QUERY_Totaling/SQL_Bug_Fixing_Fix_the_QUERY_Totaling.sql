SELECT 
  s.transaction_date::DATE as day,
  d.name as department,
  COUNT(s.id) as sale_count
  FROM department d
    JOIN sale s on d.id = s.department_id
  group by s.transaction_date::DATE, d.name
  order by day asc