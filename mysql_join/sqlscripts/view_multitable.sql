/* Start from scratch */
DROP VIEW IF EXISTS v_HighSalaryEmployees;
DROP VIEW IF EXISTS v_LowSalaryEmployees;

CREATE VIEW v_HighSalaryEmployees AS
  SELECT employees.ename, employees.salary, departments.dname
  FROM employees, departments
  WHERE employees.d_id=departments.department_id AND
  salary > 4000;

CREATE VIEW v_LowSalaryEmployees AS
  SELECT employees.ename, employees.salary, departments.dname
  FROM employees, departments
  WHERE employees.d_id=departments.department_id AND
  salary < 3000;


