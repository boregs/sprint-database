-- Sprint 3.1 E-Commerce

CREATE DATABASE MegaStore;
USE MegaStore;


CREATE table produtos
(
	
	id int primary key auto_increment,
  	name varchar(100),
  	categoria varchar(50),
  	preco int,
  	quantidade_estoque int,
  	data_cadastro date
);

-- Exercicio 3: inserindo dados
INSERT INTO produtos (id, name, categoria, preco, quantidade_estoque, data_cadastro)
VALUES 
('Smartphone Galaxy Z', 'Eletrônicos', 4500, 15, '2026-03-10'),
('Cadeira Ergonômica Pro', 'Móveis', 1200, 8, '2026-03-15'),
('Fone de Ouvido Bluetooth', 'Acessórios', 250, 50, '2026-03-20'),
('Mesa de Escritório Industrial', 'Móveis', 850, 5, '2026-03-22'),
('Smartwatch Series X', 'Eletrônicos', 1800, 20, '2026-03-25');
('Mochila de Notebook', 'Acessórios', 50, 20, '2025-03-25')
('Teclado Mecânico RGB', 'Acessórios', 350, 25, '2023-05-10'),
('Monitor 24 Polegadas', 'Eletrônicos', 900, 10, '2023-08-15'),
('Mouse Pad Gamer', 'Acessórios', 80, 30, '2023-11-20'),
('Estante de Livros', 'Móveis', 450, 15, '2023-02-10'),
('Lâmpada Inteligente', 'Eletrônicos', 120, 40, '2023-12-05');

-- Exercicio 4: Buscando dados

select name, preco
from produtos
where preco > 1000
group by categoria, name, preco;

-- Exercicio 5: Atualizando dados

update produtos
set preco = 1350
where id = 2;
select * from produtos;

-- Exercicio 6: Deletando

delete from produtos
where name = 'Mochila de Notebook';

-- Exercicio 7: Visão Geral do Negócio

select sum(quantidade_estoque), avg(preco)
from produtos;

-- Exercicio 8: Análise por Categoria

select categoria, min(preco), max(preco)
from produtos
group by categoria;

-- Exercicio 9: Filtrando Grupos

select categoria, sum(quantidade_estoque)
from produtos
group by categoria, quantidade_estoque
having quantidade_estoque > 30;

-- Exercicio 10: 

select produtos.name, categoria, sum(quantidade_estoque)
from produtos
where data_cadastro < '2024-01-01'
group by produtos.name, categoria, quantidade_estoque
having quantidade_estoque < 60;
