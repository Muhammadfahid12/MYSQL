--  views
USE superstore;

SELECT * FROM orders;

SELECT DISTINCT(ship_mode)
FROM orders;

CREATE VIEW first_class_orders AS
	SELECT * 
	FROM orders
	WHERE ship_mode = 'First Class'
WITH CHECK OPTION;

SELECT DISTINCT (ship_mode)
FROM first_class_orders;

 
