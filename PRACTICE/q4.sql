-- 4 . (Exercise on order by and group by clauses)    Create Sales table with the following fields( Sales No, Salesname, Branch, Salesamount, DOB)  ( a ) Insert five records  ( b ) Calculate total salesamount in each branch  ( c ) Calculate average salesamount in each branch . ( d ) Display all the salesmen, DOB who are born in the month of December as day in character format i.e. 21-Dec-09  ( e ) Display the name and DOB of salesman in alphabetical  order of the month. 

use q1;

CREATE TABLE Sales (
    SalesNo     INT PRIMARY KEY,
    Salesname   VARCHAR(50),
    Branch      VARCHAR(50),
    Salesamount DECIMAL(10,2),
    DOB         DATE
);

INSERT INTO Sales(SalesNo,Salesname,Branch,Salesamount, DOB) VALUES (1, 'Arjun',   'Delhi',   45000, '1990-12-21');
INSERT INTO Sales VALUES (2, 'Priya',   'Mumbai',  52000, '1988-12-05');
INSERT INTO Sales VALUES (3, 'Rahul',   'Delhi',   47000, '1992-07-14');
INSERT INTO Sales VALUES (4, 'Sneha',   'Chennai', 39000, '1995-03-08');
INSERT INTO Sales VALUES (5, 'Vikram',  'Mumbai',  61000, '1985-12-30');

SELECT  sum(Salesamount) as Total_sales from sales;
Select Branch, sum(Salesamount) as 'Total' from sales group by Branch;

Select Branch, avg(Salesamount) as 'Total' from sales group by Branch;

select Salesname, DATE_FORMAT(DOB,'%d-%b-%y') as DOB from sales where month(DOB) = 12;
select Salesname, DOB from sales where month(DOB) = 12;

select salesname,DOB from sales order by MONTHNAME(DOB) DESC;