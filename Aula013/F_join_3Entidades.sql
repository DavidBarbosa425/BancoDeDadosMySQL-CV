use cadastro;

create table gafanhotos_assiste_cursos (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key(id),
foreign key(idgafanhoto) references gafanhotos(id),
foreign key(idcurso) references cursos(idcurso)

) default charset = utf8;

insert into gafanhotos_assiste_cursos values
(default, '2019-06-02', '1','6');

select * from gafanhotos_assiste_cursos;

select g.nome, a.idgafanhoto, a.data, c.nome from gafanhotos g join gafanhotos_assiste_cursos a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso;