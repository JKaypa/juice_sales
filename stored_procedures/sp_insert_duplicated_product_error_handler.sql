CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_product`(
vcode VARCHAR(10), 
vdescription VARCHAR(100), 
vflavor VARCHAR(50), 
vsize VARCHAR(50), 
vcontainer VARCHAR(50), 
vlist_price FLOAT)
BEGIN
DECLARE message VARCHAR(50);
DECLARE EXIT HANDLER FOR 1062
BEGIN
	SET message = "Duplicated product!";
	SELECT message;
END;
INSERT INTO tb_product 
(code, description, flavor, size, container, list_price) VALUES 
(vcode, vdescription, vflavor, vsize, vcontainer, vlist_price);
END