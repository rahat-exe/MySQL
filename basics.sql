USE practice_database;

SHOW TABLES;

SHOW DATABASES;


SELECT  * FROM student;

DROP  TABLE students;


Create a table

CREATE TABLE student (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  age INT
);

INSERT INTO student (name, age) VALUES ('Raja', 24);

SELECT (name) FROM student;

SELECT COUNT(*) FROM student;

USE db;

CREATE TABLE hello (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

DROP TABLE hello;

SHOW TABLES;