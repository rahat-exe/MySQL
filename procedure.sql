
-- Basic syntex of procedure
-- DELIMITER //

-- CREATE PROCEDURE procedure_name()
-- BEGIN
--     -- SQL statements
-- END //

-- DELIMITER ; 

use trigger_demo;

select * from students;
insert into students(name) VALUES ("RAHAT")


DELIMITER //
CREATE PROCEDURE select_all()
BEGIN
SELECT * FROM students;
END //

CALL select_all() //

CREATE PROCEDURE select_with_params(in x int)
begin
select x * x;
end //

CALL select_with_params(5) //
