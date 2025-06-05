CREATE TABLE users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	age INT,
	city VARCHAR(20)
)

INSERT INTO
	USERS (USERNAME, EMAIL, AGE, CITY)
VALUES
	('Ravi', 'ravi@gmail.com', 25, 'Mumbai'),
	('Priya', 'priya@yahoo.com', 30, 'Delhi'),
	('Ankit', 'ankit@gmail.com', 28, 'Banglore'),
	('Sneha', 'sneha@yahoo.com', 35, 'Pune'),
	('Vikram', 'vikram@gmail.com', 22, 'Delhi')

SELECT *FROM users ORDER BY user_id ASC;

--ALTER COMMANDS

--1)To Rename the username column to name
ALTER TABLE USERS
RENAME COLUMN username TO name

--2)To change the age columns datatype from INT to SMALLINT 
ALTER TABLE users 
ALTER COLUMN age TYPE SMALLINT;

--3)To add NOT NULL constraint to the city column
ALTER TABLE users
ALTER COLUMN city SET NOT NULL

--4)To change the Table name
ALTER TABLE users
RENAME TO customers;

SELECT *FROM customers ORDER BY user_id ASC;



