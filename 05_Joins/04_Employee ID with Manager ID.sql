-- 4. Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).


SELECT 
      e.employee_id,
      e.last_name,
      e.manager_id,
      m.last_name
FROM employees e 
JOIN employees m 
    ON m.employee_id = e.manager_id;
