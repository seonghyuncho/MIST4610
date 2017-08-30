USE Chapter3;
SELECT f_name, middle_init, l_name FROM student WHERE l_name REGEXP '^s';
SELECT * FROM student WHERE f_name REGEXP 'A|a';
SELECT COUNT(*) As Georgia FROM student  WHERE state REGEXP 'GA';
SELECT DISTINCT(city) FROM student;
SELECT * FROM student WHERE l_name REGEXP '^.r';