USE mydb;

/* Drop tables if they exist */
DROP TABLE IF EXISTS employees;  
DROP TABLE IF EXISTS departments;

/* Create "departments" table */
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
    ON DELETE CASCADE
    ON UPDATE CASCADE
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


/* Observe the impact of having INDEX */
SHOW STATUS LIKE '%handler_read%';

SELECT 'Inner Join', employees.ename, employees.salary, departments.dname
FROM employees
JOIN departments
WHERE employees.d_id=departments.department_id AND
      employees.ename='jack';
      
SHOW STATUS LIKE '%handler_read%';

/* Analyze the query using EXPLAIN */
EXPLAIN SELECT 'Inner Join', employees.ename, employees.salary, departments.dname
FROM employees
JOIN departments
WHERE employees.d_id=departments.department_id AND
      employees.ename='jack'\G

