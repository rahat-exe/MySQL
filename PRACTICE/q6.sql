-- 6. Employee Database An Enterprise wishes to maintain a database to automate its operations. Enterprise is divided into certain departments and each department consists of employees. The following two tables describes the automation schemas  Dept (deptno, dname, loc)  Emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) a) Update the employee salary by 15%, whose experience is greater than 10 years.  b) Delete the employees, who completed 30 years of service. c) Display the manager who is having maximum number of employees working under him? d) Create a view, which contain employee names and their manager 

use q1;

-- (a) Update salary by 15% for experience > 10 years
UPDATE Emp
SET sal = sal * 1.15
WHERE (SYSDATE - hiredate) / 365 > 10;  -- Oracle

-- MySQL:
UPDATE Emp
SET sal = sal * 1.15
WHERE DATEDIFF(CURDATE(), hiredate) / 365 > 10;

-- (b) Delete employees with 30+ years of service
DELETE FROM Emp
WHERE (SYSDATE - hiredate) / 365 >= 30;

-- (c) Manager with maximum employees under him
SELECT mgr, COUNT(*) AS emp_count
FROM Emp
WHERE mgr IS NOT NULL
GROUP BY mgr
ORDER BY emp_count DESC
FETCH FIRST 1 ROWS ONLY;  -- Oracle
-- MySQL: add LIMIT 1 instead

-- (d) View of employee names and their managers
CREATE VIEW EmpManager AS
SELECT e.ename AS Employee, m.ename AS Manager
FROM Emp e
JOIN Emp m ON e.mgr = m.empno;

SELECT * FROM EmpManager;