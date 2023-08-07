create database bdescolaa;
use bdescolaa;
create table tbaluno(
	codigo int,
	nome varchar(90),
	sexo char(2),
	idade int,
	renda decimal(6,2),
	altura float
);
create table tbprofessor(
	codigo int primary key auto_increment,
    nome varchar(90) not null,
    datanasc date not null,
    filhos bit not null
    );
show tables;
select *from tbprofessor;

insert into tbaluno
(codigo,nome,sexo,idade,renda,altura)
values
(1,'Carol','FE',23,2300,1.67)

