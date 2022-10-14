CREATE DATABASE iTonomise;
USE iTonomise;

CREATE TABLE IF NOT EXISTS autonomo (
    idAutonomo integer UNSIGNED NOT NULL AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    sobrenome varchar(100) NOT NULL,
    cpf varchar(100) NOT NULL,
    tel varchar(100) NOT NULL,
    usuario varchar(100) NOT NULL,
    senha varchar(100) NOT NULL,
    email varchar(100) NOT NULL,
    descricao varchar(100),
    tags varchar(100) NOT NULL,
    endereco varchar(100) NOT NULL,
    aval integer UNSIGNED,
    
    PRIMARY KEY (idAutonomo)
);

CREATE TABLE IF NOT EXISTS usuario (
    idUsuario integer UNSIGNED NOT NULL AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    sobrenome varchar(100) NOT NULL,
    cpf varchar(100) NOT NULL,
    tel varchar(100) NOT NULL,
    usuario varchar(100) NOT NULL,
    senha varchar(100) NOT NULL,
    email varchar(100) NOT NULL,
    endereco varchar(100),
    
    PRIMARY KEY (idUsuario)
);

CREATE TABLE IF NOT EXISTS contrato (
    idContrato integer UNSIGNED NOT NULL AUTO_INCREMENT,
	idAutonomo integer UNSIGNED,
    idUsuario integer UNSIGNED,
    titulo varchar(200) NOT NULL,
    valor varchar(100) NOT NULL,
    descricao varchar(200) NOT NULL,
    dataInicio varchar(200) NOT NULL,
    duracaoT varchar(200),
	duracaoN varchar(200) NOT NULL,
    localizacao varchar(200) NOT NULL,
    stats boolean,
    
    PRIMARY KEY (idContrato),
	FOREIGN KEY (idAutonomo) REFERENCES autonomo(idAutonomo) ON DELETE CASCADE,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario) ON DELETE CASCADE
);

SELECT * FROM usuario;
SELECT * FROM autonomo;
SELECT * FROM contrato;
