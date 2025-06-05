--SET Operations
1)UNION
2)UNION ALL 
3)INTERSECT
4)EXCEPT


CREATE TABLE Student_2023(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(30),
	course VARCHAR(30)
);

INSERT INTO Student_2023(student_id,student_name,course) VALUES
	(1,'Aarav Sharma','CSE'),
	(2,'Ishita Verma','Mechanical'),
	(3,'Kabir Patel','Electronics'),
	(4,'Ananya Desai','civil'),
	(5,'Rahul Gupta','CSE');

SELECT *FROM Student_2023;

CREATE TABLE Student_2024(
	student_id INT PRIMARY KEY,
	student_name VARCHAR (20),
	course VARCHAR(20));

INSERT INTO Student_2024(student_id,student_name,course) VALUES
	(3,'Kabir Patel','Electronics'),
	(4,'Ananya Desai','civil'),
	(6,'Meera Rao','CSE'),
	(7,'Vikram Singh','Mathematics'),
	(8,'Sanya Kapoor','Physics');

SELECT *FROM Student_2024;

--1)UNION Operation
SELECT student_name,course
FROM Student_2023
UNION
SELECT student_name,course
FROM Student_2024;

--2)UNION ALL Operation 
SELECT student_name,course
FROM Student_2023
UNION ALL
SELECT student_name,course
FROM Student_2024;

--3)INTERSECT Operation
SELECT student_name,course
FROM Student_2023
INTERSECT
SELECT student_name,course
FROM Student_2024;

--4)EXCEPT Operation
SELECT student_name,course
FROM Student_2023
EXCEPT
SELECT student_name,course
FROM Student_2024;
