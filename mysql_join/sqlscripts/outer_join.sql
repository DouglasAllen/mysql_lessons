/* Outer Join could be either LEFT JOIN or RIGHT JOIN */

/* Outer Join #1 - LEFT JOIN */
/* All records (actually fields of the records) of the "employees" table
 * are included in the result set because the "employees" table is
 *  left side of the JOIN */
SELECT 'Outer Join - LEFT JOIN ', employees.ename, employees.salary, departments.dname
FROM employees
LEFT JOIN departments
ON employees.department_id=departments.department_id;

/* Outer Join #2 - RIGHT JOIN */
/* All records (actually fields of the records) of the "departments" table
 * are included in the result set because the "departments" table is
 * right side of the JOIN */
SELECT 'Outer Join - RIGHT JOIN', employees.ename, employees.salary, departments.dname
FROM employees
RIGHT JOIN departments
ON employees.department_id=departments.department_id;

/* Outer Join #3- RIGHT JOIN, Same result as Outer Join #1 
 * because the tables are switched but using RIGHT JOIN
 * instead of LEFT JOIN */
SELECT 'Outer Join - LEFT JOIN ', employees.ename, employees.salary, departments.dname
FROM departments
RIGHT JOIN employees
ON employees.department_id=departments.department_id;

/* Outer Join #4 - LEFT JOIN, Same result as Outer Join #2 
 * because the tables are swtiched but using LEFT JOIN
 * instead of RIGHT JOIN */
SELECT 'Outer Join - RIGHT JOIN', employees.ename, employees.salary, departments.dname
FROM departments
LEFT JOIN employees
ON employees.department_id=departments.department_id;

/* Outer Join #5 - Same result as #3 but using optional OUTER keyword */
SELECT 'Outer Join - LEFT JOIN ', employees.ename, employees.salary, departments.dname
FROM departments
RIGHT OUTER JOIN employees
ON employees.department_id=departments.department_id;

/* Outer Join #6 - Same result as #4 but using optional OUTER keyword */
SELECT 'Outer Join - RIGHT JOIN', employees.ename, employees.salary, departments.dname
FROM departments
LEFT OUTER JOIN employees
ON employees.department_id=departments.department_id;




