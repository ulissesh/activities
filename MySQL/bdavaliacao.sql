create database bdavaliacao;
use bdavaliacao;

create table tbcliente(
	codigo int primary key auto_increment,
    nome varchar(50),
    email varchar(30)
);
show tables;

insert into tbcliente(nome,email)
values("Fabricio Moreira","fbmoreira@gmail.com");
select *from tbcliente where codigo="1";
update tbcliente set nome= "Roberto" where codigo="1";

delete from tbcliente where codigo="1";

drop table tbcliente;

#1."Como o nome já diz, banco de dados tem a função de armazenar dados e informações, sejam elas pessoas,profissionais,produtos etc"#
#2." Mysql é um software de banco de dados mais leve que o SQL Server,além de ser free ao contrario do SqlServer da Microsoft que necessita do licenciamento."