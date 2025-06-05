--Assignment on CASE FUNCTION

SELECT product_name,quantity,
CASE 
	WHEN quantity>=10 THEN 'IN STOCK'
	WHEN quantity>=5 AND quantity<=9 THEN 'Limited Stock'
	ELSE 'Out of stock'
END AS product_availability
FROM products;


SELECT product_name,category,
CASE
	WHEN category like 'Electronics%' THEN 'Electonics Item'
	WHEN category like 'furniture%' THEN 'Furniture Item'
	ELSE 'Accessories Item'
END AS Updated_Category 
FROM products;