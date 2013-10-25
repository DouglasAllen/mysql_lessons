/* Start from scratch */
DROP VIEW IF EXISTS v_HighSalaryEmployees;
DROP VIEW IF EXISTS v_LowSalaryEmployees;

CREATE VIEW v_HighSalaryEmployees AS
  SELECT ename, salary FROM employees
  WHERE salary > 4000;

CREATE VIEW v_LowSalaryEmployees AS
  SELECT ename, salary FROM employees
  WHERE salary < 3000;

