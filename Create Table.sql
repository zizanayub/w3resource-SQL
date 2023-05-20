-- 1. Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id.

create table project01.Countries (
country_id int,
country_name varchar(20),
region_id int);



-- 2. Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id which is already exists.

Create Table IF NOT EXISTS project01.countries(
country_id int, 
country_name varchar(20),
region_id int); 

/* 
01. "EXISTS"
IF NOT EXISTS- Something new to me! 
01. The result of EXISTS is a boolean value True or False. 
02. It can be used in a SELECT, UPDATE, INSERT or DELETE statement.
03. Checks whether correlated NESTED QUERIES are empty or Not.
*/



-- 3. Write a SQL statement to create the structure of a table dup_countries similar to countries.
Create Table IF NOT EXISTS project01.dup_countries 
LIKE project01.countries; 

-- ***For each table name, database should be mentioned. 

-- DESC 
DESC project01.dup_countries; 
-- By this query, we can get all the details of a created table. 



-- 4. Write a SQL statement to create a duplicate copy of countries table including structure and data by name dup_countries.
Create Table IF NOT EXISTS project01.dup_countries 
AS Select * FROM project01.Countries; 

DESC project01.dup_countries; 





-- 5. Write a SQL statement to create a table countries set a constraint NOT NULL.
Create Table IF NOT EXISTS Project01.countries(
country_id int NOT NULL, 
country_name varchar(20) NOT NULL,
region_id int NOT NULL); 

DESC project01.countries; 





/* 6. Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary, max_salary and 
check whether the max_salary amount exceeding the upper limit 25000. */

Create Table project01.jobs
(job_id int,
job_title varchar(20),
min_salary decimal(6,0), 
max_salary decimal(6,0)
Check (max_salary <= 25000));


DESC project01.jobs; 





/* 7. Write a SQL statement to create a table named countries including columns country_id, country_name and region_id 
and make sure that no countries except Italy, India and China will be entered in the table. */


Create Table IF NOT EXISTS project01.countries 
(country_id decimal(6,0),
country_name varchar(20)
Check(country_name IN ('Italy','India','China')),
region_id decimal(6,0));

DESC project01.countries; 




/* 8. Write a SQL statement to create a table named job_histry including columns employee_id, start_date, end_date, job_id and department_id 
and make sure that the value against column end_date will be entered at the time of insertion to the format like '--/--/----'. */


Create Table IF NOT EXISTS project01.Job_histry 
(employee_id int NOT NULL,
start_date date NOT NULL,
end_date date 
CHECK (end_date Like '--/--/----'),
job_id decimal(6,0) NOT NULL, 
department_id decimal(6,0) NOT NULL);


DESC project01.job_histry; 




/* 9. Write a SQL statement to create a table named countries including columns country_id,country_name and region_id and 
make sure that no duplicate data against column country_id will be allowed at the time of insertion.    */


Create Table IF NOT EXISTS project01.Countries2 
(country_id decimal(6,0) NOT NULL,
country_name varchar(30) NOT NULL,
region_id decimal(8,0) NOT NULL,
UNIQUE(country_id)
); 


DESC project01.Countries2; 




/* 10. 10. Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary, 
and make sure that, the default value for job_title is blank and min_salary is 8000 and max_salary 
is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns. */


Create Table IF NOT EXISTS project01.jobs1
(job_id decimal(6,0) NOT NULL,
job_title varchar(20) NOT NULL DEFAULT ' ',
min_salary int NOT NULL DEFAULT 8000,
max_salary int DEFAULT NULL); 

DESC project01.jobs1; 




/* 11. Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make sure that the country_id column 
will be a key field which will not contain any duplicate data at the time of insertion. */


CREATE TABLE IF NOT EXISTS project01.countries3
(country_id int NOT NULL UNIQUE PRIMARY KEY,
country_name varchar(20) NOT NULL,
region_id decimal(6,0) NOT NULL); 

DESC project01.countries3; 




/* 12. Write a SQL statement to create a table countries including columns country_id, country_name and region_id 
and make sure that the column country_id will be unique and store an auto incremented value. */ 
