USE superstore;
-- 1
SELECT *,DATEDIFF(ship_date,order_date) AS processing_time
FROM orders
ORDER BY processing_time DESC; 


-- 2 
SELECT sub_category , AVG(sales) as AveragePrice
FROM products 
Group BY sub_category
ORDER BY AveragePrice;

-- 3
SELECT sub_category , MAX(sales),MIN(sales)
FROM products 
Group BY sub_category
ORDER BY MAX(sales);

-- 4
SELECT COUNT(*) FROM customer_addresses;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM order_products;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*)FROM product_categories;
SELECT COUNT(*) FROM products;


-- 5
SELECT category,COUNT(sub_category) as sub_count
FROM product_categories
GROUP BY sub_category
 HAVING sub_count > 5;
 
 -- 6
 
 select count(*),ship_mode
 from orders
 group by ship_mode;
 
 -- 7
 
 select ship_mode,count(*),YEAR(ship_date)
 from orders
 where YEAR(ship_date) >= '2017'
 group by ship_mode,YEAR(ship_date)
 ORDER BY YEAR(ship_date);
 
 -- 8
 SELECT COUNT(customer_id) as customerCount,segment
 FROM customers 
 GROUP BY segment
 ORDER BY customerCount;
 
 -- 9
 select * from customer_addresses;
 SELECT COUNT(*),state
 FROM customer_addresses
 WHERE postal_code IN (10009,10011,10024,10035)
 GROUP BY state
 HAVING state = 'New York';

-- 10
select * from products;
SELECT count(*),sub_category
FROM products
where sales>100
GROUP BY sub_category;


-- 11
select * from orders;
SELECT COUNT(*) ,year(ship_date)
FROM orders
where  DATEDIFF(ship_date,order_date) >5
GROUP BY year(ship_date);

-- 12
select * from products;

SELECT product_id,sales
FROM products
ORDER BY sales DESC
LIMIT 10;


-- 13
show tables;
select * from products;

SELECT product_name,sales
FROM products
ORDER BY sales DESC
LIMIT 5;

-- 14

SELECT COUNT(customer_id) as buyers,customer_id
FROM orders
GROUP BY customer_id
ORDER BY buyers DESC
LIMIT 3;

-- 15

SELECT order_id,count(*) as largestOrder
from order_products
GROUP BY order_id
ORDER BY largestOrder DESC
LIMIT 1;
SELECT * from order_products;
