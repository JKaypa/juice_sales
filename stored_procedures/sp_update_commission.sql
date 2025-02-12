CREATE DEFINER=`root`@`localhost` PROCEDURE `commission_readjustment`(rate FLOAT)
BEGIN
UPDATE tb_seller SET commission = commission * (1 + rate);
END