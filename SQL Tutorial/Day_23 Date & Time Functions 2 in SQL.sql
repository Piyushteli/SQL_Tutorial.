--6)DATE_PART():
SELECT product_name,added_date,DATE_PART('dow',added_date) AS day_of_week FROM products;

--7)DATE_TRUNC():
SELECT product_name,added_date,DATE_TRUNC('month',added_date) AS Month_start FROM products; 

--8)INTERVAL
SELECT product_name,added_date,added_date+INTERVAL '6 Months' AS new_date FROM products;

--9)CURRENT_TIME()
SELECT CURRENT_TIME AS current_time;

--10)TO_DATE():convert string to Date 
SELECT TO_DATE('28-11-2024','DD-MM-YYYY') AS converted_date;