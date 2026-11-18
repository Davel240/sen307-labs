# Lab 4 Notes: DML and Referential Integrity

**Course:** VUA-SEN307 Database Systems, Week 6

## Referential-integrity exercise

When I tried to delete the "Library and Information Science" department, MySQL returned **Error 1451: Cannot delete or update a parent row: a foreign key constraint fails**. MySQL refuses because the `Student` table has a row (Transfer Student, `20239999`) whose `dept_id` still points to that department. Deleting the department would leave that student referring to a department that no longer exists (an orphan record), which would break referential integrity, so the foreign-key constraint blocks the delete. I fixed it the correct way: first I used an `UPDATE` to reassign the student to the Software Engineering department, and then the `DELETE` succeeded because no child rows depended on the department any more. The student was moved rather than lost, and the department count returned to 5. Another fix would have been to define the foreign key with `ON DELETE CASCADE`, which automatically deletes the dependent students along with the department (though that risks losing data), or `ON DELETE SET NULL`, which keeps the students but clears their `dept_id` (this only works if the column allows NULL). Manually deleting the dependent student rows first would also have worked.

## Summary of what I did

- Inserted the provided departments and courses exactly as written.
- Added 10 lecturers, 20 students, 40 enrolments and the course allocations using multi-row `INSERT` statements.
- Used `UPDATE ... WHERE` to move a student to another department, checking the row before and after.
- Triggered and fixed a foreign-key error (Error 1451) using `UPDATE` followed by `DELETE`.
