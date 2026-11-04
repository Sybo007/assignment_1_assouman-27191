 Implementation Notes

 Application Overview
The Student Registration and Grading System was implemented to demonstrate advanced Oracle PL/SQL concepts.  
It manages students, courses, and enrollments, allowing grade assignment and GPA calculation.



 Records
- Used `%ROWTYPE` to fetch entire rows from the `students` table into a single variable.  
- This simplifies handling related attributes without declaring multiple variables.  
- Example: retrieving a student’s full record and printing their name.



Collections
- Implemented associative arrays to store multiple grades in memory.  
- Collections allow fast access and manipulation of sets of values without repeated queries.  
- Useful for temporary storage of results during bulk operations.



  Cursors
- Implicit cursors: Used with `UPDATE` statements to check how many rows were affected (`SQL%ROWCOUNT`).  
- Explicit cursors: Declared for iterating through multiple student names.  
- Cursor FOR loops simplify row‑by‑row processing while keeping code readable.



  Bulk Processing
- BULK COLLECT: Retrieves multiple rows into a collection in one step, reducing context switches.  
- FORALL: Performs bulk updates on enrollments, improving performance compared to row‑by‑row updates.  
- This approach is especially important when dealing with large datasets, as it minimizes round trips between SQL and PL/SQL engines.



  Stored Procedures
- `assign_grade` procedure encapsulates grade assignment logic.  
- Includes input parameters for student ID, course ID, and grade.  
- Uses `RAISE_APPLICATION_ERROR` to provide meaningful feedback when no enrollment is found.



  Functions
- `get_student_avg` function calculates GPA based on grades.  
- Returns a numeric average that can be used in SQL queries or PL/SQL blocks.  
- Demonstrates how functions can integrate with SQL for reporting.



 Exception Handling
- Predefined exceptions: `NO_DATA_FOUND` handled in the GPA function.  
- User‑defined exceptions: `RAISE_APPLICATION_ERROR` used in the procedure when enrollment is missing.  
- Ensures errors are not silently ignored and users receive clear messages.



  Performance Considerations
- Row‑by‑row processing is slower because each row requires a separate context switch.  
- Bulk operations (`BULK COLLECT`, `FORALL`) batch work, reducing overhead and improving scalability.  
- Collections and cursors provide flexibility for both small and large datasets.  
- Exception handling ensures robustness even under heavy load or unexpected input.



  Conclusion
This implementation demonstrates how Oracle PL/SQL features work together to build a practical application.  
By combining records, collections, cursors, bulk processing, procedures, functions, and exception handling, the system achieves both clarity and performance while meeting academic requirements.
