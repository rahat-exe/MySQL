use trigger_demo;

DELIMITER //

CREATE FUNCTION addition(n1 int, n2 int)
RETURNS INT
DETERMINISTIC
BEGIN
RETURN n1 + n1;
END //

SELECT addition(5,6)

CREATE Table marks(marks_id int PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20), marks int(20));
insert into marks(name, marks) VALUES("Sohel", 60);

CREATE FUNCTION get_grade(m int)
RETURNS VARCHAR(2)
DETERMINISTIC
begin
 IF m >= 90 THEN
 RETURN "A";

 ELSEIF m >= 70 THEN
 RETURN "B";

 ELSE RETURN "C";
 END IF;
 END //

 SELECT get_grade(80);

 SELECT marks_id,name,marks,get_grade(marks) FROM marks;

 DELIMITER //

CREATE FUNCTION get_pi()
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN

   RETURN 3.14;

END //

DELIMITER ;

SELECT get_pi()