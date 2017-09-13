USE ClassicModels;

/**Part A: Write a query to display the city and country where an office is located
 and a count of the number of employees at that locaGon.
 Order the results in descending order of the number of employees.**/

SELECT city, country, COUNT(employeeNumber) FROM Offices JOIN Employees
ON Offices.officeCode = Employees.officeCode GROUP BY(officeLocation)
ORDER BY COUNT (employeeNumber) DESC;



/** Part B: Write a query to display the customer name and their average payment amount 
(Payments table) only if the customer’s average amount paid is greater than
 the average payment of all customers. 
 Order the results by the customer name.**/
SELECT customerName, AVG(amount)
FROM Customers
JOIN Payments ON Customers.customerNumber = Payments.customerNumber
GROUP BY(customerName) HAVING AVG(amount) > (SELECT AVG(amount) FROM Customers JOIN Payments
WHERE Customers.customerNumber = Payments.customerNumber)
ORDER BY(customerName);


/** Part C: Write a query to display the customer name, 
their average payment amount and the number of payments 
they have made where the amount of the check is greater than their average payment amount. 
Order the results by the descending number of payments. 
 **/


SELECT customerName, AVG(amount), COUNT(checkNumber) FROM Customers
Join Payments ON Customers.customerNumber = Payments.customerNumber
WHERE amount > (SELECT AVG(amount) FROM Customers GROUP BY(customerName))
ORDER BY COUNT(checkNumber) DESC;
