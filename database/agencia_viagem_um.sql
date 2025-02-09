CREATE DATABASE agencia_viagem;

use agencia_viagem;

CREATE TABLE pais (
    id_pais INT PRIMARY KEY AUTO_INCREMENT,
    nome_pais VARCHAR(100) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    codigo_telefone VARCHAR(5) NOT NULL
);

CREATE TABLE estado (
    id_estado INT PRIMARY KEY AUTO_INCREMENT,
    nome_estado VARCHAR(100) NOT NULL,
    uf VARCHAR(10), 
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE cidade (
    id_cidade INT PRIMARY KEY AUTO_INCREMENT,
    nome_cidade VARCHAR(100) NOT NULL,
    id_estado INT,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES estado(id_estado),
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE endereco (
    id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(255) NOT NULL,
    numero VARCHAR(20),
    complemento VARCHAR(100),
    bairro VARCHAR(100),
    id_cidade INT NOT NULL,
    cep VARCHAR(20),
    FOREIGN KEY (id_cidade) REFERENCES cidade(id_cidade)
);

CREATE TABLE localizacao (
    id_localizacao INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL, 
    aeroporto BOOLEAN DEFAULT FALSE,
    id_endereco INT,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco)
);

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    primeiro_nome VARCHAR(50) NOT NULL,
    ultimo_nome VARCHAR(50) NOT NULL,
    nome_completo VARCHAR(100) GENERATED ALWAYS AS (CONCAT(primeiro_nome, ' ', ultimo_nome)) STORED,
    email VARCHAR(255) UNIQUE NOT NULL,
    codigo_pais VARCHAR(5) NOT NULL, 
    telefone VARCHAR(20) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    documento_identificacao VARCHAR(50),
    id_endereco INT,
    ativo BOOLEAN DEFAULT TRUE,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco)
);

CREATE TABLE companhia_aerea (
    id_companhia VARCHAR(3) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    logo VARCHAR(255),
    site VARCHAR(255),
    telefone_contato VARCHAR(20)
);

CREATE TABLE companhia_aerea_destino (
    id_companhia VARCHAR(3),
    id_localizacao INT,
    PRIMARY KEY (id_companhia, id_localizacao),
    FOREIGN KEY (id_companhia) REFERENCES companhia_aerea(id_companhia),
    FOREIGN KEY (id_localizacao) REFERENCES localizacao(id_localizacao)
);


CREATE TABLE classe_viagem (
    id_classe_viagem INT PRIMARY KEY AUTO_INCREMENT,
    descricao ENUM('Econômica', 'Econômica Premium', 'Executiva', 'Primeira Classe')
);

CREATE TABLE voo (
    id_voo INT PRIMARY KEY AUTO_INCREMENT,
    id_companhia VARCHAR(3) NOT NULL,
	id_classe_viagem INT NOT NULL,
    id_origem INT NOT NULL,
    id_destino INT NOT NULL,
    id_usuario INT NOT NULL,
    data_partida DATETIME NOT NULL,
    data_chegada DATETIME NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_companhia) REFERENCES companhia_aerea(id_companhia),
	FOREIGN KEY (id_companhia) REFERENCES companhia_aerea(id_companhia),   
    FOREIGN KEY (id_origem) REFERENCES localizacao(id_localizacao),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
	FOREIGN KEY (id_classe_viagem) REFERENCES classe_viagem(id_classe_viagem)
);