CREATE DEFINER=`root`@`localhost` PROCEDURE `selling_comparison`(date1 DATE, date2 DATE)
BEGIN
DECLARE total1 INT;
DECLARE total2 INT;
DECLARE response VARCHAR(10);

SELECT (I.CANTIDAD * I.PRECIO) INTO total1
FROM facturas F
JOIN items_facturas I
ON F.NUMERO = I.NUMERO
WHERE F.FECHA_VENTA = date1
LIMIT 1;

SELECT (I.CANTIDAD * I.PRECIO) INTO total2
FROM facturas F
JOIN items_facturas I
ON F.NUMERO = I.NUMERO
WHERE F.FECHA_VENTA = date2
LIMIT 1;

IF
(date1 - date2) * date1 / 100 > 10
THEN
SET response = "Green";
ELSEIF
(date1 - date2) * date1 / 100 >= -10 && (date1 - date2) * date1 / 100 <= 10
THEN
SET response = "Yellow";
ELSE 
SET response = "Red";
END IF;
SELECT response;
END