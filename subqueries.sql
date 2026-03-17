USE learning;

SELECT * FROM users WHERE id IN (
    SELECT userId FROM orders
);
-- what happens here, the subquery runs...return userId from orders table then main query runs which searches in users table where id matches
-- same can be done using joins
SELECT users.* FROM users JOIN orders ON users.id = orders.userId;
SELECT * FROM users JOIN orders ON users.id = orders.userId;


