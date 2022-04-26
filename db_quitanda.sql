create database db_quitanda;

use db_quitanda;

create table tb_categoria(
id bigint(4) auto_increment,
origem varchar(10) not null,
primary key (id)
);

insert into tb_categoria (origem) value ("animal");
insert into tb_categoria (origem) value ("vegetal");

select * from tb_categoria;
 

create table tb_produtos(
id bigint(4) auto_increment,
nome varchar(20),
tipo varchar (10),
quantidade_em_estoque int,
validade_em_dias int,
preco double,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produtos (nome, tipo, quantidade_em_estoque, validade_em_dias, preco, categoria_id) values ("Maçã","fruta", 10, 15, 51.35, 2);
insert tb_produtos (nome, tipo, quantidade_em_estoque, validade_em_dias, preco, categoria_id) values ("Cenoura", "legumes", 20, 20, 20.80, 2);
insert tb_produtos (nome, tipo, quantidade_em_estoque, validade_em_dias, preco, categoria_id) values ("Cominho", "tempero", 30, 30, 13.50, 2);
insert tb_produtos (nome, tipo, quantidade_em_estoque, validade_em_dias, preco, categoria_id) values ("Leite", "bebida", 15, 90, 20.80, 1);
insert tb_produtos (nome, tipo, quantidade_em_estoque, validade_em_dias, preco, categoria_id) values ("Banana", "fruta", 54, 10, 45.80, 2);
insert tb_produtos (nome, tipo, quantidade_em_estoque, validade_em_dias, preco, categoria_id) values ("Ovos", "proteína", 20, 20, 56.90, 1);
insert tb_produtos (nome, tipo, quantidade_em_estoque, validade_em_dias, preco, categoria_id) values ("Cebola", "legumes", 64, 10, 60.90, 2); 
insert tb_produtos (nome, tipo, quantidade_em_estoque, validade_em_dias, preco, categoria_id) values ("Tomate", "fruta", 120, 10, 80.56, 2);

select * from tb_produtos;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos p inner join tb_categoria c on c.id = p.categoria_id where p.preco > 50;

select * from tb_produtos p inner join tb_categoria c on c.id = p.categoria_id where p.nome like '%a%';

update tb_produtos set preco = preco+10.0 where categoria_id =2;








