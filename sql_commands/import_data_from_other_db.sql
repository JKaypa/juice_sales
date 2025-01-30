USE juice_sales;

SELECT * FROM jugos_ventas.tabla_de_productos;

INSERT INTO tb_product
	SELECT CODIGO_DEL_PRODUCTO AS code, NOMBRE_DEL_PRODUCTO AS description, SABOR AS flavor, TAMANO AS size, ENVASE AS container, PRECIO_DE_LISTA AS list_price
	FROM jugos_ventas.tabla_de_productos WHERE CODIGO_DEL_PRODUCTO NOT IN (SELECT code FROM tb_product);
    
SELECT * FROM tb_product;
