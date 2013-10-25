/* The following Inner Join statements are equivalent */

/* Inner Join Option #1 */
SELECT 'Inner Join', employees.ename, employees.salary, departments.dname
FROM employees, departments
WHERE employees.department_id=departments.department_id;

/* Inner Join Option #2 */
SELECT 'Inner Join', employees.ename, employees.salary, departments.dname
FROM employees
JOIN departments
WHERE employees.department_id=departments.department_id;

/* Inner Join Option #3 */
SELECT 'Inner Join', employees.ename, employees.salary, departments.dname
FROM employees
INNER JOIN departments
WHERE employees.department_id=departments.department_id;

/* Inner Join Option #4 */
SELECT 'Inner Join', employees.ename, employees.salary, departments.dname
FROM employees
INNER JOIN departments
ON employees.department_id=departments.department_id;
