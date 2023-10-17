create database pizzaria;
use pizzaria;

create table borda(
id_borda INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo VARCHAR (100)
);

create table massa(
id_massa INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo VARCHAR (100)
);

create table pizza(
id_pizza INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_borda INT,
id_massa INT,
FOREIGN KEY (id_borda) REFERENCES borda(id_borda),
FOREIGN KEY (id_massa) REFERENCES massa(id_massa)
);

drop table pizza;

create table sabor(
id_sabor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo VARCHAR (100)
);

create table pizza_sabor(
idpizza_sabor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_pizza INT,
id_sabor INT,
FOREIGN KEY (id_pizza) REFERENCES pizza(id_pizza),
FOREIGN KEY (id_sabor) REFERENCES sabor(id_sabor)
);

create table status(
id_status INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo VARCHAR (100)
);

create table pedido(
id_pedido INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_pizza INT,
id_status INT,
FOREIGN KEY (id_pizza) REFERENCES pizza (id_pizza),
FOREIGN KEY (id_status) REFERENCES status (id_status)
);

-- Inserindo dados no sistema

INSERT INTO status(tipo) VALUES ("Em Produção");
INSERT INTO status(tipo) VALUES ("Em Entrega");
INSERT INTO status(tipo) VALUES ("Concluido");

SELECT * FROM status;

INSERT INTO massa(tipo) VALUES ("Massa Comum");
INSERT INTO massa(tipo) VALUES ("Massa Integral");
INSERT INTO massa(tipo) VALUES ("Massa Temperada");

SELECT * FROM massa;

INSERT INTO borda(tipo) VALUES ("Cheddar");
INSERT INTO borda(tipo) VALUES ("Catupiry");

SELECT * FROM borda;

INSERT INTO sabor(tipo) VALUES ("4 Queijos");
INSERT INTO sabor(tipo) VALUES ("Frango com Catupiry");
INSERT INTO sabor(tipo) VALUES ("Lombinho");
INSERT INTO sabor(tipo) VALUES ("Portuguesa");
INSERT INTO sabor(tipo) VALUES ("Marguerita");
INSERT INTO sabor(tipo) VALUES ("Napolitana");

SELECT * FROM sabor;