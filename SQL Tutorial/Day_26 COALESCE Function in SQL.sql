--COALESCE Function
SELECT *FROM products;
--Handling Null Values
ALTER TABLE products
ADD COLUMN discount_price NUMERIC(10,2);

UPDATE products
SET discount_price=(price*0.9)
WHERE product_name NOT IN('laptop','office chair');

SELECT product_name,price,discount_price FROM products;

SELECT product_name,
COALESCE(discount_price,price)
AS final_price
FROM products;