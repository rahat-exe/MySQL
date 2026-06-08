-- 3. Rollback and Commit commands Create Teacher table with the following fields(Name, DeptNo, Date of joining, DeptName, Location, Salary)  ( a ) Insert five records  ( b ) Give Increment of 25% salary for Mathematics Department .  ( c ) Perform  Rollback command  ( d ) Give Increment of 15% salary for Commerce Department ( e ) Perform commit command 


use q1;

CREATE TABLE Teacher (
    Name          VARCHAR(50),
    DeptNo        INT,
    Date_of_joining DATE,
    DeptName      VARCHAR(50),
    Location      VARCHAR(50),
    Salary        DECIMAL(10,2)
);

INSERT INTO Teacher VALUES ('Anjali Roy',   1, '2010-06-01', 'Mathematics', 'Block A', 40000);
INSERT INTO Teacher VALUES ('Suresh Nair',  2, '2015-03-15', 'Commerce',    'Block B', 35000);
INSERT INTO Teacher VALUES ('Meena Das',    1, '2008-09-10', 'Mathematics', 'Block A', 42000);
INSERT INTO Teacher VALUES ('Kiran Mehta',  3, '2019-01-20', 'Science',     'Block C', 38000);
INSERT INTO Teacher VALUES ('Pooja Verma',  2, '2012-07-05', 'Commerce',    'Block B', 36000);


update Teacher set salary = salary * 1.25 where deptname = 'Mathematics';

ROLLBACK;

update Teacher set salary = salary * 1.15 where deptname ="Commmerce";

COMMIT;