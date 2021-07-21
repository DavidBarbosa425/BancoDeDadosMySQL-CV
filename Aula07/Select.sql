use cadastro;

select * from gafanhotos;

select * from cursos
order by nome;

select * from cursos
order by nome desc;

select * from cursos
order by ano;

select * from cursos
order by ano desc;

select nome, carga, ano from cursos;

select nome, carga, ano from cursos
order by carga;

select ano, nome, carga from cursos
order by ano, nome;

select * from cursos
where ano = '2016'
order by nome;

select nome, descricao, carga from cursos
where ano <= '2015'
order by nome, carga;

select nome, descricao, ano from cursos
where ano between '2014' and '2016'
order by ano desc, nome;

select descricao, nome, ano from cursos
where ano in (2014, 2016)
order by ano desc, nome;

select * from cursos
where carga > 35 and totaulas < 30
order by nome;

select * from cursos
where carga > 35 or totaulas < 30
order by nome;