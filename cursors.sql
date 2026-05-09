
use practice_database;
-- Create sample table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Alice', 50000, 'IT'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'IT'),
(4, 'Diana', 65000, 'Finance');

-- Cursor stored procedure
DELIMITER $$

CREATE PROCEDURE process_salaries()
BEGIN
    -- Declare variables to hold row data
    DECLARE emp_id INT;
    DECLARE emp_name VARCHAR(100);
    DECLARE emp_salary DECIMAL(10,2);
    DECLARE done INT DEFAULT FALSE;
    
    -- Declare cursor
    DECLARE emp_cursor CURSOR FOR
        SELECT id, name, salary 
        FROM employees 
        WHERE department = 'IT'
        ORDER BY salary DESC;
    
    -- Declare handler for when no more rows
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Open cursor
    OPEN emp_cursor;
    
    -- Loop label
    read_loop: LOOP
        -- Fetch row into variables
        FETCH emp_cursor INTO emp_id, emp_name, emp_salary;
        
        -- Exit loop if no more rows
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Process each row (10% raise)
        UPDATE employees 
        SET salary = emp_salary * 1.10 
        WHERE id = emp_id;
        
        SELECT CONCAT('Updated ', emp_name, ': $', emp_salary, 
                      ' -> $', emp_salary * 1.10) AS result;
        
    END LOOP;
    
    -- Close cursor
    CLOSE emp_cursor;
END$$

DELIMITER ;

-- Execute procedure
CALL process_salaries();

SELECT * FROM employees;