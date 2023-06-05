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







/*
6. Write a SQL statement insert rows from country_new table to countries table.

Here is the rows for country_new table. Assume that, the countries table is empty.

+------------+--------------+-----------+
| COUNTRY_ID | COUNTRY_NAME | REGION_ID |
+------------+--------------+-----------+
| C0001      | India        |      1001 |
| C0002      | USA          |      1007 |
| C0003      | UK           |      1003 |
+------------+--------------+-----------+
*/


INSERT INTO exercises.countries
SELECT * FROM exercises.countries_new; 

-- There need a space. (Must)


/*

| country_id | country_name | region_id |
+------------+--------------+-----------+
| A1         | Bangladesh   |      1001 |
| B2         | India        |      NULL |
| NULL       | NULL         |      NULL |
| C1         | Pakistan     |      NULL |
| D1         | USA          |      1200 |
| D3         | Canada       |      1009 |
| C3         | Nigeria      |      1989 |
| A1         | Bangladesh   |      1001 |
| B2         | India        |      NULL |
+------------+--------------+-----------+

*/







/*
7. Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column.
*/


INSERT INTO project01.jobs2 VALUES
(1023, 'Data Analyst', 10000, 24000);  


/*
+--------+--------------+------------+------------+
| job_id | job_title    | min_salary | max_salary |
+--------+--------------+------------+------------+
|   1023 | Data Analyst |      10000 |      24000 |
*/









/*
9. Write a SQL statement to insert a record into the table countries to ensure that, a country_id and region_id combination will be entered once in the table.
*/


INSERT INTO exercises.countries VALUES ('C2', 'UAE', 183); 


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
| A1         | Bangladesh   |      1001 |
| B2         | India        |      NULL |
| C2         | Bangladesh   |       183 |
| C2         | UAE          |       183 |

*/








/*
10. Write a SQL statement to insert rows into the table countries in which the value of country_id column will be unique and auto incremented.
*/

Create Table exercises.countries1
(
 country_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
 country_name varchar(55) NOT NULL,
 region_id decimal(10,0)
 );
 
 INSERT INTO exercises.countries1(Country_name,region_id) VALUES('Zimbabwe',145); 
 
 
 /*
 +------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | Zimbabwe     |       145 |
+------------+--------------+-----------+
1 row in set (0.00 sec)
*/







/*
11. Write a SQL statement to insert records into the table countries to ensure that the country_id column will not contain any duplicate data and 
this will be automatically incremented and the column
country_name will be filled up by 'N/A' if no value assigned for that column.
*/


CREATE TABLE exercises.countries2
(
 country_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
 country_name varchar(50) DEFAULT 'N/A',
 region_id decimal(10,0) NOT NULL
 );
 
 INSERT INTO exercises.countries2(region_id) VALUES (122); 


/*
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | N/A          |       122 |
+------------+--------------+-----------+
1 row in set (0.11 sec)
*/


