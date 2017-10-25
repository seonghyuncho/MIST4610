/**Write a query to list the names of all employees (in 1 column) and the number of individuals they supervise. 
(This list should also contain employees that supervise 0 individuals. 
You may want to use the CONCAT function to generate the name of the employee.) **/

SELECT * FROM Employees;

SELECT CONCAT(superior.firstName, " ", superior.lastName) AS 'Employee Name', COUNT(superior.employeeNumber) AS '# they supervise'
FROM Employees
INNER JOIN Employees AS superior
ON Employees.reportsTo = superior.employeeNumber
GROUP BY Employees.reportsTo;

/** Write a query to list the names of customers and the name (first and last name in 1 column) of the employee that is their sales representative. 
(This list should also contain customers that do not have an assigned sales representaTve.) **/


SELECT customerName, CONCAT(Employees.firstName, " ", Employees.lastName) AS 'Employee Name'
FROM Customers
LEFT JOIN Employees
ON Customers.salesRepEmployeeNumber = Employees.employeeNumber;



/** Write a query to list the month, the year of when an order was placed and the number of orders placed during that month and year. **/

SELECT *
FROM Orders;

SELECT
FROM
;
