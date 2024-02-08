CREATE DATABASE superstore_b;

USE superstore_b;

CREATE TABLE customer_address (
	postal_code INT,
	city VARCHAR(25),
	state VARCHAR(25),
	region VARCHAR(25),
	country VARCHAR(25),
	PRIMARY KEY (postal_code)
);

CREATE TABLE customers (
	customer_id INT,
	customer_name VARCHAR(25),
	segment VARCHAR(25),
	postal_code INT,
	PRIMARY KEY (customer_id),
	FOREIGN KEY (postal_code) REFERENCES customer_address (postal_code) 
);


CREATE TABLE products (
	product_name VARCHAR(25),
	product_id INT,
	sub_category VARCHAR(25),
	sales INT,
	PRIMARY KEY (product_id),
	FOREIGN KEY (sub_category) REFERENCES product_category(sub_category)
);

CREATE TABLE product_category (
	sub_category VARCHAR(25),
    category VARCHAR(25),
    PRIMARY KEY (sub_category)
);
CREATE TABLE orders (
	order_id INT,
    customer_id INT,
    order_date DATE, 
    ship_mode VARCHAR(25),
    ship_date DATE,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

CREATE TABLE ordered_products (
	order_id INT,
    product_id INT,
    PRIMARY KEY (order_id),
    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (product_id) REFERENCES products (product_id)
);
SHOW TABLES;





	