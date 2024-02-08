/* 1 */
USE `classicmodels`;
SELECT * FROM productlines LIMIT 5;
SELECT * FROM  products LIMIT 5;
SELECT * FROM  orderdetails LIMIT 5;
SELECT * FROM  orders LIMIT 5;
SELECT * FROM  customers LIMIT 5;
SELECT * FROM  employees LIMIT 5;
SELECT * FROM  office LIMIT 5;
SELECT * FROM  payments LIMIT 5;


/*2*/
SELECT COUNT(employeeNumber)
FROM employees;


/*3*/
SELECT productLine FROM productlines;
SELECT employeeNumber FROM employees;
SELECT productCode FROM products;
SELECT  orderNumber FROM orderdetails;
SELECT officeCode FROM offices;
SELECT  customerNumber FROM customers;
SELECT  customerNumber AND checkNumber FROM payments;


/*4*/

SELECT * FROM products 
WHERE quantityInStock = 0;

/*5*/
SELECT * 
FROM products 
WHERE productLine LIKE '%Classic Cars%';

/*6*/
SELECT  employeeNumber,firstName,lastName 
FROM employees
WHERE jobTitle LIKE '%Sales Manager%';


/*7*/
SELECT * 
FROM products
WHERE productName LIKE '%Mercedes Benz%';

/*8*/

UPDATE employees 
SET jobTitle = 'CEO'
WHERE employeeNumber = 1002;


/*9*/
SELECT * FROM orders
WHERE shippedDate > requiredDate;

/*10*/
SELECT * FROM orders
WHERE shippedDate IS NULL;


/*11*/

/*11*/

SELECT salesRepEmployeeNumber, COUNT(customerNumber) 
FROM customers
GROUP BY salesRepEmployeeNumber;


/*12*/
SELECT country
FROM customers
GROUP BY country
ORDER BY MIN(customerNumber);

/*13*/

SELECT productLine , COUNT(*),MAX(MSRP),MIN(MSRP)
from products
group by productLine;


/*14*/

SELECT orderNumber 
from orders
order by orderNumber DESC
limit 15





