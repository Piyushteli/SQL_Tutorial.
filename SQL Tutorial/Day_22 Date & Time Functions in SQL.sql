SELECT *FROM products;

--Date & Time functions in SQL
--1)NOW():
SELECT NOW() AS current_time;

--2)CURRENT_DATE():
SELECT CURRENT_DATE AS today_date;

SELECT Added_date,current_date,(CURRENT_DATE,added_date) AS Days_difference FROM products;

--3)Extract the year,months and day from column.
SELECT product_name, EXTRACT(YEAR FROM added_date) AS year_added FROM products;
SELECT product_name,EXTRACT(MONTH FROM added_date) AS added_month FROM products;
SELECT product_name,EXTRACT(DAY FROM added_date) AS added_day FROM products;

--4)Calculate the Age difference 
SELECT product_name,AGE(CURRENT_DATE,added_date) AS age_since FROM products;

--5)format added_date in a custom format(DD-MM-YYYY) 
SELECT product_name,TO_CHAR(added_date,'DD-MM-YYYY') AS formated_Date FROM products;



