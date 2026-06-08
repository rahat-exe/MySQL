-- 5.  Create an Emp table with the following fields: (EmpNo, EmpName, Job,Basic, DA, HRA,PF, GrossPay, NetPay) (Calculate DA as 30% of Basic and  HRA as 40% of Basic)  ( a ) Insert Five Records and calculate GrossPay and NetPay.  ( b ) Display the employees whose  Basic is lowest in each department .   ( c ) If NetPay is  less than <Rs. 10,000 add Rs. 1200 as special allowances . ( d ) Display the employees whose GrossPay lies between 10,000  & 20,000 ( e ) Display all the employees who earn maximum salary .

use q1;

CREATE TABLE Emp (
    EmpNo    INT PRIMARY KEY,
    EmpName  VARCHAR(50),
    Job      VARCHAR(30),
    Basic    DECIMAL(10,2),
    DA       DECIMAL(10,2),  -- 30% of Basic
    HRA      DECIMAL(10,2),  -- 40% of Basic
    PF       DECIMAL(10,2),
    GrossPay DECIMAL(10,2),  -- Basic + DA + HRA
    NetPay   DECIMAL(10,2)   -- GrossPay - PF
);

-- (a) Insert and calculate GrossPay, NetPay
INSERT INTO Emp (EmpNo, EmpName, Job, Basic, PF)
VALUES (101, 'Amit',   'Clerk',    15000, 1800);
-- Then update calculated fields:
UPDATE Emp SET
    DA       = Basic * 0.30,
    HRA      = Basic * 0.40,
    GrossPay = Basic + (Basic * 0.30) + (Basic * 0.40),
    NetPay   = Basic + (Basic * 0.30) + (Basic * 0.40) - PF
WHERE EmpNo = 101;

INSERT into Emp values(102,'Rahat',"Manager",3000,3000*0.30,3000*0.40, 4000, 3000+3000*0.30+3000*0.40, 3000 + 3000*0.30 + 3000*0.40 - 4000);

select job , min(Basic) as min_basic from emp group by job;

update emp set Netpay = NetPay + 1200 where Netpay < 10000;

select * from emp where GrossPay between 10000 and 20000;

SELECT * from emp where Basic = (select max(Basic) from emp);