use cadastro;

describe cursos;

select * from cursos;

alter table cursos
modify column idcurso int(3) not null auto_increment;

insert into cursos values
(DEFAULT,'Algoritmos','Lógica de Programação','20','15','2014'),
(DEFAULT,'Photoshop','Dica de Photodhop CC','10','8','2014'),
(DEFAULT,'PGP','Curso de PHP para iniciantes','40','20','2010');

insert into cursos
(nome, descricao, carga, totaulas, ano)
values
('Jarva', 'Introdução a linguagem Java', '10', '29', '2000'),
('MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('Word', 'Curso completo de Word', '40', '30', '2016'),
('Sapateado', 'Danças Rítimicas', '40', '30', '2018'),
('Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('YouTuber', 'Gerar Polêmica e ganhar inscritos', '5', '2', '2018');

update cursos /*Atualiza a tabela Cursos*/
set carga = '40', ano = '2015' /*o valor do campo CARGA é 40 e o valor do campo ANO 2015*/
where idcurso = '5' /*No registro em que o campo IDCURSO tiver o valor 5*/
limit 1; /*Somente um registro será afetado*/

update cursos /*Altere um registro da tabela CURSOS*/
set ano = '2018', carga = '0' /*O valor do campo ANO será 2018 e o campo CARGA será 0*/
where ano = '2050' /*No registro que tiver o valor 2050 no campo ANO*/
limit 1; /*Afetara somente um registro*/

delete from cursos /*delete um registro da tabela CURSO*/
where idcurso = '8'; /*Somente os registro que tiverem o valor 8 no Campo IDCURSO*/

delete from cursos /*Deleta registros da tabela Cursos*/
where ano = '2050' /*Os registro que possuirem o valor 2050 no campo ANO*/
limit 2; /*Isso só vai afetar 2 registros*/

/*Apaga TODAS os registro, linhas ou tuplas*/
truncate table cursos;

delete from cursos /*Deleta registro da tabela CURSOS*/
where ano = '2018' and carga = '40'; /*Nos registros que tiverem o valor 2018 na campo ANO e o valor 40 no campo CARGA*/