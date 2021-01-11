create database teste
default character set utf8
default collate utf8_general_ci;

use teste;

show tables;

create table carro(
	nome varchar(10) not null,
	marca varchar(10) unique,
    modelo varchar(5) not null,
    ano year default'2000',
    tanque decimal(5,2) unsigned
)default charset = utf8;

describe carro;
select * from carro;

alter table carro
add column idcarro int(4) first;

alter table carro
add primary key(idcarro);

alter table carro
modify column idcarro int(4) auto_increment not null;

insert into carro values
(default, 'gol', 'chevrolet', 'lw', '2014', '35.25'),
(default, 'etyos', 'toyota', 'mw', default, '50.75');

drop database teste;

