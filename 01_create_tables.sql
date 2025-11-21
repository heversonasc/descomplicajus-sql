-- 1. Cria o banco de dados (se não existir)
CREATE DATABASE IF NOT EXISTS DescomplicaJus;

-- 2. Define que os comandos a seguir usarão este banco de dados
USE DescomplicaJus;

-- 3. Criação da tabela de Usuários
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    senha VARCHAR(200) NOT NULL,
    tipo ENUM('cliente', 'advogado') NOT NULL
);

-- 4. Criação da tabela de Advogados (depende de Usuario)
CREATE TABLE Advogado (
    id_advogado INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    oab VARCHAR(20) UNIQUE NOT NULL,
    especialidade VARCHAR(100),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- 5. Criação da tabela de Consultas (depende de Usuario)
CREATE TABLE Consulta (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT,
    criada_em DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- 6. Criação da tabela de Mensagens (depende de Consulta)
CREATE TABLE Mensagem (
    id_mensagem INT PRIMARY KEY AUTO_INCREMENT,
    id_consulta INT NOT NULL,
    emissor ENUM('usuario', 'advogado', 'ia') NOT NULL,
    conteudo TEXT NOT NULL,
    enviada_em DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);