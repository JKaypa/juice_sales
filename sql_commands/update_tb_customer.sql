SELECT * FROM juice_sales.tb_customer;

UPDATE tb_customer SET purchase_vol = purchase_vol / 10;

SELECT * FROM tb_customer WHERE dni = "5840119709";

UPDATE tb_customer SET address = "Jorge Emilio 23", neighborhood = "San Antonio", city = "Guadalajara", state = "JC", zip_code = "44700000" WHERE dni = "5840119709";