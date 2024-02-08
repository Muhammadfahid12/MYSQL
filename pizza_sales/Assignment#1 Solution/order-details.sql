USE pizza_sales;

CREATE TABLE order_detail(

order_details_id INT NOT NULL UNIQUE,
order_id INT ,
pizza_id INT,
quantity INT,
PRIMARY KEY (order_details_id),
FOREIGN KEY (pizza_id) REFERENCES pizza(pizza_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id)
);