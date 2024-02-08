CREATE DATABASE pizza_sales;
USE pizza_sales;
CREATE TABLE orders(
order_id INT NOT NULL UNIQUE,
date DATE,
time TIME,
PRIMARY KEY (order_id)
);

CREATE TABLE pizza_types(
pizza_type_id INT NOT NULL UNIQUE,
name varchar(255),
category varchar(255),
ingredients varchar(255),
PRIMARY KEY (pizza_type_id)
);
