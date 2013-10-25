/* Create "employees" table */
DROP TABLE IF EXISTS employees; 
 
CREATE TABLE employees ( 
    employee_id int(11) NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    salary decimal(7,2) NOT NULL, 
    department_id int(11) NOT NULL,
    PRIMARY KEY  (employee_id)
) ENGINE=InnoDB;  

/* Data for the table employees */
INSERT INTO employees(name, salary, department_id)
VALUES
('jack','3000.00', 1),
('mary','2500.00', 2),
('nichole','4000.00', 1),
('angie','5000.00', 2),
('jones','5000.00', 3);

/* Use comparison operators */
SELECT * FROM employees 
WHERE salary > 3500;