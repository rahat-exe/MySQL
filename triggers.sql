CREATE DATABASE trigger_demo;
USE trigger_demo;

CREATE TABLE Students(id int PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20));

-- BEFORE INSERT Trigger
DELIMITER //

CREATE TRIGGER before_students_insert
BEFORE INSERT
ON Students
FOR EACH ROW
BEGIN
 SET NEW.name = UPPER(NEW.name);
END //

DELIMITER ;

INSERT INTO Students(name) VALUES ("raja");
SELECT * FROM Students;

DELETE FROM students WHERE name="RAHAT";

---------------------------------------
-- AFTER INSERT Trigger
---------------------------------------

create table employees(emp_id int PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20));
CREATE table employees_log(name VARCHAR(20));


DELIMITER //

CREATE Trigger after_insert_trigger
AFTER INSERT
ON employees
FOR EACH ROW
Begin
    insert into employees_log
    values(NEW.name);
    End //

DELIMITER ;

insert into employees(name) values("hello")

SELECT * from employees_log;
DELETE from employees;
SELECT * from employees;
DELETE from employees where name = "Rahat";
desc employees;



---------------------------------------
-- BEFORE UPDATE Trigger
---------------------------------------

CREATE table staff(staff_id int PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20), salary int(20));

DELIMITER //

create Trigger before_update_trigger
BEFORE UPDATE
on staff
For each ROW
begin
 IF new.salary < 0 THEN
 SET new.salary = 5000;
 END IF;

 END //

 DELIMITER ;

 insert into staff(name, salary) VALUES ("Raja", 0);
 UPDATE staff set salary = 0 where staff_id = 1;
 SELECT * from staff;


---------------------------------------
-- AFTER UPDATE Trigger
---------------------------------------

CREATE TABLE salary_audit(
    emp_id INT,
    old_salary INT,
    new_salary INT
);

DELIMITER //

CREATE trigger after_update_trigger
AFTER UPDATE
ON staff
FOR EACH ROW
BEGIN
 insert into salary_audit(emp_id, old_salary, new_salary)
 VALUES (old.staff_id, old.salary, new.salary);
 END //

 update staff set salary = 6000 where staff_id = 1;

 select * from staff;

 select * from salary_audit;



 ---------------------------------------
-- BEFORE DELETE Trigger
---------------------------------------

CREATE TABLE deleted_students(
    id INT,
    name VARCHAR(30)
);

DELIMITER //

CREATE trigger before_delete_trigger
BEFORE DELETE
ON Students
FOR EACH ROW
begin
insert into deleted_students values (old.id, old.name);
end //

DELIMITER ;

DELETE FROM Students where id = 2;
DELETE FROM Students where name = "Raja";


select * from deleted_students;
select * from Students;



---------------------------------------
-- AFTER DELETE Trigger
---------------------------------------

CREATE TABLE deleted_students_log(
    id INT,
    name VARCHAR(30)
);


DELIMITER //
CREATE trigger after_delete_trigger
AFTER DELETE
ON Students
FOR EACH ROW
begin
 insert into deleted_students_log values (old.id, old.name);
 end //

 DELETE from Students where name = "RAJA";

 select * from deleted_students_log;


------------------------------------------------

DELIMITER //

CREATE Trigger after_insert_trigger2
BEFORE INSERT
ON employees
FOR EACH ROW
Begin
    SET new.name = UPPER(new.name);
    insert into employees_log
    values(NEW.name);
    End //

DELIMITER ;