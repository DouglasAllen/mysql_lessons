/* Start clean */
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

/* Recreate "departments" table */ 
CREATE TABLE departments (  
	department_id int(11) NOT NULL AUTO_INCREMENT,  
	dname varchar(255) NOT NULL,   
	PRIMARY KEY  (department_id) 
) ENGINE=InnoDB; 
  
 
/* Recreate "employees" table, Each employee belongs to a department */  
CREATE TABLE employees (   
	employee_id int(11) NOT NULL AUTO_INCREMENT,  
	ename varchar(255) NOT NULL,  
	department_id int(11) default NULL, 
	salary decimal(7,2) NOT NULL,   
	PRIMARY KEY  (employee_id) 
) ENGINE=InnoDB;   

/* Data for the table departments */
INSERT INTO departments(department_id, dname) 
VALUES
(1,'Engineering'),       
(2,'Sales'),      
(3,'Marketing'),
(4,'HR');

/* Data for the table employees */
INSERT INTO employees(employee_id, ename, salary, department_id)
VALUES
(1,'jack','3000.00', 1),
(2,'mary','2500.00', 2),
(3,'nichole','4000.00', 1),
(4,'angie','5000.00', 2),
(5,'jones','5000.00', 3),
(6,'newperson','5000.00', NULL);
 
