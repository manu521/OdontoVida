/*
Esta consulta mostra todos os tratamentos realizados, junto com os procedimentos associados a cada tratamento e o custo total de cada procedimento.
*/
select
t.tratamento_id,
t.descricao AS tratamento_descricao,
p.nome AS procedimento_nome,
tp.quantidade,
pr.custo,
(tp.quantidade * pr.custo) AS custo_total
from 
  tratamento t

inner join 
  Tratamento_procedimento tp ON t.tratamento_id = tp.tratamento_id
inner join
  Procedimento pr ON tp.procedimento_id = pr.procedimento_id;