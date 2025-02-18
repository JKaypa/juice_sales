CREATE DEFINER=`root`@`localhost` PROCEDURE `credit_lImit`()
BEGIN
DECLARE credit FLOAT;
DECLARE is_cursor_open SMALLINT DEFAULT 1;
DECLARE cursor_credit CURSOR FOR SELECT credit_limit FROM tb_customer;
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET is_cursor_open = 0;

OPEN cursor_credit;

WHILE is_cursor_open
DO
FETCH cursor_credit INTO credit;
IF is_cursor_open
THEN SELECT credit;
END IF;
END WHILE;

CLOSE cursor_credit;
END