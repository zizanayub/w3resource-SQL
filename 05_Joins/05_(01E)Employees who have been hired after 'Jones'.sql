-- 5. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.

SELECT
	  first_name,
      last_name,
      hire_date
FROM employees
WHERE hire_date > 
(SELECT hire_date
FROM employees
WHERE last_name = 'Jones'); 


-- OR 


SELECT 
      e.first_name,
      e.last_name,
      e.hire_date
FROM employees e 
JOIN employees jones
    ON jones.last_name = 'Jones'
WHERE jones.hire_date < e.hire_date
