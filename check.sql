CREATE TABLE city (
	id INT PRIMARY KEY CHECK(id <= 10),
    city varchar(50),
    age INT,
    CONSTRAINT age_check CHECK (age >= 10 AND city = "Delhi")
);

INSERT INTO city 
(id,city,age)
VALUES
(10,"Delhi",15);

