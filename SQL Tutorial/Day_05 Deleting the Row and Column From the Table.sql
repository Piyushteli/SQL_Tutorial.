CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	position VARCHAR(50),
	Department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

SELECT *FROM employee2;

INSERT INTO employee2(employee_id,name,position,department,hire_date,salary)
VALUES(101,'Priya Desai','Data Analyst','Data Science','2020-12-02',30000.00),
(102,'Varun Patel','Software Engineer','IT','2021-02-10',10000.00),
(103,'Sneha Sharma','Marketing Specialist','Marketing','2020-05-25',25000.00),
(104,'Ravi Kumar','HR Manager','Human Resources','2021-12-18',15000.00),
(105,'Ajit Sharma','Manager','Banking','2022-10-12',12000.00);

#Delete the Specific Row From the Table
DELETE FROM employee2 
WHERE employee_id=105;

#Delete the Column From the Table
ALTER TABLE employee2
DROP COLUMN salary;

#Delete the whole table 
DROP TABLE IF EXISTS employee2;