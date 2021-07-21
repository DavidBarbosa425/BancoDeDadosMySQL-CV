select * from cursos
where nome like 'p%';

select * from cursos
where nome like 'a%';

select * from cursos
where nome like '%a%';

select * from cursos
where nome like 'ph%p';

select * from cursos
where nome like 'ph%p_';

select * from cursos
where nome like 'p_p%';

select * from cursos
where nome like 'p__t%';

select * from gafanhotos
where nome like '%silva%';

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select distinct carga from cursos
order by carga;

select count(*) from cursos;

select * from cursos
where carga > '40';

select count(*) from cursos
where carga > 40;

select count(idcurso) from cursos;

select max(carga) from cursos;

select max(ano) from cursos;

select nome, max(totaulas) from cursos
where ano = '2016';

select nome, min(totaulas) from cursos;

select sum(totaulas) from cursos
where ano = '2016';

select avg(totaulas) from cursos
where ano = '2016';