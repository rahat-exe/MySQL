USE learning;

-- Insert -- This adds new data (rows) into a table.
INSERT INTO students (name, age) VALUES ('Raja', 25);

-- Select -- Used to retrieve data from the database.
SELECT * FROM students;

-- Select specific columns
SELECT name from students;

-- Update -- Used to modify existing data in a table.
UPDATE students SET age = 26 WHERE name = 'Rahat';
UPDATE students SET name = "Ruhul" WHERE name = "Rahat";
SELECT * FROM students;

-- Delete -- Removes rows from a table.

DELETE FROM students WHERE name = "Ruhul";