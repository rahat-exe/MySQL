-- 8.  Consider the following tables namely “DEPARTMENTS” and “EMPLOYEES” Their schemas are as follows,  Departments ( dept _no , dept_ name , dept_location );  Employees ( emp_id , emp_name , emp_salary,dept_no); a) Develop a query to grant all privileges of employees table into departments table b) Develop a query to grant some privileges of employees table into departments table c) Develop a query to revoke all privileges of employees table from departments table d) Develop a query to revoke some privileges of employees table from departments table e) Write a query to implement the save point. 
-- (a) Grant ALL privileges on Employees to Departments (user)


GRANT ALL PRIVILEGES ON Employees TO departments_user;

-- (b) Grant specific privileges
GRANT SELECT, INSERT ON Employees TO departments_user;

-- (c) Revoke all privileges
REVOKE ALL PRIVILEGES ON Employees FROM departments_user;

-- (d) Revoke specific privileges
REVOKE INSERT ON Employees FROM departments_user;

-- (e) SAVEPOINT
BEGIN;
  INSERT INTO Employees VALUES (201, 'Test User', 50000, 10);
  SAVEPOINT sp1;

  UPDATE Employees SET emp_salary = 55000 WHERE emp_id = 201;
  SAVEPOINT sp2;

  DELETE FROM Employees WHERE emp_id = 201;

  ROLLBACK TO sp2;  -- Undoes DELETE only, keeps UPDATE
COMMIT;
