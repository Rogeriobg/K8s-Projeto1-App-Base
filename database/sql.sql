CREATE DATABASE IF NOT EXISTS meubanco;

USE meubanco;

CREATE TABLE mensagens (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50),
    comentario VARCHAR(50)
);