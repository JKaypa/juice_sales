CREATE DEFINER=`root`@`localhost` PROCEDURE `show_flavor`(vcode VARCHAR(100))
BEGIN
DECLARE vflavor VARCHAR(50); 
SELECT flavor INTO vflavor FROM tb_product WHERE code = vcode; 
SELECT vflavor;
END