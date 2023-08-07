create database bdcarros;
use bdcarros;

create table tbcliente(
	codcli int primary key auto_increment,
    cliente varchar(90),
    telefone varchar(20),
    email varchar(30),
    vendedor int
);
create table tbvendedor(
	codvendedor int primary key auto_increment,
    vendedor varchar(90)
);
alter table tbcliente add foreign key (vendedor) references tbvendedor(codvendedor);
insert into tbvendedor (vendedor)
values("Giovana Silva");


insert into tbcliente (cliente,telefone,email,vendedor)
values("Manuela Viana", "(11)973615345", "manuela@outlook.com", 2);

select *from tbcomanda;
delete from tbcliente where codcli='5';

create table tbcomanda(
	codcomanda int primary key auto_increment,
	codcliente int,
    codvendedor int,
    codproduto int,
    qtde int
);

create table tbproduto(
	codproduto int primary key auto_increment,
    produto varchar (30),
    valor decimal (6,2)
);
alter table tbcomanda add foreign key (codproduto) references tbproduto(codproduto);
alter table tbcomanda add foreign key (codcliente) references tbcliente(codcli);
alter table tbcomanda add foreign key (codvendedor) references tbvendedor(codvendedor);

insert into tbproduto (produto, valor)
values("Pneu Pirelli Aro 17", 450);

insert into tbcomanda (codcliente, codvendedor,codproduto,qtde,coduser)
values(2,2,1,3,2);

select *from tbcomanda;
delete from tbcomanda where codcomanda='3';

alter table tbcomanda add coduser int; 

create table tbuser(
	coduser int primary key auto_increment,
    usuario varchar(30)
);
alter table tbcomanda add foreign key (coduser) references tbuser(coduser);

insert into tbuser(usuario)
values ("silvagio")

update table tbcomanda set coduser=2 where codcomanda=1;
	
