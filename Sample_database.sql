CREATE DATABASE college1;
USE college1;

CREATE TABLE student(
	name VARCHAR(40),
    rollno INT PRIMARY KEY,
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(name,rollno,marks,grade,city)
VALUES
("Anjali",12,98,"A","motihari"),
("Abhiraj",14,99,"A","Pune"),
("Nandani",16,80,"B","Bangalore"),
("Prity",18,70,"C","Delhi"),
("Aayushi",20,20,"D","Goa");

SELECT* FROM student;
SELECT name,marks FROM student;
SELECT DISTINCT city FROM student;
