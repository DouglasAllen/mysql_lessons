USE mydb;

/* Drop tables if they exist */
DROP TABLE IF EXISTS employees;  
DROP TABLE IF EXISTS departments;
 
/* Create departments table */
CREATE TABLE departments (  
	department_id int(11) NOT NULL AUTO_INCREMENT,  
	dname varchar(255) NOT NULL,   
	PRIMARY KEY  (department_id) 
) ENGINE=InnoDB; 
  
 
/* Create "employees" table with FOREIGN KEY */ 
 CREATE TABLE employees (   
	employee_id int(11) NOT NULL AUTO_INCREMENT,  
	ename varchar(255) NOT NULL,  
	d_id int(11) NOT NULL, 
	salary decimal(7,2) NOT NULL,   
	PRIMARY KEY  (employee_id),
    FOREIGN KEY (d_id) REFERENCES departments (department_id)
) ENGINE=InnoDB;   

/* Data for the table departments */
INSERT INTO departments(department_id, dname) 
VALUES
(1,'Engineering'),       
(2,'Sales'),      
(3,'Marketing'),
(4,'HR');

/* Data for the table employees */
INSERT INTO employees(employee_id, ename, salary, d_id)
VALUES
(1,'jack','3000.00', 1),
(2,'mary','2500.00', 2),
(3,'nichole','4000.00', 1),
(4,'angie','5000.00', 2),
(5,'jones','5000.00', 3);

SELECT e.ename, e.salary, d.dname
FROM employees AS e, departments AS d;
/* Add another SQL query */
SELECT * FROM employees;
