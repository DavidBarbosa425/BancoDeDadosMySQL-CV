select nome from gafanhotos
where sexo = 'F'
order by nome;

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

select nome, profissao from gafanhotos
where profissao = 'programador' and sexo = 'M'
order by nome;

select * from gafanhotos
where nome like 'j%' and sexo = 'F' and nacionalidade = 'Brasil'
order by nome;

select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%silva%' and nacionalidade != 'Brasil' and peso <'100'
order by nome;

select nome, max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil'
order by nome;

select avg(peso) from gafanhotos;

select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

select count(altura) from gafanhotos
where sexo = 'F' and altura > '1.90';

