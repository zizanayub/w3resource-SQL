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
