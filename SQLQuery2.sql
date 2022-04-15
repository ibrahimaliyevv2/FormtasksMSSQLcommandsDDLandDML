CREATE DATABASE CourseDB

USE CourseDB

CREATE TABLE Students
(
	[Id] INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(10) NOT NULL,
	[Surname] NVARCHAR(10) DEFAULT 'xxx',
	[Age] TINYINT NOT NULL,
	[Point] INT NOT NULL
)

INSERT INTO Students
VALUES
('Fariz', 'Salahli', 12, 67),
('Asif', 'Allazov', 15, 56),
('Huseyn', 'Elizade', 19, 86)


INSERT INTO Students
VALUES
('Senan', NULL, 21, 91)

INSERT INTO Students(Name, Age, Point)
VALUES
('Zamin', 17, 97)

SELECT * FROM Students

UPDATE Students
SET Surname = 'Esgerov'  WHERE Surname = 'xxx'

UPDATE Students
SET Point=69 WHERE Id=1

SELECT * FROM Students WHERE Point BETWEEN 70 AND 90

SELECT Point FROM Students ORDER BY Point DESC

SELECT [Name], Surname FROM Students WHERE Point<60

ALTER TABLE Students
ADD AveragePoint INT

UPDATE Students
SET AveragePoint=32 WHERE Id=1