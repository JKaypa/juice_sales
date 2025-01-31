SELECT * FROM juice_sales.tb_seller;

UPDATE tb_seller
INNER JOIN jugos_ventas.tabla_de_vendedores B
ON registration = SUBSTRING(B.MATRICULA, 3)
SET tb_seller.vacations = B.VACACIONES;