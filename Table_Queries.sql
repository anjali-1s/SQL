CREATE DATABASE college3;
USE college3;

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

ALTER TABLE student
ADD COLUMN age INT;

SELECT * FROM student;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);	

INSERT INTO student
(rollno,name,marks,age)
VALUES
(107,"gargi",63,100);	

ALTER TABLE student
CHANGE age stud_age INT;

INSERT INTO student
(rollno,name,marks,stud_age)
VALUES
(107,"gargi",63,100);	

SELECT * FROM student;

ALTER TABLE student
DROP COLUMN stud_age;

ALTER TABLE student
RENAME TO stu;

SELECT * FROM stu;

ALTER TABLE stu
RENAME TO student;

SELECT * FROM student;

TRUNCATE TABLE student;

ALTER TABLE student
CHANGE name full_name VARCHAR(20);

ALTER TABLE student
DROP COLUMN grade;

DELETE FROM student 
WHERE marks < 80;