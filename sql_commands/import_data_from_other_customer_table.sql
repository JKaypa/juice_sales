USE juice_sales;

SELECT * FROM jugos_ventas.tabla_de_clientes;

INSERT INTO tb_customer
	SELECT DNI AS dni, NOMBRE AS name, DIRECCION_1 AS address, BARRIO AS neighborhood, CIUDAD AS city, ESTADO AS state, CP AS zip_code,
	FECHA_DE_NACIMIENTO AS date_of_birth, EDAD AS age, SEXO AS gender, LIMITE_DE_CREDITO AS credit_limit, VOLUMEN_DE_COMPRA AS purchase_vol, PRIMERA_COMPRA AS first_purchase
    FROM jugos_ventas.tabla_de_clientes WHERE DNI NOT IN (SELECT dni from tb_customer);

SELECT * FROM tb_customer;