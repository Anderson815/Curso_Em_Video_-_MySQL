/*AULA 05 - INSERIR DADOS NA TABELA*/

/*OBS: Será utilizado o banco e a tabela feita na Aula 04*/

/*Selecione o banco cadastro*/
use cadastro;

/*Mostre a estrutura da tabela PESSOA*/
describe pessoa;

insert into pessoa
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

select * from pessoa;

insert into pessoa
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

select * from pessoa;

insert into pessoa
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(DEFAULT, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', DEFAULT);

select * from pessoa;

insert into pessoa values
(DEFAULT, 'Adalgiza', '1930-11-2', 'F', '63.2', '1.75', 'Irlanda');

select * from pessoa;

insert into pessoa 
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(DEFAULT, 'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
(DEFAULT, 'Pedro', '2000-7-15', 'M', '52.3', '1.45', 'Brasileiro'),
(DEFAULT, 'Maria', '1999-5-30', 'F', '75.9', '1.70', 'Portugal');

select * from pessoa;