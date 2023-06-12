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








/*
12. Write a SQL statement to insert rows in the job_history table in which one column job_id is containing those values which are 
exists in job_id column of jobs table.
*/

INSERT INTO project01.jobs2 VALUES
(121, 'Manager', 12000, 22000); 

INSERT INTO project01.job_history VALUES 
(121,'2021-01-01','2022-06-05', 121, 2345);
INSERT INTO project01.job_history VALUES 
(1023,'2021-01-01','2022-06-05', 1023, 2345); 


/*
+-------------+------------+------------+--------+---------------+
| employee_id | START_DATE | END_DATE   | job_id | department_id |
+-------------+------------+------------+--------+---------------+
|         121 | 2021-01-01 | 2022-06-05 |    121 |          2345 |
|        1023 | 2021-01-01 | 2022-06-05 |   1023 |          2345 |
+-------------+------------+------------+--------+---------------+
*/





/*
13. Write a SQL statement to insert rows into the table employees in which a set of columns department_id 
and manager_id contains a unique value and that combined values must have exists into the table departments.
*/


--13.1
CREATE TABLE IF NOT EXISTS exercises.departments2
(
 department_id int NOT NULL unique,
 department_name varchar(40) NOT NULL,
 manager_id int NOT NULL,
 location_id int DEFAULT null,
 PRIMARY KEY(department_id,manager_id)
 )
 Engine = InnoDB; 

--Issue: ERROR 1171 (42000): All parts of a PRIMARY KEY must be NOT NULL; if you need NULL in a key, use UNIQUE instead
--Knowledge: Both primary keys can be specified together
--Knowledge: Usage of DEFAULT and NOT NULL
 
 
 --13.2. Insert into 'departments2' table
 INSERT INTO exercises.departments2 VALUES 
 (11, "Sales", 101, 100);
 INSERT INTO exercises.departments2 VALUES 
 (12, "Engineering", 102, 101); 
 
 
 
 -- 13.3.1. CREATE TABLE OF "Employees_list"
 CREATE TABLE IF NOT EXISTS exercises.employees_list
 (
  Employee_id int NOT NULL PRIMARY KEY,
  Employee_name varchar(40) NOT NULL,
  Manager_id int NOT NULL,
  Department_id int NOT NULL,
  Salary int NOT NULL,
  FOREIGN KEY (manager_id, department_id) REFERENCES exercises.departments2 (manager_id,department_id)
  )
  Engine = InnoDB; 
  
  
  
 -- Issue: ERROR 1822 (HY000): Failed to add the foreign key constraint. Missing index for constraint 'employees_list_ibfk_1' in the referenced table 'departments2'
 
 
 -- 13.3.2. Adding 'unique' in department_id
CREATE TABLE IF NOT EXISTS exercises.employees_list ( 
EMPLOYEE_ID integer NOT NULL PRIMARY KEY, 
FIRST_NAME varchar(20) DEFAULT NULL, 
LAST_NAME varchar(25) NOT NULL, 
JOB_ID varchar(10) NOT NULL, 
SALARY decimal(8,2) DEFAULT NULL, 
MANAGER_ID int DEFAULT NULL, 
DEPARTMENT_ID int DEFAULT NULL, 
FOREIGN KEY(DEPARTMENT_ID,MANAGER_ID) 
REFERENCES  exercises.departments2(DEPARTMENT_ID,MANAGER_ID)
)ENGINE=InnoDB;




-- 13.4. Insert Into 'employees_list'
INSERT INTO exercises.employees_list VALUES 
(01,"Shadek","Hossain", 122, 50000, 101, 11);
INSERT INTO exercises.employees_list VALUES
(02, "Ruhul", "Hasan", 123, 25000, 102, 12);


/*
+-------------+------------+-----------+--------+----------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | JOB_ID | SALARY   | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+--------+----------+------------+---------------+
|           1 | Shadek     | Hossain   | 122    | 50000.00 |        101 |            11 |
|           2 | Ruhul      | Hasan     | 123    | 25000.00 |        102 |            12 |
+-------------+------------+-----------+--------+----------+------------+---------------+
*/


-- Knowledge: Here, department_id and manager_id must be matched with the entries in the 'departments2' table



  
  
  
  


