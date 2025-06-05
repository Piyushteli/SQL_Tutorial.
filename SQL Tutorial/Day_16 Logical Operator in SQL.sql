SELECT *FROM employee2;

--Logical Operator
--1)AND Operator 
SELECT *FROM employee2
WHERE age>=40 AND salary>=60000;

--2)OR Operator
SELECT *FROM employee2
WHERE age>=60 OR salary>90000

--3)NOT Operator
SELECT *FROM employee2
WHERE NOT(department='IT');

