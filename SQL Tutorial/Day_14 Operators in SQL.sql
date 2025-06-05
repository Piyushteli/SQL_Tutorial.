--Types of Operators in SQL
--1)Arithmetic Operator
--2)Comparison Operator
--3)Logical Operator 
--4)Bitwise Operator 
--5)Set Operator 

--Questions Based on employee2 Table (Operators)

--Q1)Retrieve the first_name,salary and calculate a 10% bonus on the salary.
SELECT first_name,salary,
		(salary*0.10) AS Bonus
FROM employee2;

--Q2)Calculate the Annual Salary and salary Increment by 5% show the monthly new as well.
SELECT first_name,salary,
	(salary*12) AS Annual_salary,
	(salary*.05) AS Increment_salary,
	(salary+salary*.05) AS New_salary
FROM employee2;