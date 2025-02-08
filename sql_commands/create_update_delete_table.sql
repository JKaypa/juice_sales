CREATE TABLE `tb_product2` (
  `code` varchar(10) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `flavor` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `container` varchar(50) DEFAULT NULL,
  `list_price` float DEFAULT NULL,
  PRIMARY KEY (`code`)
);

INSERT INTO tb_product2 SELECT * FROM tb_product;

UPDATE tb_product2 SET list_price = list_price * 1.15;

DELETE FROM tb_product2;


SELECT * FROM tb_product2;