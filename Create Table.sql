-- 1. Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id.

create table project01.Countries (
country_id int,
country_name varchar(20),
region_id int);


-- Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id which is already exists.

Create Table IF NOT EXISTS countries(
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
