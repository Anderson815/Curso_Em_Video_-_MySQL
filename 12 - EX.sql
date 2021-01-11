use cadastro;
describe gafanhotos;
select * from gafanhotos;

/* 1 - Exercicio*/

select nome from gafanhotos
where sexo = 'f'
order by nome;

/* 2 - Exercicio*/

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nome;

/* 3 - Exercicio*/

select nome, nascimento, nacionalidade from gafanhotos
where sexo = 'M' and profissao = 'Programador'
order by nome;

/* 4 - Exercicios */

select nome, nascimento, profissao from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like'J%'
order by nome desc;

/* 5 - Exercicio*/

select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like'% Silva%' and nacionalidade != 'Brasil' and peso < '100'
order by nome;

/* 6 - Exercicio*/

select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

/* 7 - Exercicio */

select avg(peso) from gafanhotos;

/*Prova real*/
select count(*) from gafanhotos;
select sum(peso) from gafanhotos;


/* 8 - Exercicio */

select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

/* 9 - Exercicio */

select count(*) from gafanhotos
where sexo = 'F' and altura > '1.9' ;







select * from gafanhotos
order by peso desc;

select count(*) from gafanhotos;

select max(peso) from gafanhotos;

select nome, nacionalidade, max(peso) from gafanhotos
where peso = max(peso);