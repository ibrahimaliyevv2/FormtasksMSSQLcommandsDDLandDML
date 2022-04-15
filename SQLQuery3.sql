CREATE DATABASE Department

USE Department

CREATE TABLE Employee
(
	Id INT PRIMARY KEY NOT NULL IDENTITY,
	FullName NVARCHAR(255) NOT NULL,
	Age INT NOT NULL,
	CHECK(Age>0),
	Email NVARCHAR(100) UNIQUE NOT NULL,
	Salary FLOAT NOT NULL,
	CHECK(Salary BETWEEN 300 AND 2000)
)

INSERT INTO Employee
VALUES
('Asif Allazov', 12, 'asifallazov@gmail.com', 1500),
('Murad Resulov', 14, 'muradresulov@gmail.com', 300),
('Huseyn Elizade', 18, 'huwed123@yahoo.com', 420)

SELECT * FROM Employee

UPDATE Employee
SET Salary=500 WHERE Id=3

SELECT * FROM Employee WHERE Salary BETWEEN 500 AND 1000

SELECT FullName, Email, Salary FROM Employee ORDER BY Salary DESC