# kata5

## Relational division: Find all movies two actors cast in together

    Given film_actor and film tables from the DVD Rental sample database find all movies both Sidney Crowe (actor_id = 105) and Salma Nolte (actor_id = 122) cast in together and order the result set alphabetically.  
    film schema  

    Column     | Type                        | Modifiers
    ------------+-----------------------------+----------
    title       | character varying(255)      | not null
    film_id     | smallint                    | not null

    film_actor schema  

    Column     | Type                        | Modifiers
    ------------+-----------------------------+----------
    actor_id    | smallint                    | not null
    film_id     | smallint                    | not null
    last_update | timestamp without time zone | not null 

    actor schema  

    Column     | Type                        | Modifiers
    ------------+-----------------------------+----------
    actor_id    | integer                     | not null 
    first_name  | character varying(45)       | not null
    last_name   | character varying(45)       | not null
    last_update | timestamp without time zone | not null 

    The desired output:  

    title
    -------------
    Film Title 1
    Film Title 2

    title - Film title

[Relational division: Find all movies two actors cast in together](https://www.codewars.com/kata/5817b124e7f4576fd00020a2)

-----------------------------------------------------------------------------------------------------------------------------

## Relational division: Find all movies two actors cast in together

    For this challenge you need to create a VIEW. This VIEW is used by a sales store to give out vouches to members who have spent over $1000 in departments that have brought in more than $10000 total ordered by the members id. The VIEW must be called members_approved_for_voucher then you must create a SELECT query using the view.  

  Tables and relationship below:

  ![tables_relations](./SQLBasicsSimpleVIEW/tables_relations.png?raw=true "tables_relations")  

  resultant table schema  

    id
    name
    email
    total_spending

    NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.

[SQL Basics: Simple VIEW](https://www.codewars.com/kata/5811527d9d278b242f000006)

-----------------------------------------------------------------------------------------------------------------------------

## SQL Tuning: Function Calls

    Your manager has given you a task to create a report to measure the impact of the next company-wide salary increase. The rules for the salary increase are encapsulated in the function pctIncrease, which takes a department_id as a parameter and returns the percent increase as a value between 0 and 1.  

    You've managed to create a query that would produce the desired results, but it is currently very slow and doesn't finish in the required time window.  

    Your objective in this kata is to optimize this query. The success criteria is to manage to run the query within the allowed kata solution time window (12 seconds for SQL katas).  

    The provided initial solution produces the correct result, but it does not run within the allowed time window.  

    Data model

      Table: Employees
      ----------------
      employee_id   INT / PK
      first_name    TEXT
      last_name     TEXT
      salary        DECIMAL
      department_id INT / FK

      Table: Departments
      ------------------
      department_id   INT / PK
      department_name TEXT

      pctIncrease function signature:

      pctIncrease(dept_id INT) RETURNS decimal

[SQL Tuning: Function Calls](https://www.codewars.com/kata/581fb63e70ca28d92500000d)

-----------------------------------------------------------------------------------------------------------------------------