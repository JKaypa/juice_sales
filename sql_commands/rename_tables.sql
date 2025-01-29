USE juice_sales;

ALTER TABLE sale RENAME bill;
ALTER TABLE bill RENAME tb_bill;
ALTER TABLE customer RENAME tb_customer;
ALTER TABLE products RENAME tb_product;
ALTER TABLE seller RENAME tb_seller;