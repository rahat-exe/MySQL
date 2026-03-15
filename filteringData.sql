USE learning;


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    age INT NOT NULL,
    city VARCHAR(255)
)

INSERT INTO users (name, age, city) VALUES ("Omor", 31, "Dhubri");
INSERT INTO users (name, age, city, email) VALUES ("Jitu", 25, "Gandhinagar","");

SELECT * FROM users;

-- WHERE -- WHERE filters rows based on a condition.
SELECT * FROM users WHERE age = 31;
SELECT * FROM users WHERE age > 18;


-- AND -- AND means both conditions must be true.
SELECT * FROM users WHERE age > 18 AND city = "Dhubri";

-- OR -- OR means at least one condition must be true
SELECT * FROM users WHERE age > 18 OR city = "Dhubri";
SELECT * FROM users WHERE city = "goalpara" OR city = "Dhubri";


-- NOT -- NOT means the condition is not true.
SELECT * FROM users WHERE NOT age = 31;
SELECT * FROM users WHERE NOT city = "Dhubri";
SELECT * FROM users WHERE NOT city != "Dhubri";


-- BETWEEN -- Used for ranges.
SELECT * FROM users WHERE age BETWEEN 20 AND 30;

-- IN -- Used when checking multiple possible values. -- Instead of writing many OR conditions.

SELECT * FROM users WHERE city IN ("Goalpara","Krishnai","Dhubri");

-- similar to writing many OR conditions
SELECT * FROM users WHERE city="Goalpara" OR city="Krishnai" OR city="Dhubri";

-- LIKE -- Used for pattern searching.
 -- % -> any number of characters
 -- - -> single character

 SELECT * FROM users WHERE name LIKE 'R%';
 SELECT * FROM users WHERE name LIKE '%t';

 -- IS NULL -- Used to find empty values.
 SELECT * FROM users WHERE email IS NULL;

 -- Multiple conditions
 SELECT * FROM users WHERE age>=18 AND city IN ('goalpara',"krishnai") AND email IS NULL;