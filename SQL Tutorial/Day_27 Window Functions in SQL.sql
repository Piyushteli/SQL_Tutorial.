--Window Functions in SQL
SELECT *FROM products;

--Assign a unique row number to each product within the same category.
SELECT product_name,category,price,
DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS Ranking FROM products;

SELECT
	PRODUCT_NAME,
	CATEGORY,
	PRICE,
	SUM(PRICE) OVER (
		ORDER BY
			PRICE ASC
	) AS RUNNING_TOTAL
FROM
	PRODUCTS;

SELECT
	PRODUCT_NAME,
	CATEGORY,
	PRICE,
	SUM(PRICE) OVER (
		PARTITION BY
			CATEGORY
		ORDER BY
			PRICE ASC
	) AS RUNNING_TOTAL
FROM
	PRODUCTS;