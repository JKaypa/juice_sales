CREATE DEFINER=`root`@`localhost` FUNCTION `number_of_invoices`(date DATE) RETURNS int
BEGIN
DECLARE invoice_count INT DEFAULT 0;
SELECT COUNT(*) INTO invoice_count FROM facturas WHERE FECHA_VENTA = date;
RETURN invoice_count;
END