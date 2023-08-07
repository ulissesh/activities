create database site_viagem;

use site_viagem;

create table pais(
id_pais int not null,
nome_pais varchar (50),
continente varchar (20),
hab_pais varchar (50),
tam_pais varchar (50),
 primary key(id_pais)
);

create table capital(
id_capital int not null,
nome_capital varchar (50),
hab_capital varchar (50),
monumento varchar (50),
id_pais int not null,
   primary key(id_capital),
   foreign key(id_pais)
   references pais(id_pais)
);

create table cultura(
id_cultura int not null,
idioma varchar (20),
moeda varchar (20),
ritmo_musical varchar (30),
culinaria varchar (50),
crencas varchar (30),
esporte_popular varchar(20),
id_pais int not null,
   primary key(id_cultura),
   foreign key(id_pais)
   references pais(id_pais)
);

create table pacoteviagem(
id_pacoteviagem int not null,
valor varchar(20),
dias int,
hospedagem varchar (30),
cafedamanha varchar (30),
primary key(id_pacoteviagem),
id_pais int not null,
   foreign key(id_pais)
   references pais(id_pais),
id_capital int not null,
   foreign key(id_capital)
   references capital(id_capital),
id_cultura int not null,
   foreign key(id_cultura)
   references cultura(id_cultura)
);

show tables;

insert into pais values(
1,
'Brasil',
'América do Sul',
'214 milhões',
'8.516.000 km²'
);

insert into pais values(
2,
'México',
'América Central',
'140 milhões',
'1.964.000 km²'
);


insert into pais values(
3,
'Estados Unidos',
'América do Norte',
'332 milhões',
'9.834.000 km²'
);

insert into pais values(
4,
'Egito',
'África',
'104 milhões',
'1.002.000 km²'
);

insert into pais values(
5,
'Austrália',
'Oceania',
'26 milhões',
'7.688.000 km²'
);

insert into pais values(
6,
"França",
"Europa",
"67 milhões",
"551.695 km²"
);

insert into pais values(
7,
"Portugual",
"Europa",
"10 milhões",
"92.212 km²"
);

insert into pais values(
8,
"Itália",
"Europa",
"59 milhões",
"301.338 km²"
);

insert into pais values(
9,
"Japão",
"Ásia",
"125 milhões",
"377.915 km²"
);

insert into pais values(
10,
"Índia",
"Ásia",
"1.4 bilhão",
"3.287.000 km²"
);

select * from pais;

insert into capital values(
1,
'Brasília',
'3 milhões',
'Praça dos 3 Poderes',
1
);

insert into capital values(
2,
'Cidade do México',
'9 milhões',
'Anjo da Independência',
2
);

insert into capital values(
3,
'Washington',
'712 mil',
'Monumento de Washington',
3
);

insert into capital values(
4,
'Cairo',
'9 milhões',
'Grande Esfinge de Gazé',
4
);

insert into capital values(
5,
'Camberra',
'400 mil',
'Memorial de Guerra Australiano ',
5
);

insert into capital values(
6,
"Paris",
"2 milhões",
"Torre Eiffel",
6
);

insert into capital values(
7,
"Lisboa",
"504 mil",
"Padrão dos Descobrimentos",
7
);

insert into capital values(
8,
"Roma",
"3 milhões",
"Coliseu",
8
);

insert into capital values(
9,
"Tóquio",
"13 milhões",
"Tokyo Skytree",
9
);

insert into capital values(
10,
"Índia",
"31 milhões",
"Porta da Índia",
10
);

select * from capital;

insert into cultura values(
1,
"Português",
"Real",
"Sertanejo 
MPB 
Samba",
"Arroz com Pequi",
"Cristianismo",
'Futebol',
1
);

insert into cultura values(
2,
"Espanhol",
"Peso mexicano",
"Som huasteco 
Bolero",
"Taco 
Tortillas",
"Catolicismo",
'Futebol',
2
);

insert into cultura values(
3,
"Inglês",
"Dólar",
"Hip Hop 
Jazz",
"Hambúrguer 
Macarrão com Queijo",
"Cristianismo",
'Futebol Americano',
3
);

insert into cultura values(
4,
"Árabe",
"Libra Egipcia",
"Contemporânea 
Clássica",
"Kafta 
Mahchi",
"Islamismo",
'Futebol',
4
);

insert into cultura values(
5,
"Inglês Australiano",
"Dólar Australiano",
"Pop 
Rock",
"Costelinha com Molho Barbecue",
"Protestantismo",
'Rugby',
5
);

insert into cultura values(
6,
"Francês",
"Euro",
"Urban Music",
"Ratatouille",
"Catolicismo",
'Futebol',
6
);

insert into cultura values(
7,
"Português",
"Euro",
"Fado",
"Bolinho de Bacalhau",
"Catolicismo",
'Futebol',
7
);

insert into cultura values(
8,
"Italiano",
"Euro",
"Ópera 
Pop Contemporâneo",
"Pizza 
Lasagna",
"Catolicismo",
'Futebol',
8
);

insert into cultura values(
9,
"Japonês",
"Iene",
"J-pop",
"Sashimi 
Temaki 
Yakissoba",
"Xintoísmo 
Budismo",
"Sumô",
9
);

insert into cultura values(
10,
"Hindi 
Inglês",
"Rupia",
"Sangeet",
"Samosa",
"Hinduísmo",
"Cricket",
10
);

select * from cultura;

insert into pacoteviagem values(
1,
'R$1.400,00',
4,
'Incluso',
'Não incluso',
1,
1,
1
);

insert into pacoteviagem values(
2,
'R$2.000,00',
5,
'Incluso',
'Incluso',
1,
1,
1
);

insert into pacoteviagem values(
3,
'R$5.240,00',
4,
'Incluso',
'Não incluso',
2,
2,
2
);

insert into pacoteviagem values(
4,
'R$6.635,00',
5,
'Incluso',
'Incluso',
3,
3,
3
);

insert into pacoteviagem values(
5,
'R$10.550,00',
8,
'Incluso',
'Incluso',
4,
4,
4
);

insert into pacoteviagem values (
6,
'R$12.110,00',
12,
'Incluso',
'Incluso',
6,
6,
6
);

insert into pacoteviagem values (
7,
'R$7.430,00',
12,
'Incluso',
'Não incluso',
7,
7,
7
);

insert into pacoteviagem values (
8,
'R$7.500,00',
12,
'Incluso',
'Não incluso',
8,
8,
8
);

insert into pacoteviagem values (
9,
'R$10.100,00',
12,
'Incluso',
'Não incluso',
9,
9,
9
);

insert into pacoteviagem values (
10,
'R$15.500,00',
8,
'Incluso',
'Incluso',
9,
9,
9
);

select * from pacoteviagem;

select 
      nome_pais, nome_capital, moeda, monumento, culinaria, dias, valor
from 
      pais
inner join capital
on capital.id_pais = pais.id_pais
inner join cultura
on cultura.id_pais = pais.id_pais
inner join pacoteviagem
on pacoteviagem.id_pais = pais.id_pais;

update pais
set nome_pais = "Portugal"
where id_pais = 7;

delete from pacoteviagem
where id_pacoteviagem = 10;

select 
      continente, nome_pais, nome_capital, moeda, monumento, culinaria, dias, valor
from 
      pais
inner join capital
on capital.id_pais = pais.id_pais
inner join cultura
on cultura.id_pais = pais.id_pais
inner join pacoteviagem
on pacoteviagem.id_pais = pais.id_pais
where continente = 'Europa';