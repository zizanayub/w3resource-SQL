/* 1. Write a query to find the addresses (location_id, street_address, city, 
state_province, country_name) of all the departments.
Hint : Use NATURAL JOIN.
*/


SELECT 
      l.location_id,
      l.street_address,
      l.city,
      l.state_province,
      c.country_name
FROM location l 
NATURAL JOIN country c; 







/*
2. Write a query to find the name (first_name, last name), department ID and name of all the departments.
*/


SELECT 
      e.first_name,
      e.last_name,
      e.department_id,
      d.department_name
FROM employees e 
JOIN departments d
ON e.department_id = d.department_id; 

-- OR 

SELECT 
      e.first_name,
      e.last_name,
      e.department_id,
      d.department_name
FROM employees e 
JOIN departments d
USING (department_id); 

