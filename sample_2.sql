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

