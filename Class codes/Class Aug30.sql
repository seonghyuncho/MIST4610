SELECT * FROM building;

DELETE FROM Building WHERE building_id = 3;

DELETE FROM Building WHERE zip = 30602;

UPDATE Building
SET zip = 30606
WHERE building_id = 1;

INSERT INTO Building VALUES (6, "Athens","TN", 30609);

USE Text;

SELECT * FROM stock;

SELECT natcode, COUNT(natcode) FROM stock GROUP BY natcode HAVING COUNT(natcode) >= 3 ORDER BY natcode DESC;
