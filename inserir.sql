insert into estado(nome, UF) values
('Minas Gerais', 'MG'),
('Bahia', 'BA'),
('São Paulo', 'SP');

insert into municipio(nome, CodIBGE, estado_id) values
('Teofilo Otoni', 3168606, 1),
('Ipiaú', 2913903, 2),
('São Jose dos Campos', 3549904, 3),
('Caratinga', 3113404, 1);

insert into cliente(nome, cpf, celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, municipio_id) values
('Jurema', '97608273521', '33998273098', 'R vinte', '12', 1, '39800000', 1),
('Julimar', '72608197890', '33925307689', 'R trinta', '121', 4, '35800000', 4),
('Uendia', '56709812302', '27954223098', 'R quarenta', '32', 2, '27809000', 2);

insert into contareceber(cliente_id, faturaVendaID, dataConta, dataVencimento, valor, situacao) values
(3, 1, '2024-11-12', '2024-11-20', 150.50, 1),
(1, 2, '2024-08-12', '2024-08-18', 200.00, 3),
(2, 3, '2024-10-12', '2024-10-15', 49.90, 2);


delete from municipio where id between 1 and 4;
alter table municipio auto_increment = 1;

select * from estado;
select * from municipio;
select * from cliente;
select * from contareceber;
