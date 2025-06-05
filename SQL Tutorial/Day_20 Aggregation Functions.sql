CREATE TABLE products(product_id SERIAL PRIMARY KEY,product_name VARCHAR(100),category VARCHAR(50),price NUMERIC (10,2),quantity INT,added_date DATE,discount_Rate NUMERIC(5,2));

INSERT INTO products(product_name,category,price,quantity,added_date,discount_Rate) 
VALUES ('laptop','Electonics',75000.50,10,'2024-01-15',10.00),
		('smartphone','Electronics',45000.89,25,'2024-02-20',5.00),
		('Headphones','Accessories',15000.75,50,'2024-03-05',15.00),
		('office chair','furniture',5500.00,20,'2023-12-01',20.00);

SELECT *FROM products;

--1)SUM()
SELECT SUM(quantity) AS Total_quantity
FROM products;

--2)COUNT()
SELECT COUNT(*) AS Total_products FROM products;

--3)AVG()
SELECT AVG(price) AS avg_price FROM products;

--4)MAX() and MIN()
SELECT MAX(price) AS Max_price,
	   MIN(price) AS Min_price
	   FROM products;
