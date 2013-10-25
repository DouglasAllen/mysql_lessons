/* Use Regular Expression */

/* Get all records whose name is either 'jones' or 'mary' */
SELECT * FROM employees 
WHERE name REGEXP 'jones|mary';

/* Get all records whose name starts with 'j' */
SELECT * FROM employees 
WHERE name REGEXP '^j';

/* Get all records whose name ends with 'e' */
SELECT * FROM employees 
WHERE name REGEXP 'e$';




