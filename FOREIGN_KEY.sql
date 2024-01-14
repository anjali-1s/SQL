CREATE DATABASE teacher;
USE teacher;

CREATE TABLE dept(
		id INT PRIMARY KEY,
        name VARCHAR(50)
);

INSERT INTO dept
(id,name)
VALUES
(101,"english"),
(102,"IT");

SELECT * FROM dept;

UPDATE dept
SET id = 111
WHERE id = 101;

CREATE TABLE teacher(
		id INT PRIMARY KEY,
        name VARCHAR(50),
        dept_id INT,
        FOREIGN KEY (dept_id) REFERENCES dept(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

INSERT INTO teacher
(id,name,dept_id)
VALUES
(101,"Adam",101),
(102,"Eve",102);

DROP TABLE teacher;

SELECT * FROM teacher;