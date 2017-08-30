USE Chapter3;

/*
All information
*/
SELECT * FROM student;
/* first name, middle initial, last name, and state about students
*/
SELECT f_name, middle_init, l_name, state FROM student;
/*last name, first name, and middle initials from students
*/
SELECT l_name, f_name, middle_init FROM student;
/*
All information about students from Georgia
*/
SELECT * FROM student WHERE state = "GA";
/*
All information about students not from Georgia.
*/
SELECT * FROM student WHERE NOT state = "GA";
/*
last name first name of students from Georgia, South Carolina, and Alabama.
*/
SELECT l_name, f_name FROM student WHERE state = "GA" OR state = "SC" OR state = "AL";

#Ordering results

SELECT l_name, f_name
FROM student
WHERE state IN ("SC", "GA", "AL")
ORDER BY l_name DESC;

SELECT l_name, f_name, state
FROM student
ORDER BY state, l_name DESC;

USE Text;

SELECT * FROM share;
SELECT shrfirm AS "Firm name", (shrprice/shrqty)*100 AS "yield" FROM share;

SELECT COUNT(*) FROM share;

SELECT SUM(shrqty) FROM share;

SELECT shrcode, shrfirm, shrprice
FROM share
WHERE shrprice > (SELECT AVG(shrprice)FROM share);