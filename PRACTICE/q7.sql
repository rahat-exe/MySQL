-- 7. Using Employee Database perform the following queries a) Determine the names of employee, who earn more than their managers.  b) Determine the names of employees, who take highest salary in their departments.  c) Determine the employees, who are located at the same place.  d) Determine the employees, whose total salary is like the minimum Salary of any department.  e) Determine the department which does not contain any employees.

-- (a) Employees who earn more than their own manager
SELECT e.ename
FROM Emp e
JOIN Emp m ON e.mgr = m.empno
WHERE e.sal > m.sal;

-- (b) Highest salary earner in each department
SELECT ename, deptno, sal
FROM Emp
WHERE sal IN (
    SELECT MAX(sal) FROM Emp GROUP BY deptno
);

-- (c) Employees located at the same place (same dept location)
SELECT e.ename, d.loc
FROM Emp e
JOIN Dept d ON e.deptno = d.deptno
WHERE d.loc IN (
    SELECT loc FROM Dept
    GROUP BY loc HAVING COUNT(*) > 1
);

-- (d) Employees whose total salary equals minimum salary of any department
SELECT ename, sal
FROM Emp
WHERE sal IN (
    SELECT MIN(sal) FROM Emp GROUP BY deptno
);

-- (e) Departments with no employees
SELECT dname FROM Dept
WHERE deptno NOT IN (
    SELECT DISTINCT deptno FROM Emp
    WHERE deptno IS NOT NULL
);