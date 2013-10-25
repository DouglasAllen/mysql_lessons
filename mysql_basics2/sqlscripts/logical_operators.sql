/* Use logical operators */
SELECT * FROM employees 
WHERE salary > 3500 AND department_id >= 2;

SELECT * FROM employees
WHERE (department_id = 1 AND NOT name = 'nichole')
      OR salary > 4500;