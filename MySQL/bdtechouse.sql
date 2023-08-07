create database bdtechouse;
use bdtechouse;

create table tbcliente(
	cod int primary key auto_increment,
    nome varchar(90),
    idade int
);

insert into tbcliente(nome,idade)
values("Ulisses", 22);

select *from tbcliente;
	
    
create table tbturma(
	codturma int primary key auto_increment,
    nometurma varchar(30),
    codaluno int,
    qtde int
);

create table tbaluno(
	codaluno int primary key auto_increment,
    aluno varchar(90),
    idade int
);
alter table tbturma add foreign key (codaluno) references tbaluno (codaluno);

insert into tbturma(nometurma,codaluno,qtde)
values("Turma A", 04, 27);

select *from tbturma;

create table tbpessoa(
	codpessoa int primary key auto_increment,
    nome varchar(90),
    bairro int,
    estado int
);
create table tbbairro(
	codbairro int primary key auto_increment,
    bairro varchar(30)
);
create table tbestado(
	coduf int primary key auto_increment,
    uf char(2)
);

alter table tbpessoa add foreign key (estado) references tbestado (coduf);

insert into tbbairro(bairro)
values("Jd. da Glória");

insert into tbestado(uf)
values("SP");

    
