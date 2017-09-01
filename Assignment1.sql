USE ClassicModels;
/**
Need to work on data modeling as well
*//

/**
List product names, 
product line and the difference between the MSRP and purchase(buy) price of the products.
Order the results by product line and the descending order of the difference.
**/
SELECT productName, productLine, (MSRP - buyPrice) as 'Difference' FROM Products ORDER BY productLine, (MSRP - buyPrice) DESC;

/**
List product names and the product line for all products
where the scale of the products is 1:700. (Products table)
**/

SELECT productName, productLine FROM Products WHERE productScale = "1:700";

/**
List the customer name and number for customers 
who have a greater than average credit limit. (Customers table)
**/

SELECT customerName, customerNumber FROM Customers WHERE creditLimit >(SELECT AVG(creditLimit) FROM Customers);
