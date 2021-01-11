use cadastro;
desc cursos;

select * from gafanhotos;
select * from cursos;

/* LIKE */
/* like significa parecido neste caso*/
/* É utilizado as wild cards ( % e _ ) nos valores do like*/
/* % - Conjunto de caracteres (inclusive nenhum caracter)*/
/* _ - Pelo menos um caracter*/

select * from cursos
where nome like 'p%';

select nome, ano from cursos
where nome like '%a';

select nome, ano from cursos
where nome like '%a%';

select nome, ano from cursos
where nome not like '%a%';

select * from cursos
where nome like 'ph%p';

select nome, descricao, ano from cursos
where nome like 'ph%p%'
order by nome;

select * from cursos
where nome like 'ph%p_';

select nome from cursos
where nome like 'p_p%';

select nome, descricao, ano, totaulas from cursos
where nome like 'p__t%';

select * from gafanhotos
where nome like '%silva%';

select * from gafanhotos
where nome like '% silva%';


/* DISTINCT */
/*Serve para distinguir valores, isto é se tem varios valores iguais ele só ira trazer um*/
select nacionalidade from gafanhotos;
select distinct nacionalidade from gafanhotos; 

select carga from cursos;
select distinct carga from cursos
order by carga;

/* FUNÇÕES DE AGREGAÇÃO */
select * from cursos;
/*conte os registros da tabela cursos*/
select count(*) from cursos;


select * from cursos where carga > '40';
/*conte os registros da tabela cursos onde carga é maior que 40*/
select count(*) from cursos where carga > '40';


select * from cursos
order by carga;

/*maior valor do campo carga*/
select max(carga) from cursos;

select nome, totaulas from cursos
where ano = '2016'
order by nome;

/*maior valor do campo totaulas*/
select max(totaulas) from cursos where ano = '2016';

select nome, totaulas from cursos
where ano = '2016'
order by nome;

/*menor valor do campo totaulas*/
select min(totaulas) from cursos where ano = '2016';

/*mostre a soma dos valores do campo totaulas da tabela cursos onde ano é igual a 2016*/
select sum(totaulas) from cursos where ano = '2016';

/*mostre a média dos valores do campo totaulas da tabela cursos onde ano é igual a 2016*/
select avg(totaulas) from cursos where ano = '2016';

