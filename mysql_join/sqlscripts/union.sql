DROP TABLE IF EXISTS HighSalaryEmployees;

CREATE TEMPORARY TABLE HighSalaryEmployees 
SELECT ename, salary FROM employees
WHERE salary > 4000;

DROP TABLE IF EXISTS LowSalaryEmployees;

CREATE TEMPORARY TABLE LowSalaryEmployees 
SELECT ename, salary FROM employees
WHERE salary < 3000;

/* Combine the output of multiple SELECT */
SELECT ename, salary FROM HighSalaryEmployees
UNION
SELECT ename, salary FROM LowSalaryEmployees;

 
