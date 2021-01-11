/*utilitários*/
use cadastro;
describe gafanhotos;
select * from pessoa;

/*### ADICIONAR COLUNAS, SENDO ESSA A PRIMERA POSIÇÃO ###*/
/*altere a tabela PESSOA*/
alter table pessoa
/*Adicione uma nova coluna chamada PROFISSÃO, está vai estar na primeira posição*/
add column profissao varchar(10) first;

/*### ADICIONAR COLUNAS ESCOLHENDO UMA POSIÇÃO NO MEIO DA TABELA ###*/

/*Altere a tabela PESSOA*/
alter table pessoa
/*Adicione uma nava coluna(campo), chamada profissão, que aceita até 10 caracteres,
 *porém será criado após a coluna NOME */
add column profissao varchar(10) after nome;



/*### ADICIONAR COLUNAS, SENDO A ULTÍMA POSIÇÃO DA TABELA ###*/

/*Altere a tabela PESSOA*/
alter table pessoa 
/*Adicione uma nova coluna(campo), chamada PROFISSÃO, que aceita até 10 caracteres*/
add column profissao varchar(10) not null;



/*### MODIFICAR COLUNAS - MODIFY ###*/

/*Altere a tabela PESSOA*/
alter table pessoa
/*Modifique o campo PROFISSÃO para varchar de 20 caracteres(antes estava com 10)*/
modify column profissao varchar(20) not null default'';



/* MODIFICAR COLUNAS - CHANGE*/

/*Altere a tabela PESSOA*/
alter table pessoa
/*Mude o o nome da coluna PROFISSAO para PROF e o tipo para varchar de 30	*/
change column profissao prof varchar(30) not null default'';

/*### DELETAR COLUNAS ###*/

/*Altere a tabela PESSOA*/
alter table pessoa
/*exclua a coluna(campo) chamado PESSOA*/
drop column profissao;



/*### RENOMEAR A TABELA ###*/

/*Altere a tabela*/
alter table pessoa
/*renomeia para GAFANHOTOS*/
rename to gafanhotos;

create table if not exists cursos(
	nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totaulas int unsigned,
    ano year default'2019'
)default charset = utf8;

create table if not exists gafanhotos(
	teste varchar(20)
);

alter table cursos
add column idcurso int first;

alter table cursos
modify column idcurso int(3);

alter table cursos
add primary key (idcurso);

describe cursos;