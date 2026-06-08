-- 9. Using the tables “DEPARTMENTS” and “EMPLOYEES” perform the following queries a) Display the employee details, departments that the departments are same in both the emp and dept. b) Display the employee name and Department name by implementing a left outer join. c) Display the employee name and Department name by implementing a right outer join. d) Display the details of those who draw the salary greater than the average salary. 

-- (a) INNER JOIN — only matching dept_no in both tables
SELECT e.emp_id, e.emp_name, e.emp_salary, d.dept_name
FROM Employees e
INNER JOIN Departments d ON e.dept_no = d.dept_no;

-- (b) LEFT OUTER JOIN — all employees, even without a department
SELECT e.emp_name, d.dept_name
FROM Employees e
LEFT JOIN Departments d ON e.dept_no = d.dept_no;

-- (c) RIGHT OUTER JOIN — all departments, even with no employees
SELECT e.emp_name, d.dept_name
FROM Employees e
RIGHT JOIN Departments d ON e.dept_no = d.dept_no;

-- (d) Salary greater than average
SELECT * FROM Employees
WHERE emp_salary > (SELECT AVG(emp_salary) FROM Employees);
