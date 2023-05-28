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
(job_id int NOT NULL PRIMARY KEY,
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


Create Table IF NOT EXISTS project01.countries4
(country_id int NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
country_name varchar(255),
region_id decimal(6,0)); 

DESC project01.countries4; 

/* It will show "AUTO_INCREMENT" in extra column */





/* 13. Write a SQL statement to create a table countries including columns country_id, country_name and 
region_id and make sure that the combination of columns country_id and region_id will be unique.
*/

Create Table IF NOT EXISTS project01.countries5
(country_id int NOT NULL,
country_name varchar(255),
region_id decimal(6,0) NOT NULL,
primary key(country_id,region_id)); 

DESC project01.countries5; 





/*
14. Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id 
and make sure that, the employee_id column does not contain any duplicate value at the time 
of insertion and the foreign key column job_id contain only those values which are exists in the jobs table.

+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
*/


Create Table project01.jobs2
(job_id int NOT NULL PRIMARY KEY,
job_title varchar(20),
min_salary decimal(6,0), 
max_salary decimal(6,0)
Check (max_salary <= 25000));


DESC project01.jobs2;



CREATE TABLE IF NOT EXISTS project01.job_history
(employee_id decimal(6,0) NOT NULL PRIMARY KEY,
START_DATE date NOT NULL,
END_DATE date NOT NULL, 
job_id int,
department_id decimal(4,0),
FOREIGN KEY (job_id) REFERENCES project01.jobs2(job_id)); 


DESC project01.job_history; 





/*
15. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, 
commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the 
foreign key columns combined by department_id and manager_id columns contain only those unique combination values, which combinations are exists in the 
departments table.

Assume the structure of departments table below.

+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | NO   | PRI | 0       |       |
| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+

*/


Create Table exercises.departments1
(
department_id decimal(4,0) primary key,
department_name varchar(30) NOT NULL,
manager_id decimal(6,0) DEFAULT 0,
location_id decimal(4,0)
); 



Create Table exercises.employees
(
employee_id decimal(6,0) NOT NULL PRIMARY KEY,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL, 
email varchar(100) NOT NULL, 
phone_number decimal(11,0) NOT NULL, 
hire_date date NOT NULL, 
job_id decimal(4,0) NOT NULL, 
salary decimal(10,0) NOT NULL, 
commission decimal(3,0) NOT NULL, 
manager_id decimal(6,0) DEFAULT NULL,
department_id decimal(4,0) DEFAULT NULL,
FOREIGN KEY(department_id,manager_id) REFERENCES exercises.departments1(department_id,manager_id)
);


DESC exercises.employees; 


-- Error





/*
16. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, 
job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, 
and the foreign key column department_id, reference by the column department_id of departments table, can contain only those values which are exists in the departments
table and another foreign key column job_id, referenced by the column job_id of jobs table, 
can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. 


"A foreign key constraint is not required merely to join two tables. For storage engines other than InnoDB, it is possible when defining a column to use 
a REFERENCES tbl_name(col_name) clause, which has no actual effect, and serves 
only as a memo or comment to you that the column which you are currently defining is intended to refer to a column in another table." - Reference dev.mysql.com


Assume that the structure of two tables departments and jobs.

+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  |     | NULL    |       |

| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+


+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+


*/



CREATE TABLE exercises.employees3
(
  Employee_id decimal(6,0) NOT NULL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  phone_number decimal(11,0) NOT NULL,
  hire_date date NOT NULL,
  job_id int NOT NULL,
  salary decimal(6,0),
  commission decimal(2,2) NOT NULL,
  manager_id decimal(6,0),
  department_id decimal(4,0),
  FOREIGN KEY (department_id) REFERENCES exercises.departments1(department_id),
  FOREIGN KEY (job_id) REFERENCES project01.jobs2(job_id))
  ENGINE = InnoDB; 
  
  
  
  -- Worked and Successful 
  /*
  +---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| Employee_id   | decimal(6,0)  | NO   | PRI | NULL    |       |
| first_name    | varchar(50)   | NO   |     | NULL    |       |
| last_name     | varchar(50)   | NO   |     | NULL    |       |
| email         | varchar(50)   | NO   |     | NULL    |       |
| phone_number  | decimal(11,0) | NO   |     | NULL    |       |
| hire_date     | date          | NO   |     | NULL    |       |
| job_id        | int           | NO   | MUL | NULL    |       |
| salary        | decimal(6,0)  | YES  |     | NULL    |       |
| commission    | decimal(2,2)  | NO   |     | NULL    |       |
| manager_id    | decimal(6,0)  | YES  |     | NULL    |       |
| department_id | decimal(4,0)  | YES  | MUL | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
11 rows in set (0.14 sec)

*/ 







/*
17. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and 
make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key 
column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. 
The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON 
UPDATE CASCADE action allows you to perform cross-table update and ON DELETE RESTRICT action reject the deletion. The default action is ON DELETE RESTRICT.

Assume that the structure of the table jobs and InnoDB Engine have been used to create the table jobs.

CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;


+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | int(11)      | NO   | PRI | NULL    |       |
| JOB_TITLE  | varchar(35)  | NO   |     |         |       |
| MIN_SALARY | decimal(6,0) | YES  |     | 8000    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

*/



CREATE TABLE exercises.employees4
(
  employee_id decimal(6,0) NOT NULL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  job_id int NOT NULL,
  salary decimal(6,0),
  FOREIGN KEY (job_id) REFERENCES project01.jobs2(job_id)
  ON UPDATE CASCADE
  ON DELETE RESTRICT)
  Engine = InnoDB; 
  


/*
Success 


+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | decimal(6,0) | NO   | PRI | NULL    |       |
| first_name  | varchar(50)  | NO   |     | NULL    |       |
| last_name   | varchar(50)  | NO   |     | NULL    |       |
| job_id      | int          | NO   | MUL | NULL    |       |
| salary      | decimal(6,0) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

*/ 





/*
18. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, 
salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the 
foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in 
the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON DELETE CASCADE 
that lets you allow to delete records in the employees(child) table that refer to a record in the jobs(parent) table when the record in 
the parent table is deleted and the ON UPDATE RESTRICT actions reject any updates.

Assume that the structure of the table jobs and InnoDB Engine have been used to create the table jobs.

CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;


+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | int(11)      | NO   | PRI | NULL    |       |
| JOB_TITLE  | varchar(35)  | NO   |     |         |       |
| MIN_SALARY | decimal(6,0) | YES  |     | 8000    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

*/



CREATE TABLE exercises.employees5
(
  employee_id decimal(6,0) NOT NULL primary key,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  job_id int NOT NULL, 
  salary decimal(6,0) NOT NULL,
  FOREIGN KEY (job_id) REFERENCES project01.jobs2(job_id)
  ON UPDATE CASCADE
  ON DELETE RESTRICT)
  Engine = InnoDB;
 
 
 /*
 +-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | decimal(6,0) | NO   | PRI | NULL    |       |
| first_name  | varchar(50)  | NO   |     | NULL    |       |
| last_name   | varchar(50)  | NO   |     | NULL    |       |
| job_id      | int          | NO   | MUL | NULL    |       |
| salary      | decimal(6,0) | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.31 sec)

*/





/*
19. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, 
job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, 
and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are 
exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, 
The ON DELETE SET NULL action will set the foreign key column values in the child table(employees) to NULL when the record 
in the parent table(jobs) is deleted, with a condition that the foreign key column in the child table must accept NULL values 
and the ON UPDATE SET NULL action resets the values in the rows in the child table(employees) to NULL values when the rows in the parent table(jobs) are updated.

Assume that the structure of two table jobs and InnoDB Engine have been used to create the table jobs.

CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;


+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | int(11)      | NO   | PRI | NULL    |       |
| JOB_TITLE  | varchar(35)  | NO   |     |         |       |
| MIN_SALARY | decimal(6,0) | YES  |     | 8000    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+


*/




CREATE TABLE exercises.employees6
(
  employee_id decimal(6,0) not null primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  job_id int,
  salary decimal(6,0) not null,
  FOREIGN KEY (job_id) REFERENCES project01.jobs2 (job_id)
  ON DELETE SET NULL
  ON UPDATE SET NULL)
  Engine = InnoDB;
  


/*
mysql> DESC exercises.employees6;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | decimal(6,0) | NO   | PRI | NULL    |       |
| first_name  | varchar(50)  | NO   |     | NULL    |       |
| last_name   | varchar(50)  | NO   |     | NULL    |       |
| job_id      | int          | YES  | MUL | NULL    |       |
| salary      | decimal(6,0) | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

*/ 

  
