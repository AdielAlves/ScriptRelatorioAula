create view contaNaoPaga as 
select 
	cr.id as id_conta,
    c.nome as nome_cliente,
    c.cpf as cpf_cliente,
    cr.dataVencimento,
    cr.valor
from contareceber cr
join cliente c ON cr.cliente_id = c.id
where cr.situacao = '1';


select * from contaNaoPaga;

