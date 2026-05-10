CREATE DATABASE join_practice;
USE join_practice;

CREATE Table Employees(EmpID int PRIMARY KEY AUTO_INCREMENT, EmpName VARCHAR(30), DeptID int, FOREIGN KEY(DeptID) REFERENCES Departments(DeptID));

CREATE TABLE Departments(DeptID int PRIMARY KEY AUTO_INCREMENT, DeptName VARCHAR(20));

INSERT INTO Employees(EmpName) VALUES("Sohel");

INSERT INTO Departments(DeptName) VALUES('Designer');

SELECT EmpName,DeptName FROM Employees INNER JOIN Departments ON Employees.DeptID = Departments.DeptID;

SELECT * FROM Employees INNER JOIN Departments ON Employees.DeptID = Departments.DeptID;

SELECT EmpName,DeptName FROM Employees LEFT JOIN Departments ON Employees.DeptID = Departments.DeptID;

SELECT EmpName,DeptName FROM Employees RIGHT JOIN Departments ON Employees.DeptID = Departments.DeptID;

select * from Departments;
SELECT * FROM Employees;

DELETE from Departments WHERE DeptID = 4;