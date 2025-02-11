CREATE PROCEDURE `customer` ()
BEGIN
DECLARE customer CHAR(4) DEFAULT "Juan";
DECLARE age INT DEFAULT 10;
DECLARE date_of_birth DATE DEFAULT "2007-10-01";
DECLARE cost FLOAT(4, 2) DEFAULT 10.23;

SELECT customer, age, date_of_birth, cost;
END