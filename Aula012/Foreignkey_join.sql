use cadastro;

describe gafanhotos;

describe cursos;

alter table gafanhotos
add column cursopreferido int;

describe gafanhotos;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

describe gafanhotos;

select * from gafanhotos;
select * from cursos;

update gafanhotos
set cursopreferido = '6'
where id = '1';
/* cursopreferido como foreign key vindo da tabela cursos, vai acrescentar o curso de id 6 na tabela gafanhotos, onde o id é 1. 
*/
select * from gafanhotos;

select nome, cursopreferido from gafanhotos;
select nome, ano from cursos;

select gafanhotos.nome, cursos.nome, cursos.ano from gafanhotos inner join cursos
on gafanhotos.cursopreferido = cursos.idcurso
order by gafanhotos.nome;
/* o comando 'inner join' junta as tabelas relacionadas pela chave primaria e estrangeira. 
Junto com esse comando também é preciso usar o 'on' que indica que é para retornar apenas onde a primary key tem relação com a foreign key. */ 

select g.nome, c.nome, c.ano from gafanhotos as g inner join cursos as c
on g.cursopreferido = c.idcurso
order by g.nome;
/* O comando 'as' possibilita apelidar as tabelas e facilitar a digitação com menos caracteres. */

select g.nome, c.nome, c.ano from gafanhotos as g left outer join cursos as c
on g.cursopreferido = c.idcurso
order by g.nome;
/* O 'left outer join' vai trazer como resultado todos os cadastrados na tabela da esquerda independente de relação entre as entidades
*/

select g.nome, c.nome, c.ano from gafanhotos as g right outer join cursos as c
on g.cursopreferido = c.idcurso
order by g.nome;
/* O 'left outer join' vai trazer como resultado todos os cadastrados na tabela da direita independente de relação entre as entidades
*/