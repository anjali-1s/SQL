use people;

CREATE TABLE student1(
		rollno INT PRIMARY KEY,
        name VARCHAR(30),
        salary INT UNIQUE,
        PRIMARY KEY(salary)
);

INSERT INTO student1
(rollno,name,salary)
VALUES
(10,"Ayushi",20000),
(13,"Abhiraj",22000),
(19,"prity",25000);

SELECT* FROM student1;