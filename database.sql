--Controle Ocupacional Hospitalar
CREATE DATABASE HOSPITAL
USE HOSPITAL

--Cadastrar Paciente
CREATE TABLE HO_PACIENTE(
    PACIENTE_IN_NUMCADASTRO INT NOT NULL IDENTITY CONSTRAINT HO_PK_PACIENTE PRIMARY KEY,
    PACIENTE_ST_NOME VARCHAR(70) NOT NULL,
    PACIENTE_IN_IDADE INT NOT NULL,
    PACIENTE_ST_SEXO VARCHAR(1) NOT NULL,
    PACIENTE_ST_TIPSANGUINEO VARCHAR(4) NOT NULL,
    PACIENTE_ST_ALERGMEDICAMENTO VARCHAR(300) NOT NULL,
    PACIENTE_ST_GRAVIDADE VARCHAR(500) NOT NULL,
    PACIENTE_ST_TELEFONE VARCHAR(11) NOT NULL,
    PACIENTE_ST_CPF VARCHAR(11) NOT NULL,
    PACIENTE_ST_RG VARCHAR(11) NOT NULL,
    PACIENTE_ST_MEDICO VARCHAR(70) NOT NULL,
    PACIENTE_ST_PAI VARCHAR(70) NULL,
    PACIENTE_ST_MAE VARCHAR(70) NULL
)

--Cadastrar Leito
CREATE TABLE HO_LEITO(
    LEITO_IN_NUMERO INT NOT NULL IDENTITY CONSTRAINT HO_PK_LEITO PRIMARY KEY,
    LEITO_IN_EQUIPLEITO INT NOT NULL,
    LEITO_ST_QUARTO VARCHAR(12) NOT NULL,
    LEITO_ST_OCUPACAO VARCHAR(20) NOT NULL
)

--Cadastrar Usuário
CREATE TABLE HO_USUARIO(
    USUARIO_IN_REGISTRO INT NOT NULL IDENTITY CONSTRAINT HO_USUARIO PRIMARY KEY,
    USUARIO_ST_NOME VARCHAR(70) NOT NULL,
    USUARIO_ST_CPF VARCHAR(11) NOT NULL,
    USUARIO_ST_EMAIL VARCHAR(30) NOT NULL,
    USUARIO_IN_NUMREGISTO INT NOT NULL,
    USUARIO_ST_LOCALTRABALHO VARCHAR(70) NOT NULL,
    USUARIO_ST_NOMEUSUARIO VARCHAR(15) NOT NULL,
    USUARIO_ST_SENHAUSUARIO VARCHAR(30) NOT NULL
)