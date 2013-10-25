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

/* Get number of employees for each department using GROUP BY &
 * the number of employees are greater than or equal to 2.
 */
SELECT department_id, COUNT(employee_id) AS employee_count 
FROM employees
GROUP BY department_id
HAVING employee_count >= 2;

