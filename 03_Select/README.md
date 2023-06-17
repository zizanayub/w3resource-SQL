## `SELECT` Clause

### ▶️ 1. Write a query to display the names (first_name, last_name) using alias name "First Name", "Last Name"



```SQL
SELECT first_name "First Name", last_name "Last Name"
FROM employees3; 
```


### 💡 Not First Name. It's "First Name"

When I wrote the solution like this-


```SQL
SELECT first_name First Name, last_name Last Name
FROM employees3;
```

It gave error. The error code said that ot was a syntax error. 




### ▶️ 2. Write a query to get unique department ID from employee table.



```SQL
-- 2. Write a query to get unique department ID from employee table.
SELECT DISTINCT department_id
FROM employees3; 
```





### ▶️ 3. Write a query to get all employee details from the employee table order by first name, descending.


```SQL
-- 3. Write a query to get all employee details from the employee table order by first name, descending.
SELECT *
FROM employees3
ORDER BY first_name DESC;
```




### ▶️ 4. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).



```SQL
SELECT first_name, last_name, salary, salary * 0.15 AS pf
FROM employees3; 
```




### ▶️ 5. Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.



```SQL
-- 5. Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.
SELECT employee_id, first_name, last_name, salary
FROM employees3
ORDER BY salary; 
```




### ▶️ 6. Write a query to get the total salaries payable to employees.



```SQL
-- 6. Write a query to get the total salaries payable to employees.
SELECT SUM(salary)
FROM employees3; 
```




### 💡 SUM(Salary) OR Total(Salary)


1. You can make operations after the `SELECT` statement immediately.
2. SUM(Salary) is valid. Total(Salary) will give error. 





### ▶️ 
