CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_age`()
BEGIN
UPDATE tb_customer SET date_of_birth = (SELECT TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()));
END