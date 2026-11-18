USE sen307_202411184;

INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');

INSERT INTO Course (course_code, course_title, credit_units, description, dept_id) VALUES
('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('COS301', 'Operating Systems', 3,
'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));


SELECT d.dept_name, COUNT(c.course_id) AS courses
FROM Department d LEFT JOIN Course c ON d.dept_id = c.dept_id
GROUP BY d.dept_name;

SELECT dept_id, dept_name FROM Department;
SELECT course_id, course_code FROM Course;


INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES
('VUA/ST/101', 'Dr Amaka Okafor',     'a.okafor@vua.edu.ng',    (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/ST/102', 'Dr Musa Bello',       'm.bello@vua.edu.ng',     (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/ST/103', 'Dr Ifeanyi Chukwu',   'i.chukwu@vua.edu.ng',    (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/ST/104', 'Prof Hadiza Aliyu',   'h.aliyu@vua.edu.ng',     (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/ST/105', 'Dr Tobi Fashola',     't.fashola@vua.edu.ng',   (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/ST/106', 'Dr Ngozi Eze',        'n.eze@vua.edu.ng',       (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/ST/107', 'Dr Yakubu Danladi',   'y.danladi@vua.edu.ng',   (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/ST/108', 'Dr Folake Adebayo',   'f.adebayo@vua.edu.ng',   (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/ST/109', 'Dr Emmanuel Udoh',    'e.udoh@vua.edu.ng',      (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA/ST/110', 'Dr Salamatu Ibrahim', 's.ibrahim@vua.edu.ng',   (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));


INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id) VALUES
('202411184', 'Eluem David',             'M', '2005-03-14', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231235', 'John Musa',           'M', '2004-11-02', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('20231236', 'Chinedu Eze',         'M', '2003-07-21', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231237', 'Fatima Abdullahi',    'F', '2005-01-30', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('20231238', 'Tunde Adeyemi',       'M', '2004-05-09', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('20231239', 'Ngozi Nwosu',         'F', '2006-09-17', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231240', 'Ibrahim Yusuf',       'M', '2003-12-04', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('20231241', 'Blessing Okon',       'F', '2005-08-25', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('20231242', 'Emeka Okeke',         'M', '2004-02-13', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('20231243', 'Zainab Suleiman',     'F', '2006-04-06', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('20231244', 'Oluwaseun Bakare',    'M', '2005-10-19', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231245', 'Halima Garba',        'F', '2003-06-28', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('20231246', 'Chiamaka Nnamdi',     'F', '2007-01-11', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('20231247', 'Samuel Ojo',          'M', '2006-07-03', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('20231248', 'Aisha Lawal',         'F', '2004-09-22', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231249', 'Uche Anyanwu',        'M', '2005-12-08', (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('20231250', 'Grace Eyo',           'F', '2007-03-29', (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('20231251', 'Daniel Okonkwo',      'M', '2004-06-15', (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('20231252', 'Hauwa Danjuma',       'F', '2006-11-24', (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('20231253', 'Kelechi Ibe',         'M', '2005-05-31', (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science'));


SELECT student_id, matric_no, full_name FROM Student;
SELECT lecturer_id, full_name FROM Lecturer;

INSERT INTO Enrolment (student_id, course_id)
SELECT s.student_id, c.course_id
FROM (
  SELECT '20231234' AS matric, 'SEN307' AS code UNION ALL
  SELECT '20231234', 'SEN301' UNION ALL
  SELECT '20231234', 'DTS301' UNION ALL
  SELECT '20231235', 'SEN307' UNION ALL
  SELECT '20231235', 'COS301' UNION ALL
  SELECT '20231235', 'COS305' UNION ALL
  SELECT '20231236', 'SEN307' UNION ALL
  SELECT '20231236', 'SEN301' UNION ALL
  SELECT '20231236', 'AIN301' UNION ALL
  SELECT '20231237', 'SEN307' UNION ALL
  SELECT '20231237', 'AIN301' UNION ALL
  SELECT '20231237', 'AIN305' UNION ALL
  SELECT '20231238', 'DTS301' UNION ALL
  SELECT '20231238', 'DTS305' UNION ALL
  SELECT '20231239', 'SEN307' UNION ALL
  SELECT '20231239', 'SEN301' UNION ALL
  SELECT '20231240', 'CYB301' UNION ALL
  SELECT '20231240', 'COS305' UNION ALL
  SELECT '20231241', 'COS301' UNION ALL
  SELECT '20231241', 'COS305' UNION ALL
  SELECT '20231242', 'AIN305' UNION ALL
  SELECT '20231242', 'AIN307' UNION ALL
  SELECT '20231243', 'DTS301' UNION ALL
  SELECT '20231243', 'DTS305' UNION ALL
  SELECT '20231244', 'SEN307' UNION ALL
  SELECT '20231244', 'SEN301' UNION ALL
  SELECT '20231244', 'CYB301' UNION ALL
  SELECT '20231245', 'CYB301' UNION ALL
  SELECT '20231245', 'COS305' UNION ALL
  SELECT '20231246', 'COS301' UNION ALL
  SELECT '20231246', 'AIN301' UNION ALL
  SELECT '20231247', 'AIN305' UNION ALL
  SELECT '20231247', 'AIN307' UNION ALL
  SELECT '20231247', 'AIN301' UNION ALL
  SELECT '20231248', 'SEN307' UNION ALL
  SELECT '20231248', 'SEN301' UNION ALL
  SELECT '20231249', 'DTS305' UNION ALL
  SELECT '20231249', 'DTS301' UNION ALL
  SELECT '20231250', 'CYB301' UNION ALL
  SELECT '20231251', 'SEN307'
) AS p
JOIN Student s ON s.matric_no   = p.matric
JOIN Course  c ON c.course_code = p.code;


INSERT INTO CourseAllocation (course_id, lecturer_id)
SELECT c.course_id, l.lecturer_id
FROM (
  SELECT 'SEN307' AS code, 'VUA/ST/101' AS staff UNION ALL
  SELECT 'SEN307', 'VUA/ST/102' UNION ALL
  SELECT 'SEN301', 'VUA/ST/102' UNION ALL
  SELECT 'COS301', 'VUA/ST/103' UNION ALL
  SELECT 'COS305', 'VUA/ST/104' UNION ALL
  SELECT 'AIN301', 'VUA/ST/105' UNION ALL
  SELECT 'AIN305', 'VUA/ST/106' UNION ALL
  SELECT 'AIN307', 'VUA/ST/105' UNION ALL
  SELECT 'DTS301', 'VUA/ST/107' UNION ALL
  SELECT 'DTS305', 'VUA/ST/108' UNION ALL
  SELECT 'CYB301', 'VUA/ST/109'
) AS p
JOIN Course   c ON c.course_code = p.code
JOIN Lecturer l ON l.staff_no    = p.staff;


SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';

SET SQL_SAFE_UPDATES = 0;
UPDATE Student SET dept_id = 2 WHERE matric_no = '20231234';
SET SQL_SAFE_UPDATES = 1;

SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';

INSERT INTO Department (dept_name) VALUES ('Library and Information Science');

INSERT INTO Student (matric_no, full_name, dept_id)
VALUES ('20239999', 'Transfer Student',
(SELECT dept_id FROM Department WHERE dept_name = 'Library and Information Science'));


SET SQL_SAFE_UPDATES = 0;
DELETE FROM Department WHERE dept_name = 'Library and Information Science';
SET SQL_SAFE_UPDATES = 1;


SET SQL_SAFE_UPDATES = 0;
UPDATE Student
SET dept_id = (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')
WHERE matric_no = '20239999';

DELETE FROM Department WHERE dept_name = 'Library and Information Science';
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Department;   -- back to 5 departments


SELECT 'Departments' AS tbl, COUNT(*) AS total FROM Department
UNION ALL SELECT 'Lecturers', COUNT(*) FROM Lecturer
UNION ALL SELECT 'Students', COUNT(*) FROM Student
UNION ALL SELECT 'Courses', COUNT(*) FROM Course
UNION ALL SELECT 'Enrolments', COUNT(*) FROM Enrolment
UNION ALL SELECT 'Allocations', COUNT(*) FROM CourseAllocation;