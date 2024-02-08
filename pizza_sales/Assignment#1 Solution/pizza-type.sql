USE pizza_sales;
CREATE TABLE pizza_types(
pizza_type_id INT NOT NULL UNIQUE,
name varchar(255),
category varchar(255),
ingredients varchar(255),
PRIMARY KEY (pizza_type_id)
);