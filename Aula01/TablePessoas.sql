create table if not exists cursos (
nome varchar(20) not null unique,
descricao text,
carga int,
totaulas int,
ano year default '2016'
)default charset = utf8;

alter table cursos
change column idcursos idcurso int not null;

describe cursos
