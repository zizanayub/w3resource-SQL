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





### ▶️ 7. Write a query to get the maximum and minimum salary from employees table.



```SQL
-- 7. Write a query to get the maximum and minimum salary from employees table.
SELECT MAX(Salary),MIN(Salary)
FROM employees3;
```





### ▶️ 8. Write a query to get the average salary and number of employees in the employees table.



```SQL
-- 8. Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(Salary) "Average Salary" ,COUNT(employee_id) "Number of Employees"
FROM employees3; 
```




### ▶️ 9. Write a query to get the number of employees working with the company.


```SQL
-- 9. Write a query to get the number of employees working with the company.
SELECT COUNT(employee_id) "Number of Employees"
FROM employees3; 
```




### ▶️ 10. Write a query to get the number of jobs available in the employees table.


```SQL
-- 10. Write a query to get the number of jobs available in the employees table.
SELECT COUNT(DISTINCT job_id) "Number of Jobs"
FROM employees3; 
```





### ▶️ 11. Write a query get all first name from employees table in upper case.




```SQL
-- 11. Write a query get all first name from employees table in upper case.
SELECT UPPER(first_name) "Upper Case of First Name"
FROM employees3; 
```





### ▶️ 12. Write a query to get the first 3 characters of first name from employees table.



```SQL
-- 12. Write a query to get the first 3 characters of first name from employees table.
SELECT SUBSTRING(first_name,1,3)
FROM employees3;
```



### ▶️ 13. Write a query to calculate 171*214+625.


```
-- 13. Write a query to calculate 171*214+625.
SELECT 171*214+625 Result; 
```




### ▶️ 14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.




```
-- 14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
SELECT CONCAT(first_name,' ',last_name) "Name"
FROM employees3; 
```






### ▶️ 15. Write a query to get first name from employees table after removing white spaces from both side.




```SQL
-- 15. Write a query to get first name from employees table after removing white spaces from both side.
SELECT TRIM(first_name)
FROM employees3;
```
