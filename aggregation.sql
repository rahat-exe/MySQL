USE learning;

SELECT * from users;


-- Aggregation functions -- Aggregation functions take many rows → return one calculated value.

-- COUNT() -- Counts the number of rows.
SELECT COUNT(*) FROM users;
-- counts all rows in the table (including rows with NULL values)

SELECT COUNT(email) FROM users;
-- counts rows where email is NOT NULL

SELECT COUNT(city) FROM users;
-- counts rows where city is NOT NULL

SELECT COUNT(DISTINCT city) FROM users;
-- counts unique (distinct) non-null city values

SELECT * FROM users;

-- SUM() -- Sums all non-NULL values in a column.
SELECT SUM(age) FROM users;

-- AVG() -- Calculates the average value.
SELECT AVG(age) FROM users;

-- MIN() -- Returns the smallest value.
SELECT MIN(age) FROM users;

-- MAX() -- Returns the largest value.
SELECT MAX(age) FROM users;

-- Using Aggregation with WHERE

SELECT * FROM users WHERE age = (SELECT MAX(age) FROM users);
SELECT COUNT(*) FROM users WHERE age>18;
SELECT COUNT(*) FROM users WHERE city IN("krishnai","goalpara");
SELECT COUNT(*) FROM users where city = "krishnai" OR city="goalpara";