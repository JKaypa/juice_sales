USE juice_sales;

CREATE TABLE IF NOT EXISTS sale (
	number VARCHAR(5) NOT NULL,
    date DATE NULL,
    dni VARCHAR(11) NULL,
    registration VARCHAR(5) NULL,
    tax FLOAT NULL,
    
    PRIMARY KEY(number)
);

ALTER TABLE sale ADD CONSTRAINT FK_customer
FOREIGN KEY(dni) REFERENCES customer(dni);

ALTER TABLE sale ADD CONSTRAINT FK_SELLER
FOREIGN KEY(registration) REFERENCES seller(registration)
