USE learning;

SHOW TABLES;
CREATE Table orders(
    id INT PRIMARY KEY AUTO_INCREMENT,
    userId INT NOT NULL,
    amount INT NOT NULL
);
ALTER TABLE orders MODIFY COLUMN userId INT;

SELECT * FROM orders;

INSERT INTO orders (amount) VALUES ( 900);

-- join example

SELECT users.name, orders.amount FROM users JOIN orders ON users.id = orders.userId;

-- INNER JOINS -- only matching rows
SELECT users.name, orders.amount FROM users INNER JOIN orders ON users.id = orders.userId;
-- only users who have orders -- skip the user who dont have user and orders with no user

-- LEFT JOINS  -- all from the left, matches if possible
SELECT users.name, orders.amount FROM users LEFT JOIN orders ON users.id = orders.userId;
-- all the users who have orders as well as who dont, if users dont have order than it return null

-- RIGHT JOINS -- all from right, matches if possible
SELECT users.name, orders.amount FROM users RIGHT JOIN orders ON users.id = orders.userId;
-- Bring all the orders, evenif user info is missing


-- CROSS JOIN -- everything from left and right
SELECT users.name, orders.amount FROM users CROSS JOIN orders ON users.id = orders.userId;