create database db_rh;
use db_rh;

create table tb_dados_de_funcionario(
	id bigint auto_increment,
    nome_do_funcionario varchar(255),
    cpf_do_funcionario varchar(14),
    idade_do_funcionario int,
	cargo_do_funcionario varchar(30),
    salario_do_funcionario int,	
    primary key (id)
);

select * from tb_dados_de_funcionario;
insert into tb_dados_de_funcionario(nome_do_funcionario, cpf_do_funcionario, idade_do_funcionario, cargo_do_funcionario, salario_do_funcionario)
value ("Marcia", "444.555.666-77", 28, "Analista", 2800);

insert into tb_dados_de_funcionario(nome_do_funcionario, cpf_do_funcionario, idade_do_funcionario, cargo_do_funcionario, salario_do_funcionario)
value ("Dora", "333.555.666-77", 32, "Gestora", 5000);

insert into tb_dados_de_funcionario(nome_do_funcionario, cpf_do_funcionario, idade_do_funcionario, cargo_do_funcionario, salario_do_funcionario)
value ("Juan", "333.888.666-27", 30, "Analista Pleno", 3600);

insert into tb_dados_de_funcionario(nome_do_funcionario, cpf_do_funcionario, idade_do_funcionario, cargo_do_funcionario, salario_do_funcionario)
value ("Julia", "777.555.808-77", 23, "Analista Jr.", 1500);

insert into tb_dados_de_funcionario(nome_do_funcionario, cpf_do_funcionario, idade_do_funcionario, cargo_do_funcionario, salario_do_funcionario)
value ("Pedro", "222.555.973-77", 31, "Coordenador", 4200);

select * from tb_dados_de_funcionario where salario_do_funcionario > 2000;
select * from tb_dados_de_funcionario where salario_do_funcionario < 2000;
update tb_dados_de_funcionario set idade_do_funcionario = idade_do_funcionario+1 where id > 0;
