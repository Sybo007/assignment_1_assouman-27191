CREATE OR REPLACE FUNCTION get_student_avg (
    p_student_id IN NUMBER
) RETURN NUMBER IS
    v_avg NUMBER;
BEGIN
    SELECT AVG(DECODE(grade, 'A', 4, 'B', 3, 'C', 2, 'D', 1, 0))
    INTO v_avg
    FROM enrollments
    WHERE student_id = p_student_id;

    RETURN v_avg;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;