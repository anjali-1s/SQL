CREATE DATABASE college2;
USE college2;

CREATE TABLE student(
	name VARCHAR(40),
    rollno INT PRIMARY KEY,
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"Chetan",85,"B","Mumbai"),
(104,"Dhruv",96,"A","Delhi"),
(105,"emanual",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT  DISTINCT city FROM student;

SELECT MAX(marks)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT AVG(marks)
FROM student;

SELECT COUNT(name)
FROM student;

SELECT city,name,count(rollno)
FROM student
GROUP BY city,name;

SELECT city,AVG(marks)
FROM student
GROUP BY city;

SELECT city,avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks) DESC;

SELECT grade,COUNT(grade)
FROM student 
GROUP BY grade
ORDER BY grade;

SELECT city ,count(rollno)
FROM student 
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city
FROM student 
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 90
ORDER BY city DESC;

SET SQL_SAFE_UPDATEs = 0;

UPDATE student 
SET grade = "O"
WHERE grade = "A";

SELECT * FROM student;

UPDATE student 
SET marks = 90
WHERE rollno = 101;

UPDATE student 
SET grade =  "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student 
SET marks = marks + 1;
SELECT * FROM student;

DELETE FROM student
WHERE marks > 33;

DELETE FROM student;

SELECT * FROM student;
