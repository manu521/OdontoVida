insert into Tratamento_Procedimento (tratamento_id, procedimento_id, quantidade) values
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1);

insert into Pagamento (tratamento_id, valor, data_pagamento) values
(1, 150.00, '2024-09-10'),
(2, 800.00, '2024-09-25'),
(3, 100.00, '2024-09-12'),
(4, 200.00, '2024-09-13'),
(5, 1500.00, '2024-12-14'),
(6, 2000.00, '2024-10-15'),
(7, 500.00, '2024-09-16'),
(8, 1200.00, '2024-10-17'),
(9, 300.00, '2024-09-25'),
(10, 250.00, '2024-09-19');

/*
SENAC DF - CEP Jessé Freire
2024.07.276 - Aprendizagem Profissional de Qualificação em Desevolvimento de Softwares
Prof Hudson Neves
Projeto final - Implementação de Bando de Dados Relacional com MySQL  
Projeto - Clínica Odontológica OdontoVida*/
-- Consultas e joins
/*
  Esta consulta lista os detalhes das consultas, incluindo o nome do paciente e o nome do dentista responsável por cada consulta.
*/
select 
  c.consulta_id,
  p.nome AS paciente_nome,
  d.nome AS dentista_nome,
  c.data_consulta
from
  consulta c
  
inner join
  Paciente p ON c.paciente_id = p.paciente_id
  
inner join
  Dentista d ON c.dentista_id = d.dentista_id;