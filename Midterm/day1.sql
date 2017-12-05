/** Question 1
Write a query that displays the names of the products that have not been ordered by any customer. **/

SELECT productName FROM Products
JOIN (OrderDetails, Orders)
ON Products.productCode = OrderDetails.productCode
AND Orders.orderNumber = OrderDetails.orderNumber
WHERE Products.productCode NOT IN (OrderDetails.productCode);

/** Question 2
Write a query that displays the last and first name of supervisors
 and the number of customers serviced by that supervisor’s subordinates. 
 Order the results by the count of number of customers ascending.
**/

SELECT superior.lastName, superior.firstName, Employees.firstName, Employees.lastName, COUNT(Employees.employeeNumber)
FROM Employees
JOIN (Customers, Employees AS superior)
ON Employees.employeeNumber = Customers.salesRepEmployeeNumber
AND superior.employeeNumber = Employees.reportsTo
GROUP BY (Employees.employeeNumber)
/**Should be by superior above**/
ORDER BY COUNT(Employees.employeeNumber); 


/**Question 3
Write a query to list out the names of customers, 
order statuses and a count of the number of orders they have in the different order statuses. 
**/

SELECT customerName, Orders.status, COUNT(Orders.status)
FROM Customers
JOIN Orders
ON Customers.customerNumber = Orders.customerNumber
GROUP BY Orders.status, Customers.customerName;

/** Question 4
Write a query to list out the customer name and the sum of the payments (i.e. total) 
they have made if the customer’s credit limit is less average credit limit of all customers. 

**/

SELECT customerName, SUM(Payments.amount) AS Total
FROM Customers
JOIN Payments
ON Customers.customerNumber = Payments.customerNumber
WHERE creditLimit < (SELECT AVG(creditLimit) FROM Customers)
GROUP BY Customers.customerNumber;

/** Question 5 
Write a query to list the names of product vendors and the number of different products they sell. 
**/

SELECT productVendor, COUNT(*)
FROM Products
GROUP BY productVendor;

/** Question 6
Write a query to list the product line, 
the product name and buy price of a product if the product is from the 1960’s 
(Hint: product name contains that information) 
and its MSRP is greater that other products in that products product line. **/

SELECT productLine, productName, buyPrice
FROM Products
WHERE productName REGEXP '^196'
AND MSRP > (SELECT AVG(MSRP) FROM Products);




