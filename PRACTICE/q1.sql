-- 1. (Exercise on retrieving records from the table)  EMPLOYEES (Employee_Id, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Id, Salary, Commission_Pct, Manager_Id, Department_Id) ( a) Find out the employee id, names, salaries  of all the employees ( b) List out the employees who works under manager 100 ( c) Find the names of the employees who have a salary greater than or equal to 4800 ( d) List out the employees whose last name is ‘AUSTIN’ ( e) Find the names of the employees who works in departments 60,70 and 80 ( f ) Display the unique Manager_Id.

create DATABASE if not exists q1;
use q1;

CREATE table employees(employee_id int PRIMARY KEY, first_name varchar(25),
last_name varchar(25), email varchar(50), phone_number int(10), hire_date DATE, job_id int, salary DOUBLE(10,2), commission_pct int, manager_id int, department_id int);

SELECT employee_id,first_name,last_name,salary from employees;
SELECT employee_id,first_name,last_name,salary from employees where manager_id=100;

SELECT employee_id,first_name,last_name,salary from employees where salary >= 4800;

SELECT employee_id,first_name,last_name,salary from employees where last_name = "Austin" ;

SELECT employee_id,first_name,last_name,salary from employees where department_id IN (60,70,80);

SELECT DISTINCT(manager_id) from employees;
