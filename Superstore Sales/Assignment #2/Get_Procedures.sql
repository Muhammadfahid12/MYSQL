use superstore;
 select * from customers;
DROP PROCEDURE get_customer_by_segment;
DELIMITER $$
CREATE PROCEDURE get_customer_by_segment(IN seg VARCHAR(255), OUT customer_count INT)

BEGIN
	SELECT COUNT(*) 
    INTO customer_count 
	FROM customers
	WHERE segment = segment;
END $$ 

DELIMITER ;

CALL get_customer_by_segment('consumer',@total_customers);
SELECT @total_customers;
		

SHOW PROCEDURE STATUS;

