DROP DATABASE IF EXISTS clinica_db;
CREATE DATABASE clinica_db;
USE clinica_db;

CREATE TABLE paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE especialidade (
    id_especialidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE medico (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    id_especialidade INT NOT NULL,
    CONSTRAINT fk_medico_especialidade 
        FOREIGN KEY (id_especialidade) 
        REFERENCES especialidade(id_especialidade)
) ENGINE=InnoDB;

CREATE TABLE consulta (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    data_consulta DATETIME NOT NULL,
    status VARCHAR(30) NOT NULL,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    CONSTRAINT fk_consulta_paciente 
        FOREIGN KEY (id_paciente) 
        REFERENCES paciente(id_paciente),
    CONSTRAINT fk_consulta_medico 
        FOREIGN KEY (id_medico) 
        REFERENCES medico(id_medico)
) ENGINE=InnoDB;

CREATE TABLE exame (
    id_exame INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE consulta_exame (
    id_consulta_exame INT AUTO_INCREMENT PRIMARY KEY,
    resultado VARCHAR(100) NOT NULL,
    id_consulta INT NOT NULL,
    id_exame INT NOT NULL,
    CONSTRAINT fk_consulta_exame_consulta 
        FOREIGN KEY (id_consulta) 
        REFERENCES consulta(id_consulta),
    CONSTRAINT fk_consulta_exame_exame 
        FOREIGN KEY (id_exame) 
        REFERENCES exame(id_exame)
) ENGINE=InnoDB;