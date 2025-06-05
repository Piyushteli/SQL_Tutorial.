CREATE DATABASE Assignment;

CREATE TABLE employees(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	department VARCHAR(30) ,
	salary DECIMAL(10,2) CHECK (salary>0),
	joining_date DATE NOT NULL,
	age INT CHECK (age>=18)
);

SELECT *FROM employees;

INSERT INTO employees(first_name,last_name,department,salary,joining_date,age) VALUES
	('Ravi','Kumar','HR',70000.00,'2020-03-10',35),
	('Amit','Sharma','IT',60000.00,'2022-05-01',29),
	('Neha','Patel','finance',55000.00,'2021-08-15',32),
	('Anuj','Verma','IT',65000.00,'2019-11-22',28),
	('Suresh','Reddy','Operation',50000.00,'2023-01-10',26);

--QUESTIONS--
--1)Retrieve all employees first_name and their departments
SELECT first_name,department FROM employees;

--2)Update the salary of all employees in the 'IT',department by increasing it by 10%.
UPDATE employees
SET salary=salary+(salary*0.10)
WHERE department='IT';

SELECT salary,department FROM employees;

--3)Delete all employees who are older than 34 years.
DELETE FROM employees 
WHERE age>34;

--4)Add New Column 'email' to the employees table.
ALTER TABLE employees 
ADD COLUMN email VARCHAR(50);

--5)Rename the 'department' Column to the dept_name
ALTER TABLE employees 
RENAME COLUMN department TO dept_name;

--6)Retrieve the names of employees who joined After January 1,2021.
SELECT first_name,last_name,joining_date FROM employees WHERE joining_date>'2021-01-01'

--7)Change the datatype of the 'salary' Column to 'INTEGER'.
ALTER TABLE employees 
ALTER COLUMN salary TYPE INT;

SELECT *FROM employees ORDER BY employee_id ASC;

--8)list All employees with their age and salary in descending order of salary.
SELECT first_name,last_name,age,salary FROM employees ORDER BY salary DESC;

--9)Insert a new employee with the following details.('Raj','Singh','Marketing',60000,'2023-09-15',30)
INSERT INTO employees (first_name,last_name,dept_name,salary,joining_date,age) 
VALUES	('Raj','Singh','Marketing',60000,'2023-09-15',30)

--10)Update the age of employee +1 to every employee.
UPDATE employees
SET age=age+1