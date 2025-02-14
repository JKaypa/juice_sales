CREATE DEFINER=`root`@`localhost` PROCEDURE `price_category`(vcode VARCHAR(10))
BEGIN
DECLARE price FLOAT;
DECLARE category VARCHAR(50);
SELECT list_price INTO price FROM tb_product WHERE code = vcode;
CASE
WHEN price >= 12
THEN SET category = "Expensive product";
WHEN price >= 7 AND price < 12
THEN SET category = "Affordable product";
WHEN price < 7
THEN SET category = "Cheap product";
ELSE
SET category = "Product not found";
END CASE;
SELECT category;
END