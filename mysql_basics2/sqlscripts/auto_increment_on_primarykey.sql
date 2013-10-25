/* Create "employees" table */
DROP TABLE IF EXISTS employees;  
 
CREATE TABLE employees (  
    employee_id int(11) NOT NULL AUTO_INCREMENT, 
    name varchar(255) NOT NULL, 
    salary decimal(7,2) NOT NULL,  
    PRIMARY KEY  (employee_id)
);

/* Data for the table employees - providing employee_id explicitly  */
INSERT INTO employees(employee_id, name, salary)
VALUES
(1,'jack','3000.00'),
(2,'mary','2500.00'),
(3,'nichole','4000.00');

/* Data for the table employees - using AUTO_INCREMENT */
INSERT INTO employees(name, salary)
VALUES
('angie','5000.00'),
('jones','5000.00');

/* Display records */
SELECT * FROM employees;
