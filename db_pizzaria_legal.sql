CREATE database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizzas(
id bigint (5) auto_increment,
nome varchar (20),
tamanho varchar (10),
borda_recheada boolean,
preco double,
primary key (id),
tipo_de_pizza_id bigint,
foreign key (tipo_de_pizza_id) references tb_categorias (id)
);

insert tb_pizzas (nome, tamanho, borda_recheada, preco, tipo_de_pizza_id) value ("Portuguesa", "Grande", true, 41.00, 4);
insert tb_pizzas (nome, tamanho, borda_recheada, preco, tipo_de_pizza_id) value ("Marguerita", "Broto", true, 52.00, 2);
insert tb_pizzas (nome, tamanho, borda_recheada, preco, tipo_de_pizza_id) value ("Brigadeiro", "Broto", false, 38.00, 3);
insert tb_pizzas (nome, tamanho, borda_recheada, preco, tipo_de_pizza_id) value ("Romeu e Julieta", "Broto", false, 41.00, 3);
insert tb_pizzas (nome, tamanho, borda_recheada, preco, tipo_de_pizza_id) value ("Uper Pizza", "Grande", true, 68.00, 1);
insert tb_pizzas (nome, tamanho, borda_recheada, preco, tipo_de_pizza_id) value ("Brócolis", "Grande", true, 50.00, 2);
insert tb_pizzas (nome, tamanho, borda_recheada, preco, tipo_de_pizza_id) value ("Baiana", "Grande", true, 53.00, 5);
insert tb_pizzas (nome, tamanho, borda_recheada, preco, tipo_de_pizza_id) value ("A moda da casa", "Grande", false, 48.00, 4);

select * from tb_pizzas;

create table tb_categorias(
id bigint (5) auto_increment,
tipo_de_pizza varchar (20),
primary key (id)
);

insert tb_categorias (tipo_de_pizza) value ("Especial");
insert tb_categorias (tipo_de_pizza) value ("Vegetariana");
insert tb_categorias (tipo_de_pizza) value ("Doce");
insert tb_categorias (tipo_de_pizza) value ("Salgada");
insert tb_categorias (tipo_de_pizza) value ("Apimentada");

select * from tb_categorias;

select * from tb_pizzas where preco >= 45.00;

select * from tb_pizzas where preco between 50.00 and 100.00;

select * from tb_pizzas where nome like '%m%';

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.tipo_de_pizza_id;

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.tipo_de_pizza_id where tb_categorias.tipo_de_pizza = "Salgada";	