CREATE DEFINER=`root`@`localhost` PROCEDURE `add_billing_days`(init_date DATE, final_date DATE)
BEGIN
WHILE
init_date <= final_date
DO
SELECT FECHA_VENTA AS date, COUNT(*) AS billing_count FROM facturas WHERE FECHA_VENTA = init_date GROUP BY FECHA_VENTA;
SET init_date = (SELECT ADDDATE(init_date, INTERVAL 1 DAY));
END WHILE;
END