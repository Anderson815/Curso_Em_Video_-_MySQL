/* selecione o banco CADASTRO.*/
use cadastro;

/*crie a tabela PESSOA com os campos NOME, IDADE, SEXO, PESO, ALTURA e NACIONALIDADE.*/
create table pessoa(
	nome varchar(30),
    idade tinyint(3),
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
);

/*selecione o banco cadastro.*/
use cadastro;

/*mostre a estrutura da tabela PESSOA.*/
describe pessoa;

/*abandone o banco de dados CADASTRO.*/
drop database cadastro;

/*crie o banco de dados CADASTRO com codificação do caracter para UTF8.*/
create database cadastro
default character set utf8
default collate utf8_general_ci;

/*selecione o banco cadastro*/
use cadastro;

/*Cria a tabela pessoa com os campos: NOME, NASCIMENTO, SEXO, PESO, ALTURA e NACIONALIDADE,
 *tendo como PADRÃO de cadeia de CARACTERES a classe utf8 
 */
create table pessoa(
	nome varchar(30) NOT NULL, /*Nome é OBRIGATÓRIO (NOT NULL)*/
    nascimento date,		   /*Nascimento é uma data e um DADO*/	
    sexo enum('M', 'F'),       /*Sexo é um campo que aceita CARACTERES, mas SOMENTE os caracteres o M e o F*/
    peso decimal(5, 2),        /*Peso é descimal, possuindo 5 casas de algarismo, sendo 2 decimais*/
    altura decimal(3, 2),      /*Altura é descimal possuindo 3 casas de algarismo, sendo 2 decimais*/
    nacionalidade varchar(20) DEFAULT'Brasil' /*Nacionalidade é um campo que se NÃO FOR PREENCHIDO o banco irá preencher com 'Brasil'*/
)default charset = utf8;


describe pessoa;

drop table pessoa;

create table pessoa(
	id int NOT NULL AUTO_INCREMENT, /*Id é um campo OBRIGATÓRIO e de AUTO-INCREMENTO (++), sempre adiciona mais um*/
		nome varchar(30) NOT NULL,
		nascimento date,
		sexo enum('M', 'F'),
		peso decimal(5, 2),
		altura decimal(3, 2),
		nacionalidade varchar(20) DEFAULT'Brasil', /*O campo id é a chave primária dessa tabela*/
    primary key(id)
)default charset = utf8;
