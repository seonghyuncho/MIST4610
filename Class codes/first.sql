USE ns_sc91940;
CREATE TABLE Building(
	building_id INT(3),
	city VARCHAR(20),
    state CHAR(2),
    zip INT(5),
    PRIMARY KEY(building_id)



 );
 

INSERT INTO Building(building_id, city, state, zip)VALUES (001, "Athens", "GA", 30602);
INSERT INTO Building(building_id, city, state, zip)VALUES (002, "Athens", "GA", 30609);
INSERT INTO Building VALUES(003, "Macon", "GA", 30909);
INSERT INTO Building(city, state, zip, building_id)VALUES ("Atlanta", "GA", 30808, 004);

SELECT * FROM Building;


