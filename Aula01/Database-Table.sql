create database cadastro;

use cadastro;

create table pessoas (
nome varchar(30),
idade int,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

describe pessoas;