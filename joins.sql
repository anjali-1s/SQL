CREATE DATABASE JOINS;
USE JOINS;

CREATE TABLE student(
				student_id INT PRIMARY KEY,
                name VARCHAR(30)
);

CREATE TABLE course(
				student_id INT PRIMARY KEY,
                course VARCHAR(40)
);

INSERT INTO student
(student_id,name)
VALUES
(101,"adam"),
(102,"bob"),
(103,"cassey");

INSERT INTO course
(student_id,course)
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

ALTER TABLE course
CHANGE student_id course_id VARCHAR(50);

SELECT * FROM student;

SELECT * FROM course;

ALTER TABLE student
CHANGE course_id student_id VARCHAR(50);

SELECT *
FROM student as s
INNER JOIN course as c
ON s.student_id = c.course_id;

SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.course_id;

SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.course_id;

SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.course_id
UNION
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.course_id;

SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.course_id
WHERE c.course_id IS NULL;

SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.course_id
WHERE s.student_id IS NULL;

SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.course_id
WHERE c.course_id IS NULL
UNION
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.course_id
WHERE s.student_id IS NULL;

