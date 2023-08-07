create database bdestoque;
use bdestoque;

create table tbproduto(
	cod_produto int primary key auto_increment,
    produto varchar (90) not null,
    qtde int,
    valor decimal (6,2)
);
create table tbuser(
	cod_user int primary key auto_increment,
    usuario varchar(90),
    senha float,
    setor varchar(30)
);

insert into tbuser(usuario,senha,setor)
values("Maria",0102030,"Administração"); 

select *from tbuser;

update tbuser set usuario = "Fabricio" where  cod_user="1";
alter table tbproduto add marca varchar (20);

alter table tbproduto drop marca;

rename table tbuser to tbusuario;

drop table tbusuario;
show tables;