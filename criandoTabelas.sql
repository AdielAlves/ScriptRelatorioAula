use Loja;

create table estado(
	id int auto_increment primary key,
    nome varchar(50) not null,
    UF char(2) not null
);

create table municipio(
	id int auto_increment primary key,
    nome varchar(80) not null,
    CodIBGE int not null,
	estado_id int,
    foreign key (estado_id) references estado (id)
);

create table cliente(
	id int auto_increment primary key,
    nome varchar(80) not null,
	cpf char(11) not null,
    celular char(11),
    EndLogradouro varchar(100) not null,
    EndNumero varchar(10) not null,
    EndMunicipio int not null,
    EndCEP char(8),
    municipio_id int,
    foreign key (municipio_id) references municipio(id)
);

create table contaReceber(
	id int auto_increment primary key,
    cliente_id int,
    faturaVendaID int,
    dataConta date not null,
    dataVencimento date not null,
    valor decimal(18,2) not null,
    situacao enum('1','2','3') not null,
    foreign key (cliente_id) references cliente(id)
);