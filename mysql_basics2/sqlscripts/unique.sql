/* Create "employees" table */
DROP TABLE IF EXISTS employees;  
 
CREATE TABLE employees (  
    employee_id int(11) NOT NULL AUTO_INCREMENT, 
    /* name field now has UNIQUE constraint */
    name varchar(255) NOT NULL UNIQUE, 
    salary decimal(7,2) NOT NULL,  
    PRIMARY KEY  (employee_id)
);

/* Data for the table employees - using AUTO_INCREMENT */
INSERT INTO employees(name, salary)
VALUES
('angie','5500.00'),
('jones','5000.00'),
('jones','4000.00');  /* This should result in an error */

/* Display records */
SELECT * FROM employees;
