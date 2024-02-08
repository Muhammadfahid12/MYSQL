/*Understanding Joins*/
use superstore;
/*Inner Join*/
-- 1

select *
from customers
inner join customer_addresses
on customers.postal_code = customer_addresses.postal_code;
 -- 2

update customer_addresses
set city = "lahore"
where postal_code = '42420.0'; 

-- 2





/*3*/
SELECT * from orders
LEFT JOIN customer_addresses ON customer_addresses.; 