# kata6

## SQL Bug Fixing: Fix the JOIN

    Oh no! Timmys been moved into the database divison of his software company but as we know Timmy loves making mistakes. Help Timmy keep his job by fixing his query  

    Timmy works for a statistical analysis company and has been given a task of calculating the highest average salary for a given job, the sample is compiled of 100 applicants each with a job and a salary. Timmy must display each unique job, the total average salary, the total people and the total salary and order by highest average salary. Timmy has some bugs in his query, help Timmy fix his query so he can keep his job!
    people table schema  

      id
      name

    job table schema

      id
      people_id
      job_title
      salary

    resultant table schema

      job_title (unique)
      average_salary (float, 2 dp)
      total_people (int)
      total_salary (float, 2 dp)

    NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.  

[SQL Bug Fixing: Fix the JOIN](https://www.codewars.com/kata/580fb94e12b34dd1c40001f0)

----------------------------------------------------------------------------------------------------------------

## SQL Bug Fixing: Fix the QUERY - Totaling

    Oh no! Timmys been moved into the database divison of his software company but as we know Timmy loves making mistakes. Help Timmy keep his job by fixing his query...  

    Timmy works for a statistical analysis company and has been given a task of totaling the number of sales on a given day grouped by each department name and then each day.  
    Resultant table:  

      day (type: date) {group by} [order by asc]
      department (type: text) {group by} [In a real world situation it is bad practice to name a column after a table]
      sale_count (type: int)

  Tables and relationship below:  

  ![tables_relations](./SQL_Bug_Fixing_Fix_the_QUERY_Totaling/SQLBugFixingFixtheQUERYTotaling.png?raw=true "tables_relations")

[SQL Bug Fixing: Fix the JOIN](https://www.codewars.com/kata/582cba7d3be8ce3a8300007c)

----------------------------------------------------------------------------------------------------------------