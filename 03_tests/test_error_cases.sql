-- Test procedure with invalid enrollment (should raise error)
BEGIN
    assign_grade(99, 999, 'B');  -- Non-existent student/course
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- Test function with student who has no enrollments
DECLARE
    v_avg NUMBER;
BEGIN
    v_avg := get_student_avg(999);  -- Student not in table
    IF v_avg IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('No GPA available for student 999');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Average GPA: ' || v_avg);
    END IF;
END;
/