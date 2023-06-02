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


-- Creating COUNTRIES table
 CREATE TABLE exercises.countries
(
 country_id varchar(2),
 country_name varchar(40),
 region_id decimal(10,0)
);

-- INSERT INTO 
INSERT INTO exercises.countries VALUES('A1','Bangladesh',1001); 
SELECT * FROM exercises.countries; 





/*
2. Write a SQL statement to insert one row into the table countries against the column country_id and country_name.

Here in the following is the structure of the table countries.

+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
| REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+	
*/


INSERT INTO exercises.countries(country_id,country_name) VALUES ('B2','India'); 



/*
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
| A1         | Bangladesh   |      1001 |
| B2         | India        |      NULL |
+------------+--------------+-----------+
*/






/*
3. Write a SQL statement to create duplicate of countries table named country_new with all structure and data.

Here in the following is the structure of the table countries.

+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| COUNTRY_ID   | varchar(2)    | YES  |     | NULL    |       |
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       |
| REGION_ID    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
*/


CREATE TABLE IF NOT EXISTS exercises.countries_new 
AS Select * FROM exercises.countries; 


/*

mysql> Select * FROM exercises.countries_new;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
| A1         | Bangladesh   |      1001 |
| B2         | India        |      NULL |
+------------+--------------+-----------+
2 rows in set (0.00 sec)

*/




/*
4. Write a SQL statement to insert NULL values against region_id column for a row of countries table.
*/

INSERT INTO exercises.countries VALUES ('C1','Pakistan', NULL);

/*
mysql> Select * FROM exercises.countries;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
| A1         | Bangladesh   |      1001 |
| B2         | India        |      NULL |
| NULL       | NULL         |      NULL |
| C1         | Pakistan     |      NULL |
+------------+--------------+-----------+
4 rows in set (0.00 sec)
*/







/*
5. Write a SQL statement to insert 3 rows by a single insert statement.
*/

INSERT INTO exercises.countries VALUES
('D1','USA',1200),
('D3','Canada',1009),
('C3','Nigeria',1989); 

/*
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
| A1         | Bangladesh   |      1001 |
| B2         | India        |      NULL |
| NULL       | NULL         |      NULL |
| C1         | Pakistan     |      NULL |
| D1         | USA          |      1200 |
| D3         | Canada       |      1009 |
| C3         | Nigeria      |      1989 |
+------------+--------------+-----------+

*/



