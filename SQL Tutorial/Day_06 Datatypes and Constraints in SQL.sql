CREATE TABLE users(
	user_id INT PRIMARY KEY,
	user_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE,
	age INT CHECK (age>=18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users(user_id,user_name,email,age) VALUES (1,'RAVI','ravi@gmail.com',30)

SELECT *FROM users;

--we can't rewrite the Data again Because the user_id is the PRIMARY KEY 
INSERT INTO users(user_id,user_name,email,age) VALUES (1,'RAVI','ravi@gmail.com',30)

--THIS Through an Error Message 
ERROR: duplicate key value violates unique constraint "users_pkey"
Key (user_id)=(1) already exists. 