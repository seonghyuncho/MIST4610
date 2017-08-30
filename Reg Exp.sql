USE Text;

SELECT * FROM share WHERE shrfirm REGEXP 'Ruby';

SELECT * FROM share WHERE shrfirm REGEXP 'ee|ea';

SELECT * FROM share WHERE shrfirm REGEXP '^P';

SELECT * FROM share WHERE shrfirm REGEXP 'e$';

SELECT * FROM share WHERE shrfirm LIKE "%e";

SELECT * FROM share;

SELECT DISTINCT(shrpe) FROM share;

SELECT COUNT(DISTINCT(shrpe)) FROM share;

SELECT COUNT(*) FROM(SELECT DISTINCT(shrpe) As Account FROM share) As atable;

SELECT * FROM share WHERE shrpe BETWEEN 10 AND 12;