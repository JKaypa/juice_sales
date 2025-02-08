INSERT INTO `juice_sales`.`tb_seller`
(`registration`,
`name`,
`neighborhood`,
`commission`,
`admission_date`,
`vacations`)
VALUES
(239,
"Juan Gonzales",
"Torices",
1.2,
"2024-07-24",
0);

START TRANSACTION;
INSERT INTO `juice_sales`.`tb_seller`
(`registration`,
`name`,
`neighborhood`,
`commission`,
`admission_date`,
`vacations`)
VALUES
(240,
"Sandra Perez",
"Canapote",
1.5,
"2025-01-09",
0),
(241,
"David Gutierrez",
"Pie de la Popa",
1.4,
"2024-02-05",
1);

UPDATE tb_seller SET commission = commission * 1.05;
ROLLBACK;
COMMIT;