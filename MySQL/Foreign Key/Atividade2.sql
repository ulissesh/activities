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

create table ingresso(
id_ingresso int not null,
valor int,
primary key(id_ingresso),
id_filme int not null,
		foreign key(id_filme)
        references filme(id_filme),
id_sessao int not null,
		foreign key(id_sessao)
        references sessao(id_sessao)
);

show tables;

select * from filme;

select * from sessao;

select * from ingresso;

insert into filme values(
'1',
"Shrek",
115,
"Animação Infantil"
);

insert into filme values(
'2',
"O Gato de Botas",
120,
"Animação Infantil"
);

insert into sessao values(
1,
8,
1
);

insert into ingresso values(
1,
25,
1,
1
);

show tables;

update filme set nome_filme = "Sherek" where id_filme = 1;

delete from filme where id_filme = "2";