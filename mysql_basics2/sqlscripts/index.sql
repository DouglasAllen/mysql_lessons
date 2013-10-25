/* Create "employees" table */
DROP TABLE IF EXISTS employees;  
 
CREATE TABLE employees (  
    employee_id int(11) NOT NULL AUTO_INCREMENT, 
    name varchar(255) NOT NULL UNIQUE, 
    salary decimal(7,2) NOT NULL,  
    PRIMARY KEY  (employee_id),
    INDEX (name)
);

/* Data for the table employees */
INSERT INTO employees(name, salary)
VALUES
('angie','5500.00'),
('bobby','2500.00'),
('jones','5000.00');

/* Display records */
SELECT * FROM employees;
