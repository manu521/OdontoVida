CREATE TABLE Tratamento (
	tratamento_id INT auto_increment PRIMARY KEY,
    consulta_id INT,
    descricao TEXT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (consulta_id) REFERENCES Consulta(consulta_id)
);
CREATE TABLE Procedimento (
	procedimento_id INT auto_increment PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    custo DECIMAL(10, 2) NOT NULL
);
CREATE TABLE Tratamento_Procedimento (
	tratamento_id INT,
    procedimento_id INT,
    quantidade INT DEFAULT 1,
    primary key (tratamento_id, procedimento_id),
    foreign key (tratamento_id) references Tratamento(tratamento_id),
    foreign key (procedimento_id) references Procedimento(procedimento_id)
    );
CREATE TABLE Pagamento (
	pagamento_id INT AUTO_INCREMENT PRIMARY KEY,
    tratamento_id INT,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATE,
    foreign key (tratamento_id) references Tratamento(tratamento_id)
);