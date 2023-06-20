## ▶️ 1. Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last_name='Bull'.


```SQL
/*
01. 1. Write a query to find the name (first_name, last_name) and the salary 
of the employees who have a higher salary than the employee whose last_name='Bull'.
*/
USE exercises;

SELECT 
      first_name,
      last_name,
      salary
FROM employees3
WHERE salary > 
(SELECT salary
FROM employees3
WHERE last_name = "Bull");
```



## ▶️ 2. Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
```SQL
-- 2. Write a query to find the name (first_name, last_name) of all employees who works in the IT department.

SELECT first_name,last_name
FROM employees3
WHERE department_ID IN
(SELECT department_id
FROM departments
WHERE department_name = "IT");
```



## ▶️ 3. Write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department.
```SQL
-- 3. Write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department.
SELECT first_name, last_name FROM employees 
WHERE manager_id in (select employee_id 
FROM employees WHERE department_id 
IN (SELECT department_id FROM departments WHERE location_id 
IN (select location_id from locations where country_id='US')));
```
