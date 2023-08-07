create database bdtransporte;
use bdtransporte;
create table tbcliente(
    cli_cod int primary key auto_increment,
    cliente varchar(90),
    endereco varchar(110),
    cep int(8),
    email varchar(90),
    telefone int(15),
    uf char(2),
    limite decimal(6,2),
    obs varchar(200)
);

create table tbfuncionario(
    func_cod int primary key auto_increment,
    nome varchar(90),
    rg varchar(9),
    cpf varchar(11),
    idade varchar(2),
    genero char(2),
    pis varchar(10),
    cart_trab varchar(10)
);

create table tbfrete(
    fret_cod int primary key auto_increment,
	nota_fiscal int,
    cliente varchar(90),
    end_clien varchar(30),
    funcionario varchar(90),
    combustivel int,
    km int,
    valor int
);

create table tbfrota(
    frota_cod int primary key auto_increment,
    frota varchar(10),
	fornecedor varchar (10),
    cor varchar (10),
    marca varchar(10),
	modelo varchar(10),
    placa varchar(10),
    tipo_comb varchar(10)
);
alter table tbcliente add naturall varchar(30);
show tables;
alter table tbcliente change endereco ende varchar(30);
rename table tbcliente to tbclientes;
drop table tbfrete;
insert into tbclientes(cliente,ende,cep,email,telefone,uf,limite,obs)
value ("Joçao","Rua dos Passaros","06711000","joao@email.com",1199123456,"SP",1000,"Cliente atencioso");
select *from tbclientes;

update tbclientes set limite= "2000" where cli_cod ="1";
select limite from tbclientes;
select *from tbclientes where cliente = 'João';
delete from tbclientes where cli_cod = '1';

update tbclientes set email= "mariazinha@email.com" where cli_cod ="2";
update tbclientes set cliente = "João" where cli_cod = "3";

    
    

    
