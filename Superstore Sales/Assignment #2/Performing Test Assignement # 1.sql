use superstore;

SELECT postal_code,city,state,region,country FROM customer_addresses;

SELECT customer_id,customer_name,segment,postal_code FROM customers;

SELECT sub_category ,category FROM product_categories;

SELECT product_id,product_name,sub_category,sales FROM products;

SELECT order_id,order_date,ship_mode,ship_date,customer_id FROM orders;

SELECT order_id,product_id FROM order_products;

SELECT customer_name FROM customers WHERE customer_id ='CG-12520';

SELECT customer_id,customer_name,segment,postal_code FROM customers WHERE segment = 'consumer';

SELECT  product_id,product_name,sub_category,sales FROM products WHERE sales > 100;

SELECT * FROM orders WHERE order_date  >= '2017-01-01'; 

SELECT * FROM orders WHERE order_date BETWEEN '2015-01-01' AND '2016-01-01';

SELECT * FROM orders WHERE DATEDIFF(ship_date, order_date) > 5 OR ship_date IS NULL;

SELECT *
FROM products
WHERE product_name LIKE '%Some%';


SELECT *
FROM product_categories 
WHERE category = 'OfficeSupplies';


UPDATE customer_addresses
SET country = 'Pakistan' , city = 'Lahore' , region = 'East', state = 'Punjab' ,postal_code = 54000
WHERE postal_code = 90036.0;

SELECT * FROM customer_addresses;

