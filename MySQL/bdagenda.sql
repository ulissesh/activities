create database bdagenda;
use bdagenda;

create table tbamigo(
	codigo int primary key auto_increment,
    amigo varchar(80)not null,
    email varchar (100),
    datanasci date,
    telefone int not null
);
show tables;
insert into tbamigo(amigo,email,datanasci,telefone)
value("Neusa","neuzinha@gmail","1973-02-2",983726123);

select amigo,email from tbamigo;
select *from tbamigo where amigo='Jose';

create table tbcomercial(
	codigo int primary key auto_increment,
    empresa varchar(50),
    telefone_fixo varchar(14),
    celular int,
    site varchar(25)
);
show tables;
insert into tbcomercial(empresa,telefone_fixo,celular,site)
value("Rehau","46141997",98374624,"www.rehau.com.br");

rename table tbcomercial to tbcomerciais;
alter table tbcomerciais 
change telefone_fixo 
tel_fixo varchar(30);

alter table tbcomercial add uf char(2);

select *from tbcomerciail;

alter table tbcomerciais
drop tbamigo;

create database roupas;
use roupas;
create table tbloja(
	codigo int primary key auto_increment,
    tamanho char(2) not null,
    cor varchar(20)not null,
    modelo varchar (40)not null,
    marca varchar(40) not null,
    sexo char(2) not null
);
show tables;

insert into tbloja(tamanho,cor,modelo,marca,sexo)
value("GG","Marrom","Saia","Shein","F");

select *from tbloja;

delete from tbloja where codigo=1;
select *from tbloja;

update tbloja set
	tamanho= 'M',
    cor= 'Azul',
    modelo= 'Chinelo',
    marca='Yezzy',
    sexo='M'
where codigo= 2;
    






