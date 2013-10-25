SELECT ename, salary FROM employees 
WHERE d_id =
     (SELECT department_id FROM departments
      WHERE dname = 'Sales');