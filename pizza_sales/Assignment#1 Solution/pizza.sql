USE pizza_sales;
CREATE TABLE pizza(
pizza_id INT NOT NULL UNIQUE,
pizza_type_id INT,
size varchar (255) NOT NULL,
price INT NOT NULL,
PRIMARY KEY (pizza_id),
FOREIGN KEY (pizza_type_id) REFERENCES pizza_types(pizza_type_id)
);