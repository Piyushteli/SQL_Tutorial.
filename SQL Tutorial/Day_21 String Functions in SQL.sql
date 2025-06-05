SELECT *FROM products;

--String Functions
--1)UPPER():
SELECT UPPER(category) AS category_capital FROM products;

--2)LOWER():
SELECT LOWER(category) AS category_lower FROM products;

--3)CONCAT():
SELECT CONCAT(product_name,'-',category) AS product_details FROM products;

--4)SUBSTRING():
SELECT SUBSTRING(product_name,1,5) AS short_name FROM products;

--5)LENGTH():
SELECT LENGTH(product_name) AS count_name FROM products;

--6)TRIM()
SELECT TRIM('Monitor') AS Trimmed_Text FROM products;

--7)REPLACE()
SELECT REPLACE(product_name,'phone','device') AS Updated FROM products;