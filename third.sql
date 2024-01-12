use people;

CREATE TABLE temp1(
	id INT,
    name VARCHAR(30),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY(id,name)
);

CREATE TABLE emp1(
	name VARCHAR(30),
	emp_id INT,
    salary INT DEFAULT 25000,
    FOREIGN KEY (emp_id) references temp1(id) 
);

SELECT* FROM emp1;

INSERT INTO temp1
(id,name,age,city)
VALUES
(10,"Ayushi",20,"pune"),
(13,"Abhiraj",22,"goa"),
(19,"prity",25,"manali");
 
SELECT* FROM temp1;
SELECT* FROM emp1;

CREATE TABLE temp2(
	id INT,
    salary INT DEFAULT 25000);

INSERT INTO temp2 (id) VALUES (101);
SELECT* FROM temp2;


	