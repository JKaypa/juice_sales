CREATE DEFINER=`root`@`localhost` PROCEDURE `billing_evaluation`(vdate DATE)
BEGIN
DECLARE message VARCHAR(50);
DECLARE vcount INT;
SELECT COUNT(*) INTO vcount FROM facturas WHERE FECHA_VENTA=vdate;
IF
vcount > 70
THEN
SET message = "Too many billings";
ELSE
SET message = "Not many billings";
END IF;
SELECT message;
END