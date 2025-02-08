CREATE TABLE tb_default (
id INT AUTO_INCREMENT NOT NULL,
description VARCHAR(255) NOT NULL,
address VARCHAR(255) DEFAULT "Torices" NOT NULL,
city VARCHAR(50) DEFAULT "Cartagena" NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),    

PRIMARY KEY(id)
);

SELECT * FROM tb_default;

INSERT INTO tb_default (description, address, city, created_at) VALUES ("This is jus a demo test", "Kennedy", "Bogotá", "1999-05-02");
INSERT INTO tb_default (description) VALUES ("Another demo test");