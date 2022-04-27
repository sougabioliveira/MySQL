create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagens (
id bigint (5) auto_increment,
nome varchar (20),
ataque int,
defesa int,
magia int,
sabedoria int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_classe (id)
);

insert tb_personagens (nome, ataque, defesa, magia, sabedoria, categoria_id) value ("Braé", 3000, 2500, 1500, 2000, 3);
insert tb_personagens (nome, ataque, defesa, magia, sabedoria, categoria_id) value ("Eico", 3000, 2000, 1000, 1500, 4);
insert tb_personagens (nome, ataque, defesa, magia, sabedoria, categoria_id) value ("Redken", 2500, 2000, 1000, 1000, 3);
insert tb_personagens (nome, ataque, defesa, magia, sabedoria, categoria_id) value ("Cadiveu", 1500, 2000, 2500, 2000, 2);
insert tb_personagens (nome, ataque, defesa, magia, sabedoria, categoria_id) value ("Haskell", 1500, 2500, 3000, 3000, 1);
insert tb_personagens (nome, ataque, defesa, magia, sabedoria, categoria_id) value ("Igora", 3000, 2500, 1500, 2000, 5);
insert tb_personagens (nome, ataque, defesa, magia, sabedoria, categoria_id) value ("Joico", 2000, 3000, 1500, 2500, 3);
insert tb_personagens (nome, ataque, defesa, magia, sabedoria, categoria_id) value ("Valckirian", 3000, 2000, 1000, 1500, 4);
insert tb_personagens (nome, ataque, defesa, magia, sabedoria, categoria_id) value ("Inoar", 3000, 2000, 3000, 2500, 1);

select * from tb_personagens;

create table tb_classe(
id bigint (5) auto_increment,
categoria_do_personagem varchar (20),
primary key (id)
);

insert tb_classe (categoria_do_personagem) value ("Mago/a");
insert tb_classe (categoria_do_personagem) value ("Dançarino/a");
insert tb_classe (categoria_do_personagem) value ("Guerreiro/a");
insert tb_classe (categoria_do_personagem) value ("Barbaro/a");
insert tb_classe (categoria_do_personagem) value ("Assassino/a");

select * from tb_classe;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like '%c%';

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.categoria_id;

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.categoria_id where tb_personagens.categoria_id = 3;   

