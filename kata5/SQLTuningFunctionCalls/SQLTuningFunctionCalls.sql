SELECT e.employee_id,
       e.first_name,
       e.last_name,
       d.department_name,
       e.salary AS old_salary,
       e.salary * (1 + d.p) AS new_salary
  FROM employees   e inner join 
       (select department_id,department_name, pctIncrease(department_id) as p  from departments ) d on  e.department_id = d.department_id
 ORDER BY 1;