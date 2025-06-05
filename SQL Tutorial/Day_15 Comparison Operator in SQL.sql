SELECT *FROM employee2;

--Comparison Operators in SQL
--1)Equal to Operator(=)
SELECT *FROM employee2
WHERE age=30;

--2)Not Equal to Operator(<>,!=)
SELECT *FROM employee2
WHERE age<>30;

--3)greater than Operator(>)
SELECT first_name,salary FROM employee2
WHERE salary>60000;

--4)Smaller than Operator(<)
SELECT first_name,salary FROM employee2
WHERE salary<50000;

--5)Greater than or Equal to Operator(=>)
SELECT first_name,age FROM employee2
WHERE age>=25

--6)Smaller than or Equal to Operator(=<)
SELECT first_name,salary FROM employee2
WHERE salary<=1000000;