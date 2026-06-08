-- Write a PL/SQL program to demonstrate Exceptions.

DECLARE
    v_salary Employees.emp_salary%TYPE;
    v_id     Employees.emp_id%TYPE := 999;  -- Non-existent ID
BEGIN
    SELECT emp_salary INTO v_salary
    FROM Employees
    WHERE emp_id = v_id;

    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: No employee found with ID ' || v_id);
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Error: Multiple rows returned.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END;
/