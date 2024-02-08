USE superstore;
/*we are making a derived attribute; 
*/
SELECT *,DATEDIFF(ship_date,order_date) AS process_time
FROM orders
;
/*USE OF GROUP BY CLAUSE AND HAVING*/

SELECT
 AVG(sales) as average_sales,
 MIN(sales) as min_sales,
 MAX(sales) as max_sales
FROM products
GROUP BY sub_category;

/*Fidninf count of tuples*/

SELECT COUNT(*) 
FROM customer_addresses;

SELECT category
FROM product_categories
GROUP BY category
HAVING COUNT(sub_category) IS NOT NULL;



SELECT customer_id, COUNT(order_id) as order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC
LIMIT 3;

SELECT product_id, COUNT(order_id) as purchase_count
FROM orders
GROUP BY product_id
ORDER BY purchase_count DESC
LIMIT 10;



