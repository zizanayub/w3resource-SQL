/*

1. Write a SQL statement to insert a record with your own value into the table countries against each columns.

Here in the following is the structure of the table countries.
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
| REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+	

*/

 CREATE TABLE exercises.countries
(
 country_id varchar(2),
 country_name varchar(40),
 region_id decimal(10,0)
);


INSERT INTO exercises.countries VALUES('A1','Bangladesh',1001); 
SELECT * FROM exercises.countries; 



