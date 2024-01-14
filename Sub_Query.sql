CREATE DATABASE Queries;
USE Queries;

CREATE TABLE student(
		rollno INT PRIMARY KEY,
        name VARCHAR(40),
        marks INT, 
        city VARCHAR(20)
);

INSERT INTO student
(rollno,name,marks,city)
VALUES
(101,"anil",70,"Pune"),
(102,"bhumika",93,"mumbai"),
(103,"chetan",85,"mumbai"),
(104,"dhurav",96,"Delhi"),
(105,"emanual",92,"Delhi"),
(106,"farah",82,"Delhi");


SELECT * FROM student;

SELECT AVG(marks)
FROM student;

SELECT name , marks
FROM student 
WHERE marks > 87.6667;

SELECT name , marks
FROM student 
WHERE marks > (SELECT AVG(marks) FROM student);

SELECT rollno
FROM student
WHERE rollno % 2 = 0;

SELECT name ,rollno
FROM student 
WHERE rollno IN (SELECT rollno
FROM student
WHERE rollno % 2 = 0);

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Delhi") as temp;

SELECT MAX(marks)
FROM student
WHERE city = "mumbai";

SELECT (SELECT MAX(marks) FROM student), name
FROM student;

CREATE VIEW view2 AS
SELECT rollno,name,marks FROM student;

SELECT * FROM view2
WHERE marks > 90;

