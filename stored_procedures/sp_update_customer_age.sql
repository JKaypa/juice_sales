CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_age`()
BEGIN
UPDATE tb_customer SET age = (SELECT TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()));
END