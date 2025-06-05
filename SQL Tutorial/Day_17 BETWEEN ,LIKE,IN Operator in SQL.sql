SELECT *FROM employee2;

--Others Operators.(BETWEEN,LIKE,IN)
--1)Retrieve employees whose salary is between 40000 and 60000
SELECT first_name,last_name,salary FROM employee2
WHERE salary BETWEEN 40000 AND 60000;

--2)LIKE Operator
SELECT first_name,last_name FROM employee2 
WHERE first_name Like 'J%';

SELECT first_name,last_name FROM employee2
WHERE first_name LIKE '%a';

SELECT first_name,last_name FROM employee2
WHERE first_name LIKE '%a%'

--3)IN Operator
SELECT first_name,last_name,department FROM employee2
WHERE department IN('Finance','Marketing')