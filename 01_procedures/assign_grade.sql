CREATE OR REPLACE PROCEDURE assign_grade (
    p_student_id IN NUMBER,
    p_course_id IN NUMBER,
    p_grade IN VARCHAR2
) AS
BEGIN
    UPDATE enrollments
    SET grade = p_grade
    WHERE student_id = p_student_id AND course_id = p_course_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'No enrollment found');
    END IF;
END;