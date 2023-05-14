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
