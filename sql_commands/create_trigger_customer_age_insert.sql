DELIMITER //
CREATE TRIGGER tg_costumer_age_insert
AFTER INSERT ON tb_customer
FOR EACH ROW BEGIN
	UPDATE tb_customer SET age = (SELECT timestampdiff(YEAR, date_of_birth, NOW()));
END// 

DROP TRIGGER tg_costumer_age_insert;
UPDATE tb_customer SET age = 0;