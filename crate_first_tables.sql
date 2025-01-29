USE juice_sales;

CREATE TABLE seller(
	registration VARCHAR(5) NOT NULL,
    name VARCHAR(100) NULL,
    neighborhood VARCHAR(50) NULL,
    commission FLOAT NULL,
    admission_date DATE NULL,
    vacations BIT(1) NULL,
    
    PRIMARY KEY(registration)
);

CREATE TABLE products(
	code VARCHAR(10) NOT NULL,
    description VARCHAR(100) NULL,
    flavor VARCHAR(50) NULL,
    size VARCHAR(50) NULL,
    container VARCHAR(50) NULL,
    list_price FLOAT,
    
    PRIMARY KEY(code)
);

CREATE TABLE customer(
	dni VARCHAR(11) NOT NULL,
    name VARCHAR(100) NULL,
    address VARCHAR(100) NULL,
    neighborhood VARCHAR(100) NULL,
    city VARCHAR(50) NULL,
    state VARCHAR(50) NULL,
    zip_code VARCHAR(10) NULL,
    date_of_birth DATE NULL,
    age SMALLINT NULL,
    gender VARCHAR(1) NULL,
    credit_limit FLOAT NULL,
    purchase_vol FLOAT NULL,
    first_purchase BIT(1),
    
    PRIMARY KEY(dni)
);
