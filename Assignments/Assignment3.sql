USE ClassicModels;


/**Write a query to list the customer names and the product names for those products whose Orders.status (status) is ‘In Process’. 41 is the answer we should get.**/

SELECT customerName, Products.productName
FROM Customers
JOIN (Orders, OrderDetails, Products)
ON Customers.customerNumber = Orders.customerNumber
AND Orders.orderNumber = OrderDetails.orderNumber
AND OrderDetails.productCode = Products.productCode
WHERE Orders.status = 'In Process';



/** Write a query to display the customer name for all customers that exist in the Customers table that have not placed any order. Order the results by customer name in the ascending order. 24 is the answer we should get**/
SELECT customerName
FROM Customers
WHERE NOT EXISTS(SELECT customerNumber FROM Orders WHERE Customers.customerNumber = Orders.customerNumber)
ORDER BY(customerName);


/** Write a query to list the different offices (their address) and provide a count of the customers serviced by employees of 
that office and the number of employees servicing those customers. **/

SELECT Offices.addressLine1, COUNT(Customers.customerNumber), COUNT(DISTINCT(Employees.employeeNumber))
FROM Offices
JOIN(Customers, Employees)
ON Offices.officeCode = Employees.officeCode
AND Employees.employeeNumber = Customers.salesRepEmployeeNumber
GROUP BY Offices.officeCode;
