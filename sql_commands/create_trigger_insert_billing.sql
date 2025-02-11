CREATE TABLE tb_billing (
	date DATE NULL,
    total_sale FLOAT
);

CREATE TABLE `tb_bill2` (
  `number` varchar(5) NOT NULL,
  `date` date DEFAULT NULL,
  `dni` varchar(11) DEFAULT NULL,
  `registration` varchar(5) DEFAULT NULL,
  `tax` float DEFAULT NULL,
  PRIMARY KEY (`number`),
  KEY `FK_customer2` (`dni`),
  KEY `FK_seller1` (`registration`),
  CONSTRAINT `FK_customer2` FOREIGN KEY (`dni`) REFERENCES `tb_customer` (`dni`),
  CONSTRAINT `FK_seller2` FOREIGN KEY (`registration`) REFERENCES `tb_seller` (`registration`)
);

CREATE TABLE `tb_items_bill2` (
  `number` varchar(5) NOT NULL,
  `code` varchar(10) NOT NULL,
  `quantity` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`number`,`code`),
  KEY `FK_tb_product1` (`code`),
  CONSTRAINT `FK_tb_bill2` FOREIGN KEY (`number`) REFERENCES `tb_bill2` (`number`),
  CONSTRAINT `FK_tb_product1` FOREIGN KEY (`code`) REFERENCES `tb_product` (`code`)
);

ALTER TABLE tb_items_bill2 ADD CONSTRAINT FK_tb_bill2 FOREIGN KEY (number) REFERENCES tb_bill(number),
ADD CONSTRAINT FK_tb_product2 FOREIGN KEY (code) REFERENCES tb_product(code); 

INSERT INTO tb_bill2 VALUES ("0001", "2025-02-10", "1471156710", "235", 0.1);
INSERT INTO tb_items_bill2 VALUES ("0001", "1000889", 100, 25);
INSERT INTO tb_items_bill2 VALUES ("0001", "1002334", 150, 30), ("0001", "1002767", 100, 20);

INSERT INTO tb_bill2 VALUES ("0002", "2025-02-10", "1471156710", "235", 0.1);
INSERT INTO tb_items_bill2 VALUES ("0002", "1000889", 120, 25);
INSERT INTO tb_items_bill2 VALUES ("0002", "1002334", 157, 30), ("0002", "1002767", 70, 20);

DELIMITER //
CREATE TRIGGER tg_insert_billing
AFTER INSERT ON tb_items_bill2
FOR EACH ROW BEGIN 
	DELETE FROM tb_billing;
	INSERT INTO tb_billing
	SELECT tb_bill2.date, SUM(tb_items_bill2.quantity * tb_items_bill2.price) AS total_sale 
	FROM tb_bill2
	INNER JOIN tb_items_bill2
	ON tb_bill2.number = tb_items_bill2.number
	GROUP BY tb_bill2.date;
END //
  

