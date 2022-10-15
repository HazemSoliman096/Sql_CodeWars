SELECT 
  j.job_title,
  cast(cast(SUM(j.salary) / COUNT(p) as decimal(10, 2))  as float(10)) as average_salary,
  COUNT(p.id) as total_people,
  cast(cast(SUM(j.salary) as decimal(10, 2))as float) as total_salary
  FROM people p
    JOIN job j
    on p.id = j.people_id
  GROUP BY j.job_title
  ORDER BY  average_salary desc