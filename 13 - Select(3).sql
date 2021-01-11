use cadastro;
desc cursos;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select nacionalidade from gafanhotos
group by nacionalidade;

select nacionalidade, count(*) from gafanhotos;

select nacionalidade, count(*) from gafanhotos
group by nacionalidade
order by nacionalidade;

select nacionalidade, count(*), sum(peso), avg(peso), min(peso), max(peso) from gafanhotos
group by nacionalidade;

select carga, count(*) from cursos
where totaulas = '30'
group by carga
order by carga;

select ano, count(nome) from cursos
group by ano
order by count(nome);

select ano, count(nome) from cursos
group by ano
having count(nome) > 3
order by count(nome);

select nacionalidade, count(*) from gafanhotos
where peso > '100'
group by nacionalidade
having count(*) > 2
order by nacionalidade;

select * from gafanhotos
where nacionalidade = 'Brasil';

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > '2015'
group by carga
having carga > (select avg(carga) from cursos)
order by carga;


select * from gafanhotos;
select * from cursos;

select totaulas from cursos
order by totaulas;

select distinct totaulas from cursos
order by totaulas;

select totaulas, count(*) from cursos
group by totaulas;

select * from cursos
where totaulas = '12'
order by nome;

select carga from cursos
where totaulas = '30'
group by carga;

select carga, count(nome) from cursos
where totaulas = '30'
group by carga;

select * from cursos
where totaulas = '30'
order by carga;

