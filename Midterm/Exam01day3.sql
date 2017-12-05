/** Write a query to return the customer name and the number of different products ordered by the customer. 
 **/

SELECT customerName, COUNT(*)
FROM Customers
JOIN (Orders, OrderDetails, Products)
ON Customers.customerNumber = Orders.customerNumber
AND Orders.orderNumber = OrderDetails.orderNumber
AND OrderDetails.productCode = Products.productCode
GROUP BY customerName;

/**
Write a query to  return the first and last name of the employee
and the percentage of total orders placed that they were the sales representatives for.
Order the results by descending percentage of orders.
 **/

SELECT COUNT((Orders.customerNumber)/ 326) AS percentage, Employees.lastName, Employees.firstName 
FROM Orders
JOIN (Customers, Employees)
ON Employees.employeeNumber = Customers.salesRepEmployeeNumber
AND Customers.customerNumber = Orders.customerNumber
GROUP BY Employees.lastName, Employees.firstName
ORDER BY percentage DESC;


/**
Write a query to return the product name,
product line and the average quantity of the product ordered
if the average quantity of product ordered is greater than the average for that products product line. 
**/

SELECT productName, productLine, AVG(OrderDetails.quantityOrdered)
FROM Products
JOIN OrderDetails
ON Products.productCode = OrderDetails.productCode
WHERE OrderDetails.quantityOrdered > (SELECT AVG(OrderDetails.quantityOrdered) FROM OrderDetails WHERE Products.productCode = OrderDetails.productCode)
GROUP BY productName, productLine, OrderDetails.quantityOrdered;

