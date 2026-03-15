USE learning;

SELECT * FROM users;


-- GROUP BY -- GROUP BY groups rows that have the same value in a column.

SELECT city FROM users GROUP BY city;
SELECT age FROM users GROUP BY age;
SELECT age, COUNT(*) FROM users GROUP BY age;
SELECT city, COUNT(*) FROM users GROUP BY city;
SELECT city, COUNT(email) FROM users GROUP BY city;
SELECT city, COUNT(age) FROM users GROUP BY city;
SELECT city, AVG(age) from users GROUP BY city;
SELECT city, MIN(age) from users GROUP BY city;
SELECT city, MAX(age) from users GROUP BY city;
SELECT city, SUM(age) from users GROUP BY city;


-- HAVING -- HAVING is used to filter the results of a GROUP BY query.
SELECT city, COUNT(*) FROM users GROUP BY city;
SELECT city, COUNT(*) FROM users GROUP BY city HAVING COUNT(*) >1;
SELECT city, COUNT(*) FROM users GROUP BY city HAVING COUNT(*) >2;  


-- WHERE and GROUP BY
SELECT city, COUNT(*) FROM users GROUP BY city;
SELECT city, COUNT(*) FROM users where age>20 GROUP BY city;
-- here first where is applied then group by

-- WHERE and HAVING
SELECT city, COUNT(*) FROM users where age>20 GROUP BY city HAVING COUNT(*) >1;
-- here first where is applied then group by then having