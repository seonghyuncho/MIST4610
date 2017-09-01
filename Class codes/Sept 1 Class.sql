USE ns_sc91940;


CREATE TABLE nation(
	natCode INT(5),
    natName VARCHAR(10),
    PRIMARY KEY (natCode));





CREATE TABLE stock(
	stkCode INT(5),
    stkeName VARCHAR(45),
    stkPrice DECIMAL(6,2),
    natCode INT(5),
    PRIMARY KEY(stkCode),
    /** Constraint means that there is a specific name **/
    CONSTRAINT fk_natCode FOREIGN KEY(natCode) 
    /** implies the foreign key natcode references nation table's natCode **/
    REFERENCES nation(natCode) ON DELETE RESTRICT
    
    
);


INSERT INTO nation VALUES(1, "INDIA");
INSERT INTO stock VALUES(1, "IBM", 23.3, 1);
INSERT INTO stock VALUES(2, "APPLE", 25.3, 1);


USE Text;

SELECT * FROM nation;
SELECT * FROM stock;

SELECT * FROM stock JOIN nation ON nation.natcode = stock.natcode;