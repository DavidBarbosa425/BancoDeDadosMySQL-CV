use cadastro;

describe pessoas;

alter table pessoas
add column profissao varchar(10);

select * from pessoas;

alter table pessoas
drop column profissao;

select * from pessoas;

alter table pessoas
add column profissao varchar(10) after nome;

describe pessoas;

alter table pessoas
add column codigo int first;

select * from pessoas;

alter table pessoas
modify column profissao varchar(20);

alter table pessoas
change column profissao prof varchar(20);

describe pessoas;

alter table pessoas
rename to gafanhotos;

describe gafanhotos;

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int,
totaulas int,
ano year default '2016'
) default charset = utf8;

describe cursos;

alter table cursos
add column idcurso int not null first;

describe cursos;

alter table cursos
add primary key(idcurso);

describe cursos;

create table if not exists teste (
id int not null,
nome varchar(30) not null,
sexo enum ('M', 'F'),
nascimento date,
primary key (id)
)default charset = utf8;

describe teste;

drop table if exists teste;


