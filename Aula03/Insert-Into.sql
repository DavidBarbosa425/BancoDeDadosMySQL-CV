use cadastro;

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'David', '1987-06-30', 'M', '97.5', '1.80', 'Brasil'),
(default, 'Masvidal', '1984-07-20', 'M', '70.5', '1.80', 'EUA'),
(default, 'Jones', '1988-07-20', 'M', '93.5', '1.90', 'EUA');

select * from pessoas;

