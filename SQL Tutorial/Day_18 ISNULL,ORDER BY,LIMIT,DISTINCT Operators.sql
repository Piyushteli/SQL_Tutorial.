SELECT *FROM employee2;

--Others Operators.(ISNULL,ORDER BY,LIMIT,DISTINCT)
--1)Find the employees where the email column is NULL(if Applicable)
SELECT first_name,last_name,age FROM employee2
WHERE age IS NULL;

--2)List employees sorted by salary in Descending order.
SELECT first_name,last_name,salary FROM employee2
ORDER BY salary DESC;

--3)Retrieve the top5 highest paid employees.
SELECT *FROM employee2 
ORDER BY salary DESC
LIMIT 5;

--4)Retrieve a list of unique departments.
SELECT DISTINCT department FROM employee2;