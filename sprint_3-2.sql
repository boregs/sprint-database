CREATE DATABASE TechMinds;
USE TechMinds;

CREATE TABLE colaboradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    departamento VARCHAR(50),
    salario INT,
    data_admissao DATE
);

INSERT INTO colaboradores (nome, email, departamento, salario, data_admissao)
VALUES 
('Roberto Dias', 'roberto@techminds.com', 'Desenvolvimento', 5500, '2022-05-10'),
('Mariana Souza', 'mariana@techminds.com', 'Marketing', 4800, '2023-01-15'),
('Carlos Lima', 'carlos@techminds.com', 'Vendas', 6200, '2021-11-20'),
('Ana Julia', 'ana@techminds.com', 'Desenvolvimento', 7500, '2023-03-10'),
('Bruno Melo', 'bruno@techminds.com', 'Marketing', 3500, '2024-02-01'),
('Carla Silva', 'carla@techminds.com', 'Vendas', 6100, '2022-08-30');

-- Atividade 4: Filtro de Salário
SELECT nome, email 
FROM colaboradores 
WHERE salario > 6000;

-- Atividade 5: Atualização (Update)
UPDATE colaboradores 
SET salario = 6000 
WHERE nome = 'Roberto Dias';

-- Atividade 6: Remoção (Delete)
DELETE FROM colaboradores 
WHERE id = 2;

-- Atividade 7: Estatísticas Gerais
SELECT COUNT(*) AS total_funcionarios, AVG(salario) AS media_salarial 
FROM colaboradores;

-- Atividade 8: Contagem por Departamento
SELECT departamento, COUNT(*) AS quantidade_colaboradores
FROM colaboradores
GROUP BY departamento;

-- Atividade 9: Auditoria de Salários
SELECT departamento, MAX(salario) AS maior_salario, MIN(salario) AS menor_salario
FROM colaboradores
GROUP BY departamento;

-- Atividade 10: Relatório Gerencial Avançado
SELECT departamento, SUM(salario) AS custo_total
FROM colaboradores
WHERE data_admissao <= '2023-12-31'
GROUP BY departamento
HAVING SUM(salario) > 10000;
