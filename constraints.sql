use learning;


-- Constraints -- rules applied to table columns
CREATE TABLE courses(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL
);

INSERT INTO courses(name) VALUES ("Physics"), ("Maths"), ("Chemistry");

CREATE Table students(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200),
    email VARCHAR(200) UNIQUE,
    courseId INT,
    Foreign Key (courseId) REFERENCES courses(id)
);

SELECT * FROM courses;
ALTER Table students ADD COLUMN age int CHECK(age >= 18);
DESC students;
INSERT INTO students (name,courseId,age) VALUES ("user44",2,18);
SELECT * FROM students;


-- CONSTRAINTS

-- 1.Primary key -- uniquely identifies each row -- must be unique -- cannot be null
-- 2.Foreign key -- connects one table to another
-- 3.unique -- ensures all values are different
-- 4.not null -- values must be provided
-- 5.check -- add conditions -- only valid if condition is true
-- 6.default -- sets default if no value is given -- if no value is inserted it fills automatically