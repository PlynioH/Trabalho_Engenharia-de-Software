USE bgeadny5pgksnmobdw9y;

CREATE TABLE paciente(
    numcadastro int(5) AUTO_INCREMENT,
    nome varchar(70) NOT NULL,
    idade int(3) NOT NULL,
    sexo varchar(1) NOT NULL,
    tiposanguineo varchar(4) NOT NULL,
    alergiamedicamento varchar(300) NOT NULL,
    gravidade varchar(500) NOT NULL,
    telefone varchar(14) NOT NULL,
    cpf varchar(14) NOT NULL,
    rg varchar(11) NOT NULL,
    nquarto varchar(12) NOT NULL,
    nomemedico varchar(70) NOT NULL,
    nomepai varchar(70) NULL,
    nomemae varchar(70) NULL,
  	PRIMARY KEY (numcadastro)
);

CREATE TABLE leito(
    numeroleito int(7) NOT NULL,
    numeroequipamento int(7) NOT NULL,
    quarto varchar(12) UNIQUE NOT NULL,
    ocupacao varchar(20) NOT NULL,
  	PRIMARY KEY (numeroleito)
);

CREATE TABLE usuario(
    registro int(5) AUTO_INCREMENT,
    nome varchar(70) NOT NULL,
    cpf varchar(14) NOT NULL,
    email varchar(30) NOT NULL,
    numregistro varchar(15) NOT NULL,
    localtrabalho varchar(70) NOT NULL,
    nomeusuario varchar(15) NOT NULL,
    senhausuario BINARY(60) NOT NULL,
  	PRIMARY KEY (registro)
);

ALTER TABLE paciente ADD CONSTRAINT quarto FOREIGN KEY (nquarto) REFERENCES leito (quarto);