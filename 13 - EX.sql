use cadastro;
desc cursos;

select profissao from gafanhotos
where profissao = 'Programador';

/* Exercicio 1*/
select profissao, count(*) from gafanhotos
group by profissao
order by profissao; 

/* Exercicio 2*/
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo
order by sexo;

select sexo, nascimento from gafanhotos
where nascimento > '2005-01-01';

/* Exercicio 3*/
select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(*) > 3
order by nacionalidade;

/* Exercicio 4*/
select altura, count(*) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos)
order by altura;

select avg(altura) from gafanhotos;


/*Teste 1*/

select nacionalidade from gafanhotos
order by nacionalidade;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select nacionalidade from gafanhotos
group by nacionalidade
order by nacionalidade;

/*Teste 2*/

select nacionalidade, count(peso), max(peso), min(peso), sum(peso), avg(peso) from gafanhotos
group by nacionalidade
order by nacionalidade;

/*Teste 3*/
select nacionalidade, count(*) from gafanhotos
where nascimento > '1999-12-31'
group by nacionalidade
order by nacionalidade;

/* Teste 4*/
select nacionalidade, count(*) from gafanhotos
where nascimento > '1999-12-31'
group by nacionalidade
having count(*) > 1
order by nacionalidade;

/* Teste 5*/
select nacionalidade, avg(peso) from gafanhotos
group by nacionalidade
having  avg(peso) > (select avg(peso) from gafanhotos);

select avg(peso) from gafanhotos;