CREATE DEFINER=`root`@`localhost` PROCEDURE `add_billing_days`(init_date DATE, final_date DATE)
BEGIN
DECLARE selling_date DATE DEFAULT init_date;
SELECT FECHA_VENTA AS date, COUNT(*) AS billing_count FROM facturas WHERE FECHA_VENTA = selling_date GROUP BY FECHA_VENTA;
WHILE
selling_date < final_date
DO
SET selling_date = (SELECT ADDDATE(selling_date, INTERVAL 1 DAY));
SELECT FECHA_VENTA AS date, COUNT(*) AS billing_count FROM facturas WHERE FECHA_VENTA = selling_date GROUP BY FECHA_VENTA;
END WHILE;
END