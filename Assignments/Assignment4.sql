/** Write a query to list the names (last name and first name) 
and extension of employee’s who report to individuals who have the same job title. **/

SELECT Employees.lastName, Employees.firstName, Employees.extension
FROM Employees
JOIN Employees AS superior
ON superior.employeeNumber = Employees.reportsTo
WHERE(Employees.jobTitle = superior.jobTitle);



/** Write a query to display the name (last name and first name)of the employee
and the amount of business he has generated (i.e. how many dollars’ worth of product has an employee sold). 
Order the results in descending value of dollars’ worth of products sold. **/

SELECT lastName, firstName, SUM(OrderDetails.priceEach * OrderDetails.quantityOrdered) AS revenue
FROM Employees
JOIN (Customers, Orders, OrderDetails)
ON Employees.employeeNumber = Customers.salesRepEmployeeNumber
AND Customers.customerNumber = Orders.customerNumber
AND Orders.orderNumber = OrderDetails.orderNumber
GROUP BY Employees.employeeNumber
ORDER BY revenue DESC;
