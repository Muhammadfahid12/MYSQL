USE superstore;
SELECT * FROM customers;
SELECT * FROM customer_addresses;
SELECT * FROM products;
SELECT * FROM product_categories;
SELECT * FROM orders;
SELECT * FROM order_products;

-- 1
SELECT *
FROM customers
INNER JOIN customer_addresses
ON customers.postal_code=customer_addresses.postal_code;


-- 2
SELECT * FROM orders
LEFT JOIN customers ON orders.customer_id = customers.customer_id
WHERE customers.postal_code IS NULL;

-- 3

SELECT customer_name ,COUNT(*) as 'NO OF ORDERS'
FROM customers
INNER JOIN  orders
ON customers.customer_id = orders.customer_id 
GROUP  BY orders.customer_id
ORDER BY COUNT(*) DESC LIMIT 1;


-- 4

SELECT segment,COUNT(*) 
FROM orders as o
LEFT JOIN customers as c
ON o.customer_id = c.customer_id
WHERE YEAR(order_date) = 2016
GROUP BY segment;

-- 5
SELECT * 
FROM customers as c
LEFT JOIN orders as o
ON c.customer_id = o.customer_id
WHERE order_id IS NULL;

-- 6
SELECT c.customer_id,c.customer_name ,SUM(sales)
FROM customers AS c
INNER JOIN orders as o
ON c.customer_id = o.customer_id
INNER JOIN order_products as op
ON o.order_id=op.order_id
INNER JOIN products
ON op.product_id = products.product_id
GROUP BY c.customer_id 
ORDER BY SUM(sales) DESC LIMIT 1;

 -- 7
SELECT city, segment, COUNT(*) as 'Customer_Segment'
FROM customers as c
INNER JOIN customer_addresses as ca
ON customers.postal_code = customer_addresses.postal_code
GROUP BY city ,segment;


-- 8
SELECT * FROM product_categories;
SELECT SUM(p.sales) ,pc.category
FROM products AS p
INNER JOIN product_categories AS pc
ON p.sub_category =pc.sub_category  -- 
GROUP BY pc.category
ORDER BY SUM(p.sales) DESC;

-- 9

SELECT * FROM customer_addresses;

select ca.city
from customer_addresses AS ca
LEFT JOIN customers as c
ON ca.postal_code= c.postal_code
LEFT JOIN orders AS o
ON o.customer_id = c.customer_id
WHERE o.order_id is NULL;
;

 -- 10
 SELECT * 
 FROM customers AS c 
 LEFT JOIN customer_addresses AS ca
 ON c.postal_code = ca.postal_code
 LEFT JOIN orders AS o 
 ON c.customer_id = o.customer_id
 LEFT JOIN order_products AS op
 ON op.order_id = o.order_id
 LEFT JOIN products AS p 
 ON op.product_id = p.product_id
 LEFT JOIN product_categories AS pc
 ON p.sub_category = pc.sub_category;
