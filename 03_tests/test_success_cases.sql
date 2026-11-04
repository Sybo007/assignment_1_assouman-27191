-- Test successful procedure call
BEGIN
    assign_grade(2, 102, 'A');  -- Update Bob's grade to A
    DBMS_OUTPUT.PUT_LINE('Grade updated successfully');
END;
/

-- Test successful function call
DECLARE
    v_avg NUMBER;
BEGIN
    v_avg := get_student_avg(1);  -- Calculate Alice's GPA
    DBMS_OUTPUT.PUT_LINE('Average GPA for student 1: ' || v_avg);
END;
/