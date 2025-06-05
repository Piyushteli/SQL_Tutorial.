CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	department VARCHAR(20),
	salary NUMERIC(10,2),
	age INT
	);

COPY
employee2(employee_id,first_name,last_name,department,salary,age)
FROM 'C:\Users\ADMIN\Downloads\New_employee_data.csv'
DELIMITER ','
CSV HEADER;

SELECT *FROM employee2;

