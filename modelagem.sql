-- Modelagem do Banco de Dados de uma Pizzaria
CREATE TABLE pizzaria (    
    id INT PRIMARY KEY NOT NULL, 
    nome VARCHAR(100),
    horário VARCHAR(100),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE ingredientes (
    id INT PRIMARY KEY NOT NULL, 
    nome VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE tamanho (
    id INT PRIMARY KEY NOT NULL, 
    descricao VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE borda (
    id INT PRIMARY KEY NOT NULL, 
    nome VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pedido (
    id INT PRIMARY KEY NOT NULL, 
    id_pizzaria INT NOT NULL,
    id_cliente INT NOT NULL,
    id_entregador INT NOT NULL,
    horario DATETIME NOT NULL,
    previsao_entrega DATETIME, 
    status ENUM('pendente','lido','preparando','pronto','a caminho'),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY id_pizzaria REFERENCES ON pizzaria(id),
    FOREIGN KEY id_cliente REFERENCES ON cliente(id),
    FOREIGN KEY id_entregador REFERENCES ON entregador(id),
);

CREATE TABLE massa (
    id INT PRIMARY KEY NOT NULL, 
    nome VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE tipo_produto (
    id INT PRIMARY KEY NOT NULL, 
    descricao VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE produtos (
    id INT PRIMARY KEY NOT NULL, 
    id_tipo INT NOT NULL,
    nome VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY id_tipo REFERENCES ON tipo_produto(id)
);

CREATE TABLE cliente (
    id INT PRIMARY KEY NOT NULL, 
    nome VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE endereço (
    id INT PRIMARY KEY NOT NULL, 
    id_bairro INT NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(45), 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME

    FOREIGN KEY id_bairro REFERENCES ON bairro(id)
);

CREATE TABLE bairro (
    id INT PRIMARY KEY NOT NULL, 
    nome VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE telefone (
    id INT PRIMARY KEY NOT NULL, 
    id_cliente INT NOT NULL,
    numero VARCHAR(15),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY id_cliente REFERENCES ON cliente(id)
);

CREATE TABLE entregador (
    id INT PRIMARY KEY NOT NULL, 
    nome VARCHAR(100),
    placa VARCHAR(10),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pizzaria_pizza (
    id INT PRIMARY KEY NOT NULL, 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pizzaria_entregador (
    id INT PRIMARY KEY NOT NULL, 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pizzaria_cliente (
    id INT PRIMARY KEY NOT NULL, 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pizzaria_telefone (
    id INT PRIMARY KEY NOT NULL, 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pizzaria_produto (
    id INT PRIMARY KEY NOT NULL, 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pizza_ingrediente (
    id INT PRIMARY KEY NOT NULL, 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pizza_tamanho (
    id INT PRIMARY KEY NOT NULL, 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pizza_borda (
    id INT PRIMARY KEY NOT NULL, 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pizza_massa (
    id INT PRIMARY KEY NOT NULL, 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pedido_produto (
    id INT PRIMARY KEY NOT NULL, 
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);