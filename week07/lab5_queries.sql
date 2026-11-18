USE sen307_202411184;  

SELECT 'Departments' AS tbl, COUNT(*) AS total FROM Department
UNION ALL SELECT 'Lecturers', COUNT(*) FROM Lecturer
UNION ALL SELECT 'Students', COUNT(*) FROM Student
UNION ALL SELECT 'Courses', COUNT(*) FROM Course
UNION ALL SELECT 'Enrolments', COUNT(*) FROM Enrolment
UNION ALL SELECT 'Allocations', COUNT(*) FROM CourseAllocation;


-- Task 1: 

SELECT s.matric_no, s.full_name, d.dept_name
FROM Student s
JOIN Department d ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Software Engineering'
ORDER BY s.full_name ASC;

-- Task 2: 

SELECT c.course_code, c.course_title, l.full_name AS lecturer
FROM Course c
INNER JOIN CourseAllocation ca ON c.course_id = ca.course_id
INNER JOIN Lecturer l ON ca.lecturer_id = l.lecturer_id
ORDER BY c.course_code, l.full_name;

-- Task 3: 

-- Worked example: 
SELECT s.full_name, c.course_title
FROM Student s
LEFT JOIN Enrolment e ON s.student_id = e.student_id
LEFT JOIN Course c ON e.course_id = c.course_id
ORDER BY s.full_name;

-- Only the students with no courses
SELECT s.full_name, c.course_title
FROM Student s
LEFT JOIN Enrolment e ON s.student_id = e.student_id
LEFT JOIN Course c ON e.course_id = c.course_id
WHERE c.course_title IS NULL
ORDER BY s.full_name;


-- Task 4:

SELECT s.matric_no, s.full_name, s.gender, s.date_of_birth, d.dept_name
FROM Student s
JOIN Department d ON s.dept_id = d.dept_id
WHERE s.gender = 'F'
  AND (d.dept_name = 'Software Engineering' OR d.dept_name = 'Artificial Intelligence')
  AND s.date_of_birth BETWEEN '2004-01-01' AND '2005-12-31'
ORDER BY s.date_of_birth;


-- Task 5: 
-- Page 1 (rows 1-10)
SELECT * FROM Enrolment
ORDER BY enrolment_id
LIMIT 10 OFFSET 0;


-- Page 2 (rows 11-20)
SELECT * FROM Enrolment
ORDER BY enrolment_id
LIMIT 10 OFFSET 10;

-- Challenge Task3:

SELECT s.full_name, c.course_title
FROM Course c
RIGHT JOIN Enrolment e ON e.course_id = c.course_id
RIGHT JOIN Student s ON s.student_id = e.student_id
ORDER BY s.full_name;
