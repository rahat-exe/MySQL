USE learning;
SELECT * FROM students;
-- ORDER BY -- ORDER BY sorts the result of a query.

SELECT * FROM students ORDER BY age;
SELECT * FROM students ORDER BY age DESC;
SELECT * FROM students ORDER BY name ASC;
SELECT * FROM students ORDER BY name DESC;

-- LIMIT -- LIMIT restricts the number of rows returned.
SELECT * FROM students LIMIT 1;

-- OFFSET -- OFFSET skips rows before returning results.
SELECT * FROM students LIMIT 1 OFFSET 1;
