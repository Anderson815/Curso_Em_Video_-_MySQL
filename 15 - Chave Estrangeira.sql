/* PREPARAÇÃO */

drop database teste;

create database teste
default char set utf8
default collate utf8_general_ci;

use teste;

create table empresa(
	idempresa int(4) auto_increment not null,
    nome varchar(30) not null,
    cnpj char(14) not null,
    cep char(8) not null,
    ramo varchar(20),
    primary key(idempresa)
)default character set = utf8;

insert into empresa value
(default, 'Braskem', '11111111111111', '12345678', 'papeleira'),
(default, 'Veracel', '22222222222222', '98765432', 'petroleira'),
(default, 'petrobrás', '33333333333333', '87654321', 'petroleira'),
(default, 'Cenibra', '44444444444444', '23456789', 'papeleira'),
(default, 'CMPC', '55555555555555', '14725836', 'mineração');

describe empresa;
select * from empresa;

create table posicionador(
	wo int(4) auto_increment not null,
    modelo varchar(15) not null,
	ano year,
    fabricante varchar(30),
    tag varchar(15) not null,
    numeroserie varchar(15) not null,
    primary key(wo)
)default character set = utf8;

insert into posicionador value
(default, 'ND9013', '2016', 'Metso', 'AAAAAAAAAAAAAAA', '111111111111111'),
(default, 'NDX9018HRC', '2018', 'Metso', 'BBBBBBBBBBBBBBB', '222222222222222'),
(default, 'NDX7098YRT', '2019', 'Metso', 'CCCCCCCCCCCCCCC', '333333333333333'),
(default, 'ND5079', '2015', 'Metso', 'DDDDDDDDDDDDDDD', '444444444444444');

describe posicionador;
select * from posicionador;

/*CHAVE ESTRANGEIRA*/

alter table empresa
add column ppreferido int(4);

alter table empresa
add foreign key (ppreferido)
references posicionador(wo);

update empresa
set ppreferido = null
where idempresa = '4';

/* JOINS*/

/* INNER JOIN - SOMENTE AS LIGAÇÕES!!!*/
select empresa.nome, empresa.cnpj, posicionador.modelo, posicionador.fabricante, posicionador.ano from empresa inner join posicionador
on empresa.ppreferido = posicionador.wo 
order by empresa.nome;

/* mesmo comando que o anterior só que usando os apelidaos das tabelas*/
select e.nome, e.cnpj, p.modelo, p.fabricante, p.ano from empresa as e inner join posicionador as p
on e.ppreferido = p.wo 
order by e.nome;

/* LEFT OUTER JOIN - DA PREFERENCIA DA TABELA DA ESQUERDA DO JOIN, MOSTRANDO OS QUE TEM LIGAÇÃO QUANTOS OS QUE NÃO TEM LIGAÇÃO*/
select e.nome, e.cnpj, p.modelo, p.fabricante, p.ano from empresa as e left outer join posicionador as p
on e.ppreferido = p.wo 
order by e.nome;

/* LEFT OUTER JOIN - DA PREFERENCIA DA TABELA DA DIREITA DO JOIN, MOSTRANDO OS QUE TEM LIGAÇÃO QUANTOS OS QUE NÃO TEM LIGAÇÃO*/
select e.nome, e.cnpj, p.modelo, p.fabricante, p.ano from empresa as e right outer join posicionador as p
on e.ppreferido = p.wo 
order by e.nome;