-- Creates a new database
CREATE DATABASE learning;

-- Use That database
USE learning;

SHOW DATABASES;
SHOW TABLES;

-- Delete that database
DROP DATABASE learning;

-- Changes database properties
ALTER DATABASE learning
CHARACTER SET utf8mb4;

-- Create Table
CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL
)

-- Delete table completely
DROP TABLE students;


-- -- Alter Table

-- Add a new column
ALTER TABLE students
ADD email VARCHAR(255) NOT NULL UNIQUE;

-- Remove column
ALTER TABLE students
DROP COLUMN email;

-- Modify column
ALTER TABLE students
MODIFY COLUMN age INT NOT NULL DEFAULT 0;

-- Rename column
ALTER TABLE users
RENAME COLUMN name TO first_name;

-- Rename table
ALTER TABLE students
RENAME TO users;

ALTER TABLE users
RENAME TO students;


SELECT * FROM students;

---- TRUNCATE TABLE -- Removes all rows but keeps the table structure.
TRUNCATE TABLE students;

DESC Students;