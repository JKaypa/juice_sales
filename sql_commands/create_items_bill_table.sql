USE juice_sales;

CREATE TABLE tb_items_bill(
	number VARCHAR(5) NOT NULL,
    code VARCHAR(10) NOT NULL,
    quantity INT NULL,
    price FLOAT NULL,
    
    PRIMARY KEY(number, code)
);

ALTER TABLE tb_items_bill ADD CONSTRAINT FK_TB_BILL
FOREIGN KEY(number) REFERENCES tb_bill(number);

ALTER TABLE tb_items_bill ADD CONSTRAINT FK_TB_PRODUCT
FOREIGN KEY(code) REFERENCES tb_product(code);