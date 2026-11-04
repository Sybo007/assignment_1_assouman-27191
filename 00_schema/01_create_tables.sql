CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    full_name VARCHAR2(100),
    major VARCHAR2(50)
);

CREATE TABLE courses (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(100),
    credits NUMBER
);

CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER REFERENCES students(student_id),
    course_id NUMBER REFERENCES courses(course_id),
    grade VARCHAR2(2)
);