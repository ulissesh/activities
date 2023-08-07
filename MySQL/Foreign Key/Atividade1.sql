create database cinema;

use cinema;

create table filme(
 id_filme int not null,
 nome_filme varchar (100),
 duraçao int,
 genero varchar (20),
      primary key(id_filme)
);

create table sessao(
 id_sessao int not null,
 sala int,
 id_filme int not null,
      primary key(id_sessao),
      foreign key(id_filme)
      references filme(id_filme)
);


insert into filme values(
'1',
"Shrek",
115,
"Animação Infantil"
);

insert into sessao values(
5,
15,
1
);

show tables;

select * from filme;

select * from sessao;