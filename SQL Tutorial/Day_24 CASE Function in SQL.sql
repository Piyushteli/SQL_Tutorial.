--Conditional Functions
SELECT *FROM products;

--1)CASE Function
SELECT product_name,price,
CASE 
	WHEN price>=50000 THEN 'Expensive'
	WHEN price>=10000 AND price<=4999 THEN 'Moderate'
	ELSE 'Affordable'
END AS category_type FROM products;

