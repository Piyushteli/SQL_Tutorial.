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

SELECT *FROM users;

--UPDATE COMMANDS
UPDATE users
SET age=29
WHERE username='Ravi'

SELECT *FROM users ORDER BY user_id ASC;

UPDATE users
SET age=32 ,city='Kolkata'
WHERE username='Priya'

--LIKE COMMAND
UPDATE users 
SET age=age+1
WHERE email LIKE ('%@gmail.com')