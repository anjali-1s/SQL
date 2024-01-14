CREATE DATABASE Employees;
USE Employees;

CREATE TABLE Employee(
		id INT PRIMARY KEY,
        name VARCHAR(50),
        manager_id INT
);

INSERT INTO Employee
(id,name,manager_id)
VALUES
(101,"adam",103),
(102,"bob",104),
(103,"cassey",null),
(104,"donald",103);

SELECT * FROM Employee;

SELECT * 
FROM Employee as emp1
JOIN Employee as emp2
ON emp1.id = emp2.manager_id;



SELECT emp1.name as manager_name,emp2.name as emp_name
FROM Employee as emp1
JOIN Employee as emp2
ON emp1.id = emp2.manager_id;

SELECT name FROM Employee
UNION ALL
SELECT name FROM Employee;
